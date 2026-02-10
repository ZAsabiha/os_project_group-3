#ifndef _KERN_PMM_MATINIT_H_
#define _KERN_PMM_MATINIT_H_

#ifdef _KERN_

#include <pmm/MATIntro/export.h>
#include <pmm/MATOp/export.h> // If you use pfree for defrag later

void set_nps(unsigned int nps);
void at_set_perm(unsigned int page_index, unsigned int perm);
void at_set_allocated(unsigned int page_index, unsigned int allocated);
unsigned int get_nps(void);

// Buddy System imports
void pmm_init_freelists(void);
void at_list_add(unsigned int order, unsigned int page_index);
int get_free_list_head(unsigned int order);

// BIOS Map imports
unsigned int get_size(void);
unsigned int get_mms(unsigned int idx);
unsigned int get_mml(unsigned int idx);
unsigned int is_usable(unsigned int idx);
void devinit(unsigned int mbi_addr);

#endif
#endif