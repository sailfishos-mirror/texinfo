use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'paragraph_in_style_command'} = '*document_root C1
 *before_node_section C7
  *paragraph C2
   {a 2 paragraphs sample }
   *0 @samp C1 l1
    *brace_container C2
     {in first paragraph\\n}
     {empty_line:\\n}
  *paragraph C1
   {in second.\\n}
  {empty_line:\\n}
  *paragraph C2
   {a 3 paragraphs sample }
   *1 @samp C1 l5
    *brace_container C2
     {in first paragraph\\n}
     {empty_line:\\n}
  *paragraph C1
   {in second\\n}
  {empty_line:\\n}
  *paragraph C1
   {in third.\\n}
';


$result_texis{'paragraph_in_style_command'} = 'a 2 paragraphs sample @samp{in first paragraph

}in second.

a 3 paragraphs sample @samp{in first paragraph

}in second

in third.
';


$result_texts{'paragraph_in_style_command'} = 'a 2 paragraphs sample in first paragraph

in second.

a 3 paragraphs sample in first paragraph

in second

in third.
';

$result_errors{'paragraph_in_style_command'} = [
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 1,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => '@samp missing closing brace
',
    'line_nr' => 5,
    'text' => '@samp missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'paragraph_in_style_command'} = {};


1;
