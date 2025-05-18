use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

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
   *@result C1 l4
   |INFO
   |alias_of:{click}
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
  *paragraph C1
   {A  (nocmd).\\n}
  {empty_line:\\n}
  *@clickstyle l10
  |INFO
  |arg_line:{ something\\n}
  |EXTRA
  |global_command_number:{3}
  {empty_line:\\n}
  *paragraph C1
   {A  (something).\\n}
';


$result_texis{'invalid_clickstyle'} = '
@clickstyle @result on the same line

A @result{} (result on the same line).

@clickstyle @nocmd

A  (nocmd).

@clickstyle something

A  (something).
';


$result_texts{'invalid_clickstyle'} = '

A => (result on the same line).


A  (nocmd).


A  (something).
';

$result_errors{'invalid_clickstyle'} = [
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 2,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: on the same line
',
    'line_nr' => 2,
    'text' => 'remaining argument on @clickstyle line: on the same line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 6,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'unknown command `nocmd\'
',
    'line_nr' => 8,
    'text' => 'unknown command `nocmd\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 8,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 8,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 10,
    'text' => '@clickstyle is obsolete',
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
  },
  {
    'error_line' => 'unknown command `nocmd\'
',
    'line_nr' => 12,
    'text' => 'unknown command `nocmd\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 12,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 12,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'invalid_clickstyle'} = '';

$result_sections_list{'invalid_clickstyle'} = '';

$result_sectioning_root{'invalid_clickstyle'} = '';

$result_headings_list{'invalid_clickstyle'} = '';

1;
