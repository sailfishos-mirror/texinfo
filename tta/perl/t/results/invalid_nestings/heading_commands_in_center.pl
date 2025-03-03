use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'heading_commands_in_center'} = '*document_root C1
 *before_node_section C1
  *@center C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    *0 @code C1 l1
     *brace_container C2
      {aaa }
      *@thischapter
    { }
    *@|
    { a }
    *@thissection
    { }
    *@|
    { b}
';


$result_texis{'heading_commands_in_center'} = '@center @code{aaa @thischapter} @| a @thissection @| b
';


$result_texts{'heading_commands_in_center'} = 'aaa   a   b
';

$result_errors{'heading_commands_in_center'} = [
  {
    'error_line' => '@thischapter should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@thischapter should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @| should not appear in @center
',
    'line_nr' => 1,
    'text' => '@| should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@| should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @thissection should not appear in @center
',
    'line_nr' => 1,
    'text' => '@thissection should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@thissection should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@thissection should only appear in heading or footing',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @| should not appear in @center
',
    'line_nr' => 1,
    'text' => '@| should not appear in @center',
    'type' => 'warning'
  },
  {
    'error_line' => '@| should only appear in heading or footing
',
    'line_nr' => 1,
    'text' => '@| should only appear in heading or footing',
    'type' => 'error'
  }
];


1;
