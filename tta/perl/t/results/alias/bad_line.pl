use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_line'} = '*document_root C1
 *before_node_section C4
  {empty_line:\\n}
  *@alias C1 l2
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {garbage-on-line =cmd garbage}
  {empty_line:\\n}
  *@alias C1 l4
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {garbage-on-line =cmd }
    *@code C1 l4
     *brace_container C1
      {in code}
';


$result_texis{'bad_line'} = '
@alias garbage-on-line =cmd garbage

@alias garbage-on-line =cmd @code{in code}
';


$result_texts{'bad_line'} = '

';

$result_errors{'bad_line'} = [
  {
    'error_line' => 'bad argument to @alias
',
    'line_nr' => 2,
    'text' => 'bad argument to @alias',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @code should not appear in @alias
',
    'line_nr' => 4,
    'text' => '@code should not appear in @alias',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @alias
',
    'line_nr' => 4,
    'text' => 'superfluous argument to @alias',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @alias
',
    'line_nr' => 4,
    'text' => 'bad argument to @alias',
    'type' => 'error'
  }
];


$result_nodes_list{'bad_line'} = '';

$result_sections_list{'bad_line'} = '';

$result_sectioning_root{'bad_line'} = '';

$result_headings_list{'bad_line'} = '';

1;
