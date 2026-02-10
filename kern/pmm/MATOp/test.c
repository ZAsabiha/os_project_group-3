#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "export.h"

// Correcting the reference to match your export.h
// Note the 'struct' keyword before ATStruct
extern struct ATStruct AT[]; 

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

int MATOp_test1()
{
    int page_index = palloc();
    if (page_index < VM_USERLO_PI || VM_USERHI_PI <= page_index) {
        dprintf("test 1.1 failed: (%d < VM_USERLO_PI || VM_USERHI_PI <= %d)\n", page_index, page_index);
        pfree(page_index);
        return 1;
    }
    if (at_is_norm(page_index) != 1) {
        dprintf("test 1.2 failed: (%d != 1)\n", at_is_norm(page_index));
        pfree(page_index);
        return 1;
    }
    if (at_is_allocated(page_index) != 1) {
        dprintf("test 1.3 failed: (%d != 1)\n", at_is_allocated(page_index));
        pfree(page_index);
        return 1;
    }
    pfree(page_index);
    if (at_is_allocated(page_index) != 0) {
        dprintf("test 1.4 failed: (%d != 0)\n", at_is_allocated(page_index));
        return 1;
    }
    dprintf("test 1 passed.\n");
    return 0;
}

// Ownership test to verify buddy system contiguous properties
int MATOp_test_own()
{
    dprintf("Testing buddy contiguous allocation (Order 2)...\n");
    int order = 2;
    int pindex = palloc_order(order); // You'll need to add this to your export.h or export it
    
    if (pindex <= 0) {
        dprintf("Buddy allocation failed.\n");
        return 1;
    }

    // Accessing AT[pindex].order now works because of the extern struct ATStruct AT[]
    if (AT[pindex].order != order) {
        dprintf("test own failed: Order mismatch. Expected %d, got %d\n", order, AT[pindex].order);
        return 1;
    }

    pfree(pindex);
    dprintf("Buddy contiguous test passed.\n");
    return 0;
}

int test_MATOp()
{
    return MATOp_test1() + MATOp_test_own();
}