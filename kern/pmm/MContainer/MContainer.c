#include <lib/debug.h>
#include <lib/x86.h>
#include "import.h"

struct SContainer {
    int quota;
    int usage;
    int parent;
    int nchildren;
    int used;
};

static struct SContainer CONTAINER[NUM_IDS];

void container_init(unsigned int mbi_addr)
{
    (void)mbi_addr; // not needed if pmem_init is done elsewhere

    unsigned int real_quota = 0;
    unsigned int nps = get_nps();
    unsigned int i;

    // Count free normal RAM pages
    for (i = 0; i < nps; i++) {
        if (at_is_norm(i) && !at_is_allocated(i)) {
            real_quota++;
        }
    }

    for (i = 0; i < NUM_IDS; i++) {
        CONTAINER[i].quota = 0;
        CONTAINER[i].usage = 0;
        CONTAINER[i].parent = 0;
        CONTAINER[i].nchildren = 0;
        CONTAINER[i].used = 0;
    }

    CONTAINER[0].quota = (int)real_quota;
    CONTAINER[0].usage = 0;
    CONTAINER[0].parent = 0;
    CONTAINER[0].nchildren = 0;
    CONTAINER[0].used = 1;

    dprintf("MContainer initialized. Quota: %d\n", (int)real_quota);
}

unsigned int container_get_parent(unsigned int id) { return CONTAINER[id].parent; }
unsigned int container_get_nchildren(unsigned int id) { return CONTAINER[id].nchildren; }
unsigned int container_get_quota(unsigned int id) { return CONTAINER[id].quota; }
unsigned int container_get_usage(unsigned int id) { return CONTAINER[id].usage; }

unsigned int container_can_consume(unsigned int id, unsigned int n)
{
    if (CONTAINER[id].usage + (int)n <= CONTAINER[id].quota) return 1;
    return 0;
}

unsigned int container_split(unsigned int id, unsigned int quota)
{
    unsigned int nc = CONTAINER[id].nchildren;
    unsigned int child = id * MAX_CHILDREN + 1 + nc;

    CONTAINER[id].usage += (int)quota;
    CONTAINER[id].nchildren++;

    CONTAINER[child].quota = (int)quota;
    CONTAINER[child].usage = 0;
    CONTAINER[child].parent = (int)id;
    CONTAINER[child].nchildren = 0;
    CONTAINER[child].used = 1;

    return child;
}

unsigned int container_alloc(unsigned int id)
{
    if (container_can_consume(id, 1)) {
        unsigned int pindex = palloc();
        if (pindex != 0) {
            CONTAINER[id].usage++;
            return pindex;
        }
    }
    return 0;
}

void container_free(unsigned int id, unsigned int page_index)
{
    pfree(page_index);
    if (CONTAINER[id].usage > 0) {
        CONTAINER[id].usage--;
    }
}
