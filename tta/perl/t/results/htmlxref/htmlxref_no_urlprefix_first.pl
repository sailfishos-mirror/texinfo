use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'htmlxref_no_urlprefix_first'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {top}
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
    {top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
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
 *2 @node C1 l4 {chap}
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
 *3 @chapter C6 l5 {Chap}
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
    {Chap}
  {empty_line:\\n}
  *paragraph C2
   *@xref C4 l7
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *@xref C4 l9
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual2}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'htmlxref_no_urlprefix_first'} = '@node top
@top top

@node chap
@chapter Chap

@xref{,,,manual}.

@xref{,,,manual2}.

';


$result_texts{'htmlxref_no_urlprefix_first'} = 'top
***

1 Chap
******

.

.

';

$result_errors{'htmlxref_no_urlprefix_first'} = [];


$result_nodes_list{'htmlxref_no_urlprefix_first'} = '1|top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->chap
2|chap
 associated_section: 1 Chap
 associated_title_command: 1 Chap
 node_directions:
  prev->top
  up->top
';

$result_sections_list{'htmlxref_no_urlprefix_first'} = '1|top
 associated_anchor_command: top
 associated_node: top
2|Chap
 associated_anchor_command: chap
 associated_node: chap
';

$result_headings_list{'htmlxref_no_urlprefix_first'} = '';

1;
