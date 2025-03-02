use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'mathjax_with_texinfo_html_file'} = '*document_root C1
 *before_node_section C4
  *preamble_before_content
  *0 @displaymath C7 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {a}
   *1 @sup C1 l2
    *brace_container C3
     {b - \\frac}
     *balanced_braces C1 l2
      {{\\xi}}
     *balanced_braces C3 l2
      {{phi }
      *2 @copyright C1 l2
       *brace_container
      {}}
   { }
   *3 @dotless C1 l2
    *brace_container C1
     {i}
   {\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{displaymath}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {displaymath}
  {empty_line:\\n}
  *paragraph C3
   {Some }
   *4 @math C1 l5
    *brace_command_context C8
     {a }
     *5 @minus C1 l5
      *brace_container
     { b }
     *6 @geq C1 l5
      *brace_container
     { }
     *7 @AA C1 l5
      *brace_container
     { }
     *8 @^ C1 l5
      *following_arg C1
       {e}
   {.\\n}
';


$result_texis{'mathjax_with_texinfo_html_file'} = '@displaymath
a@sup{b - \\frac{\\xi}{phi @copyright{}}} @dotless{i}
@end displaymath

Some @math{a @minus{} b @geq{} @AA{} @^e}.
';


$result_texts{'mathjax_with_texinfo_html_file'} = 'ab - \\frac{\\xi}{phi (C)} i

Some a - b >= AA e^.
';

$result_errors{'mathjax_with_texinfo_html_file'} = [];


$result_floats{'mathjax_with_texinfo_html_file'} = {};


$result_converted_errors{'file_html'}->{'mathjax_with_texinfo_html_file'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'mathjax_with_texinfo_html_file.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
