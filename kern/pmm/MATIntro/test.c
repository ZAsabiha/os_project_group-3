#define _KERN_  // Force the header to reveal the structures
#include "lib/debug.h"
#include "export.h"



// Test case 1: Test get_nps and set_nps functions.
int MATIntro_test1() {
    int rn10[] = { 1, 3, 5, 6, 78, 3576, 32, 8, 0, 100 };
    int i;
    int nps = get_nps();
    for (i = 0; i < 10; i++) {
        set_nps(rn10[i]);
        if (get_nps() != rn10[i]) {
            dprintf("test 1.1 failed (i = %d): (%d != %d)\n", i, get_nps(), rn10[i]);
            set_nps(nps);
            return 1;
        }
    }
    set_nps(nps);
    dprintf("test 1 passed.\n");
    return 0;
}

// Test case 2: Test permissions and allocation.
int MATIntro_test2() {
    at_set_perm(0, 2); // Set to normal
    if (at_is_norm(0) != 1 || at_is_allocated(0) != 0) {
        dprintf("test 2.1 failed: (%d != 1 || %d != 0)\n", at_is_norm(0), at_is_allocated(0));
        return 1;
    }
    at_set_perm(0, 0); // Set to reserved
    if (at_is_norm(0) != 0) {
        dprintf("test 2.2 failed: permission not reset\n");
        return 1;
    }
    dprintf("test 2 passed.\n");
    return 0;
}

// Test case 3: Test allocation status.
int MATIntro_test3() {
    at_set_allocated(1, 0);
    if (at_is_allocated(1) != 0) {
        dprintf("test 3.1 failed: (%d != 0)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 1);
    if (at_is_allocated(1) != 1) {
        dprintf("test 3.2 failed: (%d != 1)\n", at_is_allocated(1));
        return 1;
    }
    at_set_allocated(1, 0);
    dprintf("test 3 passed.\n");
    return 0;
}

// Buddy allocator test case: Verifies the link-list pointers in AT.
int MATIntro_test_buddy() {
    // Save previous state so we don't contaminate later layers
    unsigned int old_nps = get_nps();

    set_nps(2048);
    pmm_init_freelists();

    // Make sure pages we add are Normal RAM (perm==2)
    at_set_allocated(10, 0);
    at_set_allocated(20, 0);
    at_set_perm(10, 2);
    at_set_perm(20, 2);

    at_set_allocated(512, 0);
    at_set_perm(512, 2);

    // Test A: Add pages to Order 0 (4KB)
    at_list_add(0, 10);
    at_list_add(0, 20);

    if (get_free_list_head(0) != 20) {
        dprintf("Buddy Test failed: Head of order 0 should be 20, got %d\n", get_free_list_head(0));
        // cleanup before return
        at_set_perm(10, 0);
        at_set_perm(20, 0);
        at_set_perm(512, 0);
        pmm_init_freelists();
        set_nps(old_nps);
        return 1;
    }

    int head = get_free_list_head(0);
    if (AT[head].next != 10) {
        dprintf("Buddy Test failed: AT[20].next should be 10, got %d\n", AT[head].next);
        at_set_perm(10, 0);
        at_set_perm(20, 0);
        at_set_perm(512, 0);
        pmm_init_freelists();
        set_nps(old_nps);
        return 1;
    }

    if (AT[10].prev != 20) {
        dprintf("Buddy Test failed: AT[10].prev should be 20, got %d\n", AT[10].prev);
        at_set_perm(10, 0);
        at_set_perm(20, 0);
        at_set_perm(512, 0);
        pmm_init_freelists();
        set_nps(old_nps);
        return 1;
    }

    at_list_add(9, 512);
    if (get_free_list_head(9) != 512 || AT[512].order != 9) {
        dprintf("Buddy Test failed: Order 9 initialization failed\n");
        at_set_perm(10, 0);
        at_set_perm(20, 0);
        at_set_perm(512, 0);
        pmm_init_freelists();
        set_nps(old_nps);
        return 1;
    }

    at_list_remove(0, 20);
    if (get_free_list_head(0) != 10 || AT[10].prev != -1) {
        dprintf("Buddy Test failed: Removal logic failed to update head/prev\n");
        at_set_perm(10, 0);
        at_set_perm(20, 0);
        at_set_perm(512, 0);
        pmm_init_freelists();
        set_nps(old_nps);
        return 1;
    }

    dprintf("Buddy list logic tests passed.\n");

    // ✅ CLEANUP: remove contamination for later layers
    at_set_perm(10, 0);
    at_set_perm(20, 0);
    at_set_perm(512, 0);
    pmm_init_freelists();
    set_nps(old_nps);

    return 0;
}



// The main entry point for the MATIntro layer test.
int test_MATIntro() {
    int error = 0;
    error += MATIntro_test1();
    error += MATIntro_test2();
    error += MATIntro_test3();
    error += MATIntro_test_buddy();

    if (error == 0) {
        dprintf("ALL MATIntro TESTS PASSED\n");
    } else {
        dprintf("MATIntro TESTS FAILED WITH %d ERRORS\n", error);
    }
    return error;
}