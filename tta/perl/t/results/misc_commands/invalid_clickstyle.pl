use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_clickstyle'} = '*document_root C1
 *before_node_section C12
  {empty_line:\\n}
  *@clickstyle C1 l2
  |INFO
  |arg_line:{ @result on the same line\\n}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@result}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *0 @click C1 l4
   |EXTRA
   |clickstyle:{result}
    *brace_container
   { (result on the same line).\\n}
  {empty_line:\\n}
  *@clickstyle C1 l6
  |INFO
  |arg_line:{ @nocmd\\n}
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:@nocmd}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *1 @click C1 l8
   |EXTRA
   |clickstyle:{nocmd}
    *brace_container
   { (nocmd).\\n}
  {empty_line:\\n}
  *@clickstyle l10
  |INFO
  |arg_line:{ something\\n}
  |EXTRA
  |global_command_number:{3}
  {empty_line:\\n}
  *paragraph C3
   {A }
   *2 @click C1 l12
   |EXTRA
   |clickstyle:{nocmd}
    *brace_container
   { (something).\\n}
';


$result_texis{'invalid_clickstyle'} = '
@clickstyle @result on the same line

A @click{} (result on the same line).

@clickstyle @nocmd

A @click{} (nocmd).

@clickstyle something

A @click{} (something).
';


$result_texts{'invalid_clickstyle'} = '

A => (result on the same line).


A  (nocmd).


A  (something).
';

$result_errors{'invalid_clickstyle'} = [
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: on the same line
',
    'line_nr' => 2,
    'text' => 'remaining argument on @clickstyle line: on the same line',
    'type' => 'warning'
  },
  {
    'error_line' => '@clickstyle should only accept an @-command as argument, not ` something
\'
',
    'line_nr' => 10,
    'text' => '@clickstyle should only accept an @-command as argument, not ` something
\'',
    'type' => 'error'
  }
];


$result_floats{'invalid_clickstyle'} = {};


1;
