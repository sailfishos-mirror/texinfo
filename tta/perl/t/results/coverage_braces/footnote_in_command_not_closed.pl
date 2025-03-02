use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnote_in_command_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {aaa}
   *0 @code C1 l1
    *brace_container C2
     {in code}
     *1 @footnote C1 l1
      *brace_command_context C1
       *paragraph C1
        {in footnote}
';


$result_texis{'footnote_in_command_not_closed'} = 'aaa@code{in code@footnote{in footnote}}';


$result_texts{'footnote_in_command_not_closed'} = 'aaain code';

$result_errors{'footnote_in_command_not_closed'} = [
  {
    'error_line' => '@footnote missing closing brace
',
    'line_nr' => 1,
    'text' => '@footnote missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => '@code missing closing brace
',
    'line_nr' => 1,
    'text' => '@code missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'footnote_in_command_not_closed'} = {};


1;
