use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_format_single_footnote_in_inline_content'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
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
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C9 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *paragraph C3
   {a}
   *4 @footnote C1 l7
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {In the footnote}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {b}
   *5 @footnote C1 l9
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C3
     *@c C1
      {rawline_arg: an example in the footnote\\n}
     {empty_line:\\n}
     *6 @example C3 l11
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *preformatted C1
       {in    example\\n}
      *@end C1 l13
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{example}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {example}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {c}
   *7 @footnote C1 l16
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{3}
    *brace_command_context C2
     *@*
     {\\n}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {d}
   *8 @footnote C1 l20
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{4}
    *brace_command_context C1
     *9 @quotation C4 l21
     |INFO
     |spaces_before_argument:
      |{ }
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {qtitle}
      *@author C1 l22
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |global_command_number:{1}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {Me}
      *paragraph C1
       {In quotation\\n}
      *@end C1 l24
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{quotation}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {quotation}
   {\\n}
';


$result_texis{'test_format_single_footnote_in_inline_content'} = '@node Top
@top top

@node chap
@chapter Chap

a@footnote{In the footnote}.

b@footnote{@c an example in the footnote

@example
in    example
@end example
}

c@footnote{
@*
}

d@footnote{
@quotation qtitle
@author Me
In quotation
@end quotation
}
';


$result_texts{'test_format_single_footnote_in_inline_content'} = 'top
***

1 Chap
******

a.

b

c

d
';

$result_errors{'test_format_single_footnote_in_inline_content'} = [];


1;
