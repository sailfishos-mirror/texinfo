use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_line_in_anchor'} = '*document_root C1
 *before_node_section C2
  *0 @anchor C1 l1
   *brace_arg C2
    {an\\n}
    {empty_line:\\n}
  *paragraph C1
   {anchor\\n}
';


$result_texis{'empty_line_in_anchor'} = '@anchor{an

}anchor
';


$result_texts{'empty_line_in_anchor'} = 'anchor
';

$result_errors{'empty_line_in_anchor'} = [
  {
    'error_line' => '@anchor missing closing brace
',
    'line_nr' => 1,
    'text' => '@anchor missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
