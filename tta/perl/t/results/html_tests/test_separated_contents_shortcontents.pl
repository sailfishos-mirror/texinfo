use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_separated_contents_shortcontents'} = '*document_root C7
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
 |is_target:{1}
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
 *2 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C2 l7 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
    {chapter}
  {empty_line:\\n}
 *4 @node C1 l9 {app}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{app}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {app}
 *5 @appendix C3 l10 {appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
    {appendix}
  {empty_line:\\n}
  *@shortcontents C1 l12
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'test_separated_contents_shortcontents'} = '@contents

@node Top
@top top

@node chap
@chapter chapter

@node app
@appendix appendix

@shortcontents
';


$result_texts{'test_separated_contents_shortcontents'} = '
top
***

1 chapter
*********

Appendix A appendix
*******************

';

$result_errors{'test_separated_contents_shortcontents'} = [];


$result_nodes_list{'test_separated_contents_shortcontents'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->chap
2|chap
 associated_section: 1 chapter
 associated_title_command: 1 chapter
 node_directions:
  next->app
  prev->Top
  up->Top
3|app
 associated_section: A appendix
 associated_title_command: A appendix
 node_directions:
  prev->chap
  up->Top
';

$result_sections_list{'test_separated_contents_shortcontents'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
2|chapter
 associated_anchor_command: chap
 associated_node: chap
3|appendix
 associated_anchor_command: app
 associated_node: app
';

$result_headings_list{'test_separated_contents_shortcontents'} = '';

1;
