#include <lib/debug.h>
#include <pmm/MATIntro/export.h>

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATInit_test1()
{
    int i;
    int nps = get_nps();
    if (nps <= 1000) {
        dprintf("test 1.1 failed: (%d <= 1000)\n", nps);
        return 1;
    }
    for (i = 0; i < nps; i++) {
        if (at_is_allocated(i) != 0) {
            dprintf("test 1.2 failed (i = %d): (%d != 0)\n", i, at_is_allocated(i));
            return 1;
        }
        if ((i < VM_USERLO_PI || VM_USERHI_PI <= i) && at_is_norm(i) != 0) {
            dprintf("test 1.3 failed (i = %d): (%d != 0)\n", i, at_is_norm(i));
            return 1;
        }
    }
    dprintf("test 1 passed.\n");
    return 0;
}

// Check if the Buddy System was populated during pmem_init
int MATInit_test_buddy()
{
    int head = get_free_list_head(0);
    if (head == -1) {
        dprintf("Buddy Init Test failed: Order 0 free list is empty!\n");
        return 1;
    }
    
    // Verify the head is actually a normal page
    if (at_is_norm(head) != 1) {
        dprintf("Buddy Init Test failed: Head page %d is not Normal RAM\n", head);
        return 1;
    }

    dprintf("Buddy Init test passed.\n");
    return 0;
}

int test_MATInit()
{
    return MATInit_test1() + MATInit_test_buddy();
}
