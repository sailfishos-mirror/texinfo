use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'non_ascii_in_macro_name'} = '*document_root C1
 *before_node_section C3
  *0 @macro C3 l1
  |EXTRA
  |invalid_syntax:{1}
   *arguments_line C1
    {macro_line: parenbrève {a}\\n}
   {raw:(@`{\\a\\})\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *paragraph C1
   {èvee\\n}
';


$result_texis{'non_ascii_in_macro_name'} = '@macro parenbrève {a}
(@`{\\a\\})
@end macro

èvee
';


$result_texts{'non_ascii_in_macro_name'} = '
èvee
';

$result_errors{'non_ascii_in_macro_name'} = [
  {
    'error_line' => 'bad name for @macro
',
    'line_nr' => 1,
    'text' => 'bad name for @macro',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `parenbr\'
',
    'line_nr' => 5,
    'text' => 'unknown command `parenbr\'',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 5,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 5,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'non_ascii_in_macro_name'} = {};


1;
