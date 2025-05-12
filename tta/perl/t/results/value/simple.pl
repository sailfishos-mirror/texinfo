use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple'} = '*document_root C1
 *before_node_section C3
  *@set C2
  |INFO
  |arg_line:{ a-_5b the value @b{b} @c comment\\n}
   {rawline_arg:a-_5b}
   {rawline_arg:the value @b{b}}
  {empty_line:\\n}
  *paragraph C3
   {the value }
   >SOURCEMARKS
   >value_expansion<start;1>{the value @b{b}}
    >*@value C1
     >*brace_container C1
      >{a-_5b}
   *@b C1 l3
   >SOURCEMARKS
   >value_expansion<end;1>
    *brace_container C1
     {b}
   { After value.\\n}
';


$result_texis{'simple'} = '@set a-_5b the value @b{b} @c comment

the value @b{b} After value.
';


$result_texts{'simple'} = '
the value b After value.
';

$result_errors{'simple'} = [];


$result_nodes_list{'simple'} = '';

$result_sections_list{'simple'} = '';

1;
