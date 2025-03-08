use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'alias_non_existing_command'} = '*document_root C1
 *before_node_section C3
  *@alias C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{myalias|userdefined}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {myalias = userdefined}
  {empty_line:\\n}
  *paragraph C1
   {hh.\\n}
';


$result_texis{'alias_non_existing_command'} = '@alias myalias = userdefined

hh.
';


$result_texts{'alias_non_existing_command'} = '
hh.
';

$result_errors{'alias_non_existing_command'} = [
  {
    'error_line' => 'unknown command `userdefined\'
',
    'line_nr' => 3,
    'text' => 'unknown command `userdefined\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 3,
    'text' => 'misplaced {',
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
