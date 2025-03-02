use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_before_line_command'} = '*document_root C3
 *before_node_section C3
  *paragraph C2
   {before title }
   *@title C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {the title}
  {empty_line:\\n}
  *paragraph C1
   {i}
 *0 @node C2 l3 {LD Version Scripts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{LD-Version-Scripts}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {LD Version Scripts}
  *paragraph C1
   {--- }
 *1 @chapter C6 l4 {LD Version Scripts}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
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
    {LD Version Scripts}
  {empty_line:\\n}
  *paragraph C1
   {ddd }
  *@contents C1 l6
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *2 @quotation C3 l8
  |EXTRA
  |authors:EC[E3]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C3
    {aaa }
    *3 @author C1 l9
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{1}
    |quotation:[E2]
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {quotation author}
    {quotation\\n}
   *@end C1 l11
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
';


$result_texis{'text_before_line_command'} = 'before title @title the title

i@node LD Version Scripts
--- @chapter LD Version Scripts

ddd @contents

@quotation
aaa @author quotation author
quotation
@end quotation
';


$result_texts{'text_before_line_command'} = 'before title the title

i-- 1 LD Version Scripts
********************

ddd 
aaa quotation author
quotation
';

$result_errors{'text_before_line_command'} = [
  {
    'error_line' => 'warning: @title should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@title should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@node should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @chapter should only appear at the beginning of a line
',
    'line_nr' => 4,
    'text' => '@chapter should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @contents should only appear at the beginning of a line
',
    'line_nr' => 6,
    'text' => '@contents should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @author should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@author should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_floats{'text_before_line_command'} = {};


1;
