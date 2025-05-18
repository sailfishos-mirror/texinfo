use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'between_node_and_section'} = '*document_root C7
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *1 @chapter C2 l3 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3|E6]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
 *2 @node C1 l5 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{sec1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
 *3 @section C2 l6 {sec1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec1}
  {empty_line:\\n}
 *4 @node C3 l8 {sec2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{sec2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec2}
  *5 @anchor C1 l9
  |EXTRA
  |is_target:{1}
  |normalized:{Old-name}
   *brace_arg C1
    {Old name}
  {spaces_after_close_brace:\\n}
 *6 @section C1 l10 {sec2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1.2}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec2}
';


$result_texis{'between_node_and_section'} = '
@node chap
@chapter Chap

@node sec1
@section sec1

@node sec2
@anchor{Old name}
@section sec2
';


$result_texts{'between_node_and_section'} = '
1 Chap
******

1.1 sec1
========

1.2 sec2
========
';

$result_errors{'between_node_and_section'} = [];


$result_nodes_list{'between_node_and_section'} = '1|chap
 associated_section: 1 Chap
 associated_title_command: 1 Chap
2|sec1
 associated_section: 1.1 sec1
 associated_title_command: 1.1 sec1
 node_directions:
  next->sec2
  up->chap
3|sec2
 associated_section: 1.2 sec2
 associated_title_command: 1.2 sec2
 node_directions:
  prev->sec1
  up->chap
';

$result_sections_list{'between_node_and_section'} = '1|Chap
 associated_anchor_command: chap
 associated_node: chap
2|sec1
 associated_anchor_command: sec1
 associated_node: sec1
 section_directions:
  next->sec2
  up->Chap
3|sec2
 associated_anchor_command: sec2
 associated_node: sec2
 section_directions:
  prev->sec1
  up->Chap
';

$result_headings_list{'between_node_and_section'} = '';


$result_converted{'docbook'}->{'between_node_and_section'} = '<chapter label="1" id="chap">
<title>Chap</title>

<sect1 label="1.1" id="sec1">
<title>sec1</title>

</sect1>
<sect1 label="1.2" id="sec2">
<title>sec2</title>
<anchor id="Old-name"/></sect1>
</chapter>
';

1;
