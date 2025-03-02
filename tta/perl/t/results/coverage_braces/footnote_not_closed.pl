use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnote_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {AAA}
   *0 @footnote C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *brace_command_context C3
     *paragraph C1
      {in footnote\\n}
     {empty_line:\\n}
     *paragraph C1
      {Second paragraph.\\n}
';


$result_texis{'footnote_not_closed'} = 'AAA@footnote{ in footnote

Second paragraph.
}';


$result_texts{'footnote_not_closed'} = 'AAA';

$result_errors{'footnote_not_closed'} = [
  {
    'error_line' => '@footnote missing closing brace
',
    'line_nr' => 1,
    'text' => '@footnote missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'footnote_not_closed'} = {};


1;
