char *xs_unicode_text (char *, int);
char *xs_entity_text (char *);
char *xs_process_text (char *text);
void xs_parse_command_name (char *text,
                            char **,
                            int*);
void xs_parse_texi_regex (char *text,
                          char **,
                          char **,
                          char **,
                          char **,
                          char **,
                          char **,
                          char **,
                          char **);
char *xs_default_format_protect_text (char *);
