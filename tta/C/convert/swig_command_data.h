/* swig_command_data.h - declarations for commands data */
#ifndef SWIG_COMMAND_DATA_H
#define SWIG_COMMAND_DATA_H

#define TXI_CM_FLAGS_LIST \
  cm_flag(line) \
  cm_flag(root) \
  cm_flag(sectioning_heading) \
  cm_flag(brace) \
  cm_flag(accent) \
  cm_flag(math) \
  cm_flag(variadic) \
  cm_flag(ref) \
  cm_flag(block) \
  cm_flag(global) \
  cm_flag(def) \
  cm_flag(def_alias) \
  cm_flag(preformatted) \
  cm_flag(preformatted_code) \
  cm_flag(nobrace) \
  cm_flag(blockitem) \
  cm_flag(index_entry_command) \
  cm_flag(global_unique)

#define cm_flag(name) \
int element_command_is_##name (ELEMENT *e);
TXI_CM_FLAGS_LIST
#undef cm_flag

#define TXI_CM_OTHER_FLAGS_LIST \
  cm_oflag(letter_no_arg) \
  cm_oflag(inline_format) \
  cm_oflag(inline_conditional) \
  cm_oflag(in_index) \
  cm_oflag(in_def) \
  cm_oflag(brace_code) \
  cm_oflag(explained) \
  cm_oflag(formatted_line) \
  cm_oflag(formatted_nobrace) \
  cm_oflag(formattable_line) \
  cm_oflag(non_formatted_block) \
  cm_oflag(non_formatted_brace) \
  cm_oflag(appendix) \
  cm_oflag(unnumbered)

#define cm_oflag(name) \
int element_command_is_##name (ELEMENT *e);
TXI_CM_OTHER_FLAGS_LIST
#undef cm_oflag

#endif
