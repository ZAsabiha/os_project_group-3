#ifndef _KERN_PMM_MATOP_IMPORT_H_
#define _KERN_PMM_MATOP_IMPORT_H_

#ifdef _KERN_

unsigned int get_nps(void);
unsigned int at_is_norm(unsigned int page_index);
unsigned int at_is_allocated(unsigned int page_index);
void at_set_allocated(unsigned int page_index, unsigned int allocated);

// Missing MATIntro functions needed for Buddy System
void at_list_add(unsigned int order, unsigned int page_index);
void at_list_remove(unsigned int order, unsigned int page_index);
int get_free_list_head(unsigned int order);

#endif  /* _KERN_ */

#endif  /* !_KERN_PMM_MATOP_IMPORT_H_ */
