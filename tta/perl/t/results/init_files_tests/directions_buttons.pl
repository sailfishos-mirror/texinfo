use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'directions_buttons'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content C2
   *@contents C1 l1
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E3|E5]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |node_number:{2}
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C4 l7 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@printindex C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *4 @node C1 l11 {@code{append}ix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |node_number:{3}
 |normalized:{appendix}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@code C1 l11
     *brace_container C1
      {append}
    {ix}
 *5 @appendix C3 l12 {App}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |section_directions:D[prev->E3|up->E1]
 |section_heading_number:{A}
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {App}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l14
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Here}
';


$result_texis{'directions_buttons'} = '@contents

@node Top
@top top

@node chapter
@chapter chap

@printindex cp

@node @code{append}ix
@appendix App

@cindex Here
';


$result_texts{'directions_buttons'} = '
top
***

1 chap
******


Appendix A App
**************

';

$result_errors{'directions_buttons'} = [];


$result_nodes_list{'directions_buttons'} = '1|Top
 associated_section: top
2|chapter
 associated_section: 1 chap
3|@code{append}ix
 associated_section: A App
';

$result_sections_list{'directions_buttons'} = '1|top
 associated_node: Top
2|chap
 associated_node: chapter
3|App
 associated_node: @code{append}ix
';

$result_indices_sort_strings{'directions_buttons'} = 'cp:
 Here
';

1;
