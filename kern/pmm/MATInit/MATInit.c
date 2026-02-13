#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE      4096
#define VM_USERLO     0x40000000
#define VM_USERHI     0xF0000000
#define VM_USERLO_PI  (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI  (VM_USERHI / PAGESIZE)

static int is_block_free_normal(unsigned int base, unsigned int order)    // block starting at base of size 2^order pages completely free and normal RAM
{
    unsigned int number_of_pages = 1U << order;    // Compute Block Size
    unsigned int i;

    
    if (base < VM_USERLO_PI) {                 // Must stay inside user window
        return 0;
    }
    if (base + number_of_pages > VM_USERHI_PI) {          // Must stay inside user window
        return 0;
    }

    // Check all pages in the block are Normal RAM and not allocated

    for (i = 0; i < number_of_pages; i++) {           // For every page in the block
        unsigned int pi = base + i;        // iterate through the block for each page
        if (AT[pi].perm != 2 || AT[pi].allocated != 0) {    // If any page is not Normal RAM or is allocated
            return 0;
        }
    }
    return 1;
}


/*This function does 4 major things-
1.Detect physical RAM size from BIOS
2.Reset the Allocation Table (AT)
3.Mark which pages are usable RAM
4.Build buddy free lists (all block sizes)
*/
void pmem_init(unsigned int mbi_addr)     // full physical memory initialization for buddy allocator
{
    unsigned int i, j;
    unsigned int highest_addr = 0;

    devinit(mbi_addr);                      // Initialize the device ram
    unsigned int n_entries = get_size();    // Detect Physical RAM

    // Find end of physical RAM
    for (i = 0; i < n_entries; i++) {
        unsigned int end = get_mms(i) + get_mml(i);
        if (end > highest_addr) {
            highest_addr = end;
        }
    }
    unsigned int phys_nps = highest_addr / PAGESIZE;     // how many physical pages exist


    
    set_nps(VM_USERHI_PI);    // AT must cover the PI window used by tests/users

    pmm_init_freelists();

    // PHASE 1: reset whole AT
    for (i = 0; i < get_nps(); i++) {
        at_set_allocated(i, 0);
        at_set_perm(i, 0);
        AT[i].next = -1;
        AT[i].prev = -1;
        AT[i].order = 0;
    }

    
    for (i = 0; i < VM_USERLO_PI; i++) {    // Mark below-user window as kernel (not allocatable)
        at_set_perm(i, 1);
    }

    // PHASE 2a: mark user-window pages as Normal via BIOS (shifted mapping)
    for (i = VM_USERLO_PI; i < VM_USERHI_PI; i++) {
        unsigned int phys_pi = i - VM_USERLO_PI;    // virtual user page index → real physical page index

        if (phys_pi >= phys_nps) {     // if page is outside physical RAM
            at_set_perm(i, 0);        // mark reserved
            continue;
        }

        unsigned int paddr_start = phys_pi * PAGESIZE;
        unsigned int paddr_end   = paddr_start + PAGESIZE;

        int is_ram = 0;
        for (j = 0; j < n_entries; j++) {

            if (!is_usable(j)) {
                continue;
            }

            unsigned int start = get_mms(j);
            unsigned int end   = start + get_mml(j);

            if (start <= paddr_start && paddr_end <= end) {
                is_ram = 1;
                break;
            }
        }

        if (is_ram) {
            at_set_perm(i, 2);   // Normal RAM
            at_set_allocated(i, 0);
        } else {
            at_set_perm(i, 0);   // Reserved hole
        }
    }

    /*
     * PHASE 2b: build buddy blocks (populate free lists for all orders)
     *
     * Greedy: at each position, take the largest block you can.
     */
    i = VM_USERLO_PI;
    while (i < VM_USERHI_PI) {        // for each page

        // skip non-normal pages
        if (AT[i].perm != 2 || AT[i].allocated != 0) {
            i++;
            continue;
        }

        int order;
        // find largest order that fits, aligned, and all pages normal/free
        for (order = MAX_ORDER - 1; order >= 0; order--) {
            unsigned int size = 1U << order;

            // alignment requirement for buddy blocks
            if ((i & (size - 1)) != 0) {
                continue;
            }

            if (is_block_free_normal(i, (unsigned int)order)) {
                break;
            }
        }

        if (order < 0) {   // should not happen, but safe fallback
            i++;
            continue;
        }

        // add this block head to its order list
        AT[i].order = (unsigned int)order;
        at_list_add((unsigned int)order, i);

        // skip past the block
        i += (1U << order);    // Instead of moving 1 page, jump entire block size
    }
}
