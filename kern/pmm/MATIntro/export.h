#ifndef _KERN_PMM_MATINTRO_H_
#define _KERN_PMM_MATINTRO_H_

/* 1. Define the blueprint OUTSIDE any guards first */
struct ATStruct {
    unsigned int perm;
    unsigned int allocated;
    unsigned int order;
    int next;
    int prev;
};

#ifdef _KERN_

/* 2. Now the compiler knows how big each element of AT is */
extern struct ATStruct AT[1 << 20];

/* 3. Function prototypes */
unsigned int get_nps(void);
void set_nps(unsigned int nps);
unsigned int at_is_norm(unsigned int page_index);
void at_set_perm(unsigned int page_index, unsigned int perm);
unsigned int at_is_allocated(unsigned int page_index);
void at_set_allocated(unsigned int page_index, unsigned int allocated);

void pmm_init_freelists(void);
void at_list_add(unsigned int order, unsigned int page_index);
void at_list_remove(unsigned int order, unsigned int page_index);
int get_free_list_head(unsigned int order);

#endif  /* _KERN_ */

#endif  /* !_KERN_PMM_MATINTRO_H_ */