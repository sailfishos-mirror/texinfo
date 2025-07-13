use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'bad_syntax'} = '*document_root C1
 *before_node_section C16
  {empty_line:\\n}
  *@set C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  *@set C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument: \\n}
  *@set C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:?}
  *@set C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text::-/ hey!}
  *@set C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:a@b}
  *@set C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text::-" bad}
  *@set C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:} no}
  {empty_line:\\n}
  *@clear C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:aaa ggg}
  *@clear C1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {rawline_text:and{other}
  {empty_line:\\n}
  *paragraph C1
   {gurgl\\n}
  {empty_line:\\n}
  *@value C1
   *brace_container C1
    {unknown}
  {\\n}
';


$result_texis{'bad_syntax'} = '
@set
@set 
@set ?
@set :-/ hey!
@set a@b
@set :-" bad
@set } no

@clear aaa ggg
@clear and{other

gurgl

@value{unknown}
';


$result_texts{'bad_syntax'} = '


gurgl

unknown
';

$result_errors{'bad_syntax'} = [
  {
    'error_line' => '@set requires a name
',
    'line_nr' => 2,
    'text' => '@set requires a name',
    'type' => 'error'
  },
  {
    'error_line' => '@set requires a name
',
    'line_nr' => 3,
    'text' => '@set requires a name',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 4,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 5,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 6,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 7,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @set
',
    'line_nr' => 8,
    'text' => 'bad name for @set',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @clear
',
    'line_nr' => 10,
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'bad name for @clear
',
    'line_nr' => 11,
    'text' => 'bad name for @clear',
    'type' => 'error'
  },
  {
    'error_line' => 'bad syntax for @value
',
    'line_nr' => 13,
    'text' => 'bad syntax for @value',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 13,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: undefined flag: unknown
',
    'line_nr' => 15,
    'text' => 'undefined flag: unknown',
    'type' => 'warning'
  }
];


$result_nodes_list{'bad_syntax'} = '';

$result_sections_list{'bad_syntax'} = '';

$result_sectioning_root{'bad_syntax'} = '';

$result_headings_list{'bad_syntax'} = '';

1;
