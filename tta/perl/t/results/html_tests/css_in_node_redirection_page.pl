use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'css_in_node_redirection_page'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{en}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {en}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C4
   *@sansserif C1 l6
    *brace_container C1
     {SANS}
   {.\\n}
   *2 @anchor C1 l7
   |EXTRA
   |is_target:{1}
   |normalized:{spot}
    *brace_arg C1
     {spot}
   {spaces_after_close_brace:\\n}
';


$result_texis{'css_in_node_redirection_page'} = '@documentlanguage en

@node Top
@top top

@sansserif{SANS}.
@anchor{spot}
';


$result_texts{'css_in_node_redirection_page'} = '
top
***

SANS.
';

$result_errors{'css_in_node_redirection_page'} = [];


1;
