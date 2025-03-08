use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'math_bracketed_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @math C1 l1
    *brace_command_context C3
     *balanced_braces C1 l1
      {{x^i}}
     {\\over}
     *balanced_braces C2 l1
      {{\\tan }
      {}}
';


$result_texis{'math_bracketed_not_closed'} = '@math{{x^i}\\over{\\tan }}';


$result_texts{'math_bracketed_not_closed'} = '{x^i}\\over{\\tan }';

$result_errors{'math_bracketed_not_closed'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => '@math missing closing brace
',
    'line_nr' => 1,
    'text' => '@math missing closing brace',
    'type' => 'error'
  }
];


1;
