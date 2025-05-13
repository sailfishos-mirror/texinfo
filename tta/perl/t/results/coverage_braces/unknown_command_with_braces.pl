use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'unknown_command_with_braces'} = '*document_root C1
 *before_node_section C12
  *paragraph C1
   {Unknown thing \\n}
  {empty_line:\\n}
  *paragraph C1
   {Unknown macro  first paragraph\\n}
  {empty_line:\\n}
  *paragraph C1
   {second paragraph\\n}
  {empty_line:\\n}
  {spaces_before_paragraph: }
  *paragraph C1
   {first paragraph\\n}
  {empty_line:\\n}
  *paragraph C1
   {second paragraph\\n}
  {empty_line:\\n}
  *paragraph C1
   {third\\n}
';


$result_texis{'unknown_command_with_braces'} = 'Unknown thing 

Unknown macro  first paragraph

second paragraph

 first paragraph

second paragraph

third
';


$result_texts{'unknown_command_with_braces'} = 'Unknown thing 

Unknown macro  first paragraph

second paragraph

first paragraph

second paragraph

third
';

$result_errors{'unknown_command_with_braces'} = [
  {
    'error_line' => 'unknown command `thing\'
',
    'line_nr' => 1,
    'text' => 'unknown command `thing\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 1,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'line_nr' => 3,
    'text' => 'unknown command `unknown\'',
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
    'line_nr' => 5,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown2\'
',
    'line_nr' => 7,
    'text' => 'unknown command `unknown2\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 7,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 11,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_nodes_list{'unknown_command_with_braces'} = '';

$result_sections_list{'unknown_command_with_braces'} = '';

$result_headings_list{'unknown_command_with_braces'} = '';

1;
