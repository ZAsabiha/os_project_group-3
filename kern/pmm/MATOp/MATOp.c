#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

#define SUPERPAGE_ORDER 10   // 2^10 * 4KB = 4MB

// #define SUPERPAGE_ORDER 9


/*
 * Standard buddy-style allocation:
 * - find smallest k >= order with non-empty free_list[k]
 * - pop block, split down to 'order'
 */
int palloc_order(unsigned int order) {
    if (order >= MAX_ORDER) return -1;

    unsigned int k = order;
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
        k++;
    }
    if (k >= MAX_ORDER) return -1;

    int pindex = get_free_list_head(k);
    at_list_remove(k, pindex);

    // Split until reaching requested order
    while (k > order) {
        k--;

        int buddy = pindex + (1 << k);

        // Buddy half becomes a free block at order k
        AT[buddy].order = k;
        at_set_allocated(buddy, 0);
        at_list_add(k, buddy);
    }

    // Allocate the block head
    // AT[pindex].order = order;

    // Allocate the block head

    //New added

    unsigned int size = 1U << order;

    for (unsigned int i = 0; i < size; i++) {
    at_set_allocated(pindex + i, 1);
    }

    AT[pindex].order = order;

    /* Clean internal metadata */
    for (unsigned int i = 1; i < size; i++) {
    AT[pindex + i].order = 0;
    }


    at_set_allocated(pindex, 1);

    return pindex;
}

unsigned int palloc(void) {
    int res = palloc_order(0);
    if (res == -1) return 0;
    return (unsigned int)res;
}

/*
 * Free + merge (buddy coalescing)
 * FIX: must clear allocated even when we merge, otherwise MATOp test 1.4 fails.
 */
void pfree_order(unsigned int pindex) { //changed

    unsigned int order = AT[pindex].order;

    while (order < MAX_ORDER - 1) {

        unsigned int size = 1U << order;

        // Clear allocation bits for this block
        for (unsigned int i = 0; i < size; i++) {
            at_set_allocated(pindex + i, 0);
        }

        unsigned int buddy_idx = pindex ^ size;

        // Check if buddy can merge
        if (buddy_idx < VM_USERLO_PI ||
            buddy_idx >= VM_USERHI_PI ||
            AT[buddy_idx].order != order ||
            at_is_allocated(buddy_idx) != 0) {
            break;
        }

        // Remove buddy from freelist
        at_list_remove(order, buddy_idx);

        // Choose lower address as new base
        if (buddy_idx < pindex) {
            pindex = buddy_idx;
        }

        order++;
        AT[pindex].order = order;
    }

    // Finally clear allocation bits for final merged block
    unsigned int final_size = 1U << order;
    for (unsigned int i = 0; i < final_size; i++) {
        at_set_allocated(pindex + i, 0);
    }

    at_list_add(order, pindex);
}


void pfree(unsigned int pindex) {
    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) return;
    if (at_is_allocated(pindex) == 0) return;

    pfree_order(pindex);
}

//Superpage allocation

unsigned int palloc_superpage(void) {
    int res = palloc_order(SUPERPAGE_ORDER);
    if (res == -1) {
        return 0;
    }
    return (unsigned int)res;
}

void pfree_superpage(unsigned int pindex) {

    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
        return;
    }

    if (AT[pindex].order != SUPERPAGE_ORDER) {
        return;   // not a superpage head
    }

    pfree_order(pindex);
}


int is_superpage_aligned(unsigned int pindex) {
    unsigned int pages = 1U << SUPERPAGE_ORDER;
    return (pindex & (pages - 1)) == 0;
}


