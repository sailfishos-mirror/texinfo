use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_paragraphindent_in_preamble'} = '*document_root C5
 *before_node_section C3
  *preamble_before_content C6
   *0 @copying C5 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {In copying.\\n}
    {empty_line:\\n}
    *paragraph C1
     {Copying second para.\\n}
    *@end C1 l5
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
   *@paragraphindent C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |misc_args:A{1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {1}
   {empty_line:\\n}
   *@paragraphindent C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{2}
   |misc_args:A{6}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {6}
   {empty_line:\\n}
  *paragraph C1
   {After two paragraphindent.\\n}
  {empty_line:\\n}
 *1 @node C1 l13 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |associated_title_command:[E2]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *2 @top C6 l14 {test @@paragraphindent in preamble effect in preamble}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E1]
 |associated_node:[E1]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {test }
    *@@
    {paragraphindent in preamble effect in preamble}
  {empty_line:\\n}
  *paragraph C1
   {First para.\\n}
  {empty_line:\\n}
  *paragraph C1
   {Second para.\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
 *postamble_after_end C1
  {text_after_end:\\n}
';


$result_texis{'two_paragraphindent_in_preamble'} = '@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

@paragraphindent 6

After two paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@bye

';


$result_texts{'two_paragraphindent_in_preamble'} = '


After two paragraphindent.

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

Second para.

';

$result_errors{'two_paragraphindent_in_preamble'} = [];



$result_converted{'info'}->{'two_paragraphindent_in_preamble'} = 'This is , produced from .

In copying.

      Copying second para.

      After two paragraphindent.


File: ,  Node: Top,  Up: (dir)

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

      Second para.


Tag Table:
Node: Top102

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
