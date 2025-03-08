use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'comments'} = '*document_root C1
 *before_node_section C3
  *paragraph C2
   *0 @verb C1 l1
   |INFO
   |delimiter:{a}
    *brace_container C2
     {raw: comment @c comment\\n}
     {raw:in a verb }
   *@c C1
    {rawline_arg: comment\\n}
  {empty_line:\\n}
  *paragraph C4
   {something }
   *1 @verb C1 l4
   |INFO
   |delimiter:{,}
    *brace_container C1
     {raw: in verb}
   { }
   *@c C1
    {rawline_arg: other comment}
';


$result_texis{'comments'} = '@verb{a comment @c comment
in a verb a}@c comment

something @verb{, in verb,} @c other comment';


$result_texts{'comments'} = ' comment @c comment
in a verb 
something  in verb ';

$result_errors{'comments'} = [];


1;
