#include <lib/gcc.h>
#include <math.h>
#include "export.h"

#define MAX_ORDER 11               // ------------------ for 4mb superpage allocation
#define RAM_PAGES 1048576          // -------------------for 4GB / 4KB

static unsigned int NUM_PAGES;

struct ATStruct AT[RAM_PAGES];     // metadata array for all the pages

static int free_list[MAX_ORDER];   // doubly-linked list of free blocks per order


// Initialize the freelists to empty
void pmm_init_freelists(void) {
    for (int i = 0; i < MAX_ORDER; i++) {
        free_list[i] = -1;
    }
}


unsigned int get_nps(void) {                            // Getter function for NUM_PAGES
    return NUM_PAGES;
}


void set_nps(unsigned int nps) {                       // Setter function for NUM_PAGES
    NUM_PAGES = nps;
}


unsigned int at_is_norm(unsigned int page_index) {    // Getter function if a page is in user space or not

    if (page_index < get_nps() && AT[page_index].perm == 2) {
        return 1;
    }
    return 0;
}


void at_set_perm(unsigned int page_index, unsigned int perm) {     // Setter function for page permission.
    if (page_index < NUM_PAGES) {
        AT[page_index].perm = perm;
    }
}


unsigned int at_is_allocated(unsigned int page_index) {            // Getter function for page allocation status.
    if (page_index < NUM_PAGES && AT[page_index].allocated > 0) {
        return 1;
    }
    return 0;
}


void at_set_allocated(unsigned int page_index, unsigned int allocated) { // Setter function for page allocation status.
    if (page_index < NUM_PAGES) {
        AT[page_index].allocated = allocated;
    }
}

int get_free_list_head(unsigned int order) {             // returns the first page index(base) of that order of free list
    if (order >= MAX_ORDER) {
        return -1;
    }
    return free_list[order];
}


void at_list_add(unsigned int order, unsigned int page_index) {    // Add a page to the free list of an order

    if (order >= MAX_ORDER || page_index >= NUM_PAGES) {
        return;
    }

    
    if (AT[page_index].perm != 2) {             // buddy freelists must contain ONLY normal RAM pages
        return;
    }

    int current_head = free_list[order];

    AT[page_index].order = order;
    AT[page_index].next  = current_head;       // pointer to the next page in the free list  
    AT[page_index].prev  = -1;

    if (current_head != -1) {
        AT[current_head].prev = (int)page_index;
    }
    free_list[order] = (int)page_index;      // adds the base physical page index to the head of the free list of that order
}


// Removes a page from the free list at the specified order.
void at_list_remove(unsigned int order, unsigned int page_index) {

    if (order >= MAX_ORDER || page_index >= NUM_PAGES) {
        return;
    }

    int n = AT[page_index].next;
    int p = AT[page_index].prev;

    if (p != -1) {
        AT[p].next = n;
    } 
    else {
        free_list[order] = n;
    }

    if (n != -1) {
        AT[n].prev = p;
    }

    AT[page_index].next = -1;
    AT[page_index].prev = -1;
}
