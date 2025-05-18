use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnote_in_command_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {aaa}
   *@code C1 l1
    *brace_container C2
     {in code}
     *@footnote C1 l1
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


$result_nodes_list{'footnote_in_command_not_closed'} = '';

$result_sections_list{'footnote_in_command_not_closed'} = '';

$result_sectioning_root{'footnote_in_command_not_closed'} = '';

$result_headings_list{'footnote_in_command_not_closed'} = '';

1;
