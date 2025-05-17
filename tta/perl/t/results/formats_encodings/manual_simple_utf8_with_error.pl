use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'manual_simple_utf8_with_error'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 manual_simple_utf8_with_error.texi:l3 {Top}
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
 *1 @top C2 manual_simple_utf8_with_error.texi:l4 {Testé}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Testé}
  {empty_line:\\n}
 *2 @node C2 manual_simple_utf8_with_error.texi:l6 {ésseulé}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{_00e9sseul_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ésseulé}
  {empty_line:\\n}
 *3 @node C1 manual_simple_utf8_with_error.texi:l8 {Chapitré}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{Chapitr_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapitré}
 *4 @chapter C4 manual_simple_utf8_with_error.texi:l9 {Chapitré}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapitré}
  {empty_line:\\n}
  *@value C1
   *brace_container C1
    {non_connùe}
  {\\n}
';


$result_texis{'manual_simple_utf8_with_error'} = '\\input texinfo.tex

@node Top
@top Testé

@node ésseulé

@node Chapitré
@chapter Chapitré

@value{non_connùe}
';


$result_texts{'manual_simple_utf8_with_error'} = 'Testé
*****


1 Chapitré
**********

non_connùe
';

$result_errors{'manual_simple_utf8_with_error'} = [
  {
    'error_line' => "warning: undefined flag: non_conn\x{f9}e
",
    'file_name' => 'manual_simple_utf8_with_error.texi',
    'line_nr' => 11,
    'text' => "undefined flag: non_conn\x{f9}e",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: node `\x{e9}sseul\x{e9}' unreferenced
",
    'file_name' => 'manual_simple_utf8_with_error.texi',
    'line_nr' => 6,
    'text' => "node `\x{e9}sseul\x{e9}' unreferenced",
    'type' => 'warning'
  }
];


$result_nodes_list{'manual_simple_utf8_with_error'} = '1|Top
 associated_section: Testé
 associated_title_command: Testé
 node_directions:
  next->Chapitré
2|ésseulé
3|Chapitré
 associated_section: 1 Chapitré
 associated_title_command: 1 Chapitré
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'manual_simple_utf8_with_error'} = '1|Testé
 associated_anchor_command: Top
 associated_node: Top
2|Chapitré
 associated_anchor_command: Chapitré
 associated_node: Chapitré
';

$result_headings_list{'manual_simple_utf8_with_error'} = '';

1;
