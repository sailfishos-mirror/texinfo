/* tree_perl_api.h - API to interact with perl from C code */
#ifndef TREE_PERL_API_H
#define TREE_PERL_API_H

#include "tree_types.h"
#include "converter_types.h"

int get_refcount (void *sv);

void unregister_perl_data (void *sv);
void register_perl_data (void *sv);
char *call_close_perl_io (void *io);

void call_switch_to_global_locale (void);
void call_sync_locale (void);
void croak_message (char *message);

#endif
