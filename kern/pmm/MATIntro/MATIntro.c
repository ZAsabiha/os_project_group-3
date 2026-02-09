#include <lib/gcc.h>
#include "export.h"

#define MAX_ORDER 10

static unsigned int NUM_PAGES;

/* This allocates the actual memory. 
   Compiler uses the struct definition from export.h */
struct ATStruct AT[1 << 20];

static int free_list[MAX_ORDER];


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
        free_list[i] = -1;
    }
}

// Getter function for NUM_PAGES.
unsigned int get_nps(void) {
    return NUM_PAGES;
}

// Setter function for NUM_PAGES.
void set_nps(unsigned int nps) {
    NUM_PAGES = nps;
}

// Getter function for page permission.
unsigned int at_is_norm(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].perm > 1) {
        return 1;
    }
    return 0;
}

// Setter function for page permission.
void at_set_perm(unsigned int page_index, unsigned int perm) {
    if (page_index < NUM_PAGES) {
        AT[page_index].perm = perm;
        AT[page_index].allocated = 0;
    }
}

// Getter function for page allocation status.
unsigned int at_is_allocated(unsigned int page_index) {
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
        return 1;
    }
    return 0;
}

// Setter function for page allocation status.
void at_set_allocated(unsigned int page_index, unsigned int allocated) {
    if (page_index < NUM_PAGES) {
        AT[page_index].allocated = allocated;
    }
}

int get_free_list_head(unsigned int order) {
    if (order >= MAX_ORDER) return -1;
    return free_list[order];
}

// Add a page to the free list at the specified order.
void at_list_add(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;

    int current_head = free_list[order];
    
    AT[page_index].order = order;
    AT[page_index].next = current_head;
    AT[page_index].prev = -1;

    if (current_head != -1) {
        AT[current_head].prev = (int)page_index;
    }
    free_list[order] = (int)page_index;
}

// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {
    if (order >= MAX_ORDER || page_index >= NUM_PAGES) return;

    int n = AT[page_index].next;
    int p = AT[page_index].prev;

    if (p != -1) {
        AT[p].next = n;
    } else {
        free_list[order] = n;
    }

    if (n != -1) {
        AT[n].prev = p;
    }

    AT[page_index].next = -1;
    AT[page_index].prev = -1;
}
