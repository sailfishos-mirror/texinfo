use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents'} = '*document_root C1
 *before_node_section C13
  {empty_line:\\n}
  *paragraph C3
   {first }
   *@@
   {contents }
  *@contents C1 l2
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {line following first content}
  *paragraph C3
   {second }
   *@@
   {contents }
  *@contents C1 l3
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {line following second content}
  *paragraph C1
   {Third content on the following line on his own\\n}
  *@contents C1 l5
  |EXTRA
  |global_command_number:{3}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  *paragraph C2
   {Line following contents\\n}
   {shortcontents }
  *@shortcontents C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {eol}
  *paragraph C1
   {shortcontents }
  *@shortcontents C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {eol}
  *paragraph C1
   {summarycontents }
  *@summarycontents C1 l9
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {line following summarycontents}
';


$result_texis{'contents'} = '
first @@contents @contents line following first content
second @@contents @contents line following second content
Third content on the following line on his own
@contents
Line following contents
shortcontents @shortcontents eol
shortcontents @shortcontents eol
summarycontents @summarycontents line following summarycontents
';


$result_texts{'contents'} = '
first @contents second @contents Third content on the following line on his own
Line following contents
shortcontents shortcontents summarycontents ';

$result_errors{'contents'} = [
  {
    'error_line' => 'warning: @contents should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@contents should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @contents should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@contents should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @shortcontents should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@shortcontents should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @shortcontents should only appear at the beginning of a line
',
    'line_nr' => 8,
    'text' => '@shortcontents should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @summarycontents should only appear at the beginning of a line
',
    'line_nr' => 9,
    'text' => '@summarycontents should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_nodes_list{'contents'} = '';

$result_sections_list{'contents'} = '';

$result_sectioning_root{'contents'} = '';

$result_headings_list{'contents'} = '';

1;
