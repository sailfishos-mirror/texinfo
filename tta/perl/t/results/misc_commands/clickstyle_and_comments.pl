use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle_and_comments'} = '*document_root C1
 *before_node_section C7
  *@clickstyle C1 l1
  |INFO
  |arg_line:{@comment a\\n}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@comment}
  *@clickstyle C1 l2
  |INFO
  |arg_line:{ @comment b\\n}
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:@comment}
  *@clickstyle l3
  |INFO
  |arg_line:{ nocmd@comment c\\n}
  |EXTRA
  |global_command_number:{3}
  *@clickstyle l4
  |INFO
  |arg_line:{ more than one word @comment d\\n}
  |EXTRA
  |global_command_number:{4}
  *@clickstyle C1 l5
  |INFO
  |arg_line:{ @result@comment e\\n}
  |EXTRA
  |global_command_number:{5}
   {rawline_arg:@result}
  *@clickstyle C1 l6
  |INFO
  |arg_line:{ @result   @comment f\\n}
  |EXTRA
  |global_command_number:{6}
   {rawline_arg:@result}
  *@clickstyle C1 l7
  |INFO
  |arg_line:{ @result on the same line @comment g\\n}
  |EXTRA
  |global_command_number:{7}
   {rawline_arg:@result}
';


$result_texis{'clickstyle_and_comments'} = '@clickstyle@comment a
@clickstyle @comment b
@clickstyle nocmd@comment c
@clickstyle more than one word @comment d
@clickstyle @result@comment e
@clickstyle @result   @comment f
@clickstyle @result on the same line @comment g
';


$result_texts{'clickstyle_and_comments'} = '';

$result_errors{'clickstyle_and_comments'} = [
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 1,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: a
',
    'line_nr' => 1,
    'text' => 'remaining argument on @clickstyle line: a',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 2,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: b
',
    'line_nr' => 2,
    'text' => 'remaining argument on @clickstyle line: b',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 3,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => '@clickstyle should only accept an @-command as argument, not ` nocmd@comment c
\'
',
    'line_nr' => 3,
    'text' => '@clickstyle should only accept an @-command as argument, not ` nocmd@comment c
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 4,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => '@clickstyle should only accept an @-command as argument, not ` more than one word @comment d
\'
',
    'line_nr' => 4,
    'text' => '@clickstyle should only accept an @-command as argument, not ` more than one word @comment d
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 5,
    'text' => '@clickstyle is obsolete',
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
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 7,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: on the same line @comment g
',
    'line_nr' => 7,
    'text' => 'remaining argument on @clickstyle line: on the same line @comment g',
    'type' => 'warning'
  }
];


$result_nodes_list{'clickstyle_and_comments'} = '';

$result_sections_list{'clickstyle_and_comments'} = '';

$result_sectioning_root{'clickstyle_and_comments'} = '';

$result_headings_list{'clickstyle_and_comments'} = '';

1;
