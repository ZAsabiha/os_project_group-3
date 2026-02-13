#include <lib/debug.h>
#include <pmm/MATIntro/export.h>
#include "import.h"

#define MAX_ORDER 11

#define PAGESIZE     4096
#define VM_USERLO    0x40000000
#define VM_USERHI    0xF0000000
#define VM_USERLO_PI (VM_USERLO / PAGESIZE)
#define VM_USERHI_PI (VM_USERHI / PAGESIZE)

/*
 * Standard buddy-style allocation:
 * - find smallest k >= order with non-empty free_list[k]
 * - pop block, split down to 'order'
 */
int palloc_order(unsigned int order) {
    if (order >= MAX_ORDER) {
        return -1;
    }

    unsigned int k = order;
    while (k < MAX_ORDER && get_free_list_head(k) == -1) {
        k++;
    }
    if (k >= MAX_ORDER) {
        return -1;
    }

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
    unsigned int size = 1U << order;

    for (unsigned int i = 0; i < size; i++) {
        at_set_allocated(pindex + i, 1);
    }

    AT[pindex].order = order;

    return pindex;
}

unsigned int palloc(void) {
    int res = palloc_order(0);
    if (res == -1) {
        return 0;
    }
    return (unsigned int)res;
}

/*
 * Free + merge (buddy coalescing)
 * FIX: must clear allocated even when we merge, otherwise MATOp test 1.4 fails.
 */

void pfree_order(unsigned int pindex) {

    unsigned int order = AT[pindex].order;
    if (order >= MAX_ORDER) return;

    unsigned int size = 1U << order;

    // Mark entire block free
    for (unsigned int i = 0; i < size; i++) {
        at_set_allocated(pindex + i, 0);
    }

    unsigned int mask = 1U << order;
    unsigned int buddy_idx = pindex ^ mask;


    // Try to merge
    if (order + 1 < MAX_ORDER && buddy_idx >= VM_USERLO_PI && buddy_idx < VM_USERHI_PI && at_is_allocated(buddy_idx) == 0 && AT[buddy_idx].order == order) {

        at_list_remove(order, buddy_idx);

        unsigned int combined;

        if (pindex < buddy_idx) {
            combined = pindex;
        }
        else {
            combined = buddy_idx;
        }

        AT[combined].order = order + 1;

        pfree_order(combined);
    }
    else {
        at_list_add(order, pindex);
    }
}

void pfree(unsigned int pindex) {

    if (pindex < VM_USERLO_PI || pindex >= VM_USERHI_PI) {
        return;
    }

    if (at_is_allocated(pindex) == 0) {
        return;
    }

    pfree_order(pindex);
}
