use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_add_transliterated_redirection_files'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {Top}
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
 *@top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *@node C1 l4 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{Chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
 *@chapter C2 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
 *@node C1 l7 {s@`{e}c}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{s_00e8c}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {s}
    *@` C1 l7
     *brace_container C1
      {e}
    {c}
 *@section C4 l8 {g}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1.1}
 |section_level:{2}
 |section_number:{3}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {g}
  {empty_line:\\n}
  *@anchor C1 l10
  |EXTRA
  |is_target:{1}
  |normalized:{_00e2bc}
   *brace_arg C2
    *@^ C1 l10
     *brace_container C1
      {a}
    {bc}
  {spaces_after_close_brace:\\n}
';


$result_texis{'set_add_transliterated_redirection_files'} = '@node Top
@top top

@node Chap
@chapter chap

@node s@`{e}c
@section g

@anchor{@^{a}bc}
';


$result_texts{'set_add_transliterated_redirection_files'} = 'top
***

1 chap
******

1.1 g
=====

';

$result_errors{'set_add_transliterated_redirection_files'} = [];


$result_nodes_list{'set_add_transliterated_redirection_files'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->Chap
2|Chap
 associated_section: 1 chap
 associated_title_command: 1 chap
 node_directions:
  prev->Top
  up->Top
3|s@`{e}c
 associated_section: 1.1 g
 associated_title_command: 1.1 g
 node_directions:
  up->Chap
';

$result_sections_list{'set_add_transliterated_redirection_files'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->chap
 section_childs:
  1|chap
2|chap
 associated_anchor_command: Chap
 associated_node: Chap
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
 section_childs:
  1|g
3|g
 associated_anchor_command: s@`{e}c
 associated_node: s@`{e}c
 section_directions:
  up->chap
';

$result_sectioning_root{'set_add_transliterated_redirection_files'} = 'level: -1
list:
 1|top
';

$result_headings_list{'set_add_transliterated_redirection_files'} = '';

1;
