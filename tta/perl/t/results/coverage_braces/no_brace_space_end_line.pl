use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_brace_space_end_line'} = '*document_root C1
 *before_node_section C3
  *paragraph C2
   *0 @code C1 l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *brace_container C1
     {c}
   {.\\n}
  {empty_line:\\n}
  *paragraph C4
   *1 @TeX l3
   |INFO
   |spaces_after_cmd_before_arg:
    |{\\n}
   {text\\n}
   *2 @code l5
   |INFO
   |spaces_after_cmd_before_arg:
    |{\\n}
   {Arg.}
';


$result_texis{'no_brace_space_end_line'} = '@code {c}.

@TeX
text
@code
Arg.';


$result_texts{'no_brace_space_end_line'} = 'c.

TeXtext
Arg.';

$result_errors{'no_brace_space_end_line'} = [
  {
    'error_line' => 'warning: command `@TeX\' must not be followed by new line
',
    'line_nr' => 3,
    'text' => 'command `@TeX\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@TeX expected braces
',
    'line_nr' => 4,
    'text' => '@TeX expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@code\' must not be followed by new line
',
    'line_nr' => 5,
    'text' => 'command `@code\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 6,
    'text' => '@code expected braces',
    'type' => 'error'
  }
];


1;
