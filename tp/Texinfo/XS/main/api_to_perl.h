/* tree_perl_api.h - API to interact with perl from C code */
#ifndef TREE_PERL_API_H
#define TREE_PERL_API_H

#include "tree_types.h"

void unregister_perl_tree_element (ELEMENT *e);

void call_switch_to_global_locale (void);
void call_sync_locale (void);
#endif
