use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'east_asian_in_w'} = '*document_root C1
 *before_node_section C7
  *preamble_before_content C2
   *@documentencoding C1 east_asian_in_w.texi:l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{utf-8}
   |text_arg:{utf-8}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {utf-8}
   {empty_line:\\n}
  *paragraph C4
   {This option overrides an include file name section and aaaaa aaaa\\n}
   {(}
   *0 @w C1 east_asian_in_w.texi:l4
    *brace_container C1
     {包含文字}
   {).\\n}
  {empty_line:\\n}
  *@noindent east_asian_in_w.texi:l6
  {ignorable_spaces_after_command:\\n}
  *paragraph C2
  |EXTRA
  |noindent:{1}
   {This option overrides an include file name section and aaaaa aaaa\\n}
   {(包含文字).\\n}
  {empty_line:\\n}
';


$result_texis{'east_asian_in_w'} = '@documentencoding utf-8

This option overrides an include file name section and aaaaa aaaa
(@w{包含文字}).

@noindent
This option overrides an include file name section and aaaaa aaaa
(包含文字).

';


$result_texts{'east_asian_in_w'} = '
This option overrides an include file name section and aaaaa aaaa
(包含文字).

This option overrides an include file name section and aaaaa aaaa
(包含文字).

';

$result_errors{'east_asian_in_w'} = [];


1;
