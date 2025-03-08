use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'indicateurl_end_lines'} = '*document_root C1
 *before_node_section C4
  *paragraph C2
   *0 @indicateurl C1 l1
    *brace_container C2
     {http://begin\\n}
     {continue on other line}
   {\\n}
  {empty_line:\\n}
  *paragraph C1
   *1 @indicateurl C1 l4
    *brace_container C2
     {http://begin2\\n}
     {empty_line:\\n}
  *paragraph C1
   {cut by blank line\\n}
';


$result_texis{'indicateurl_end_lines'} = '@indicateurl{http://begin
continue on other line}

@indicateurl{http://begin2

}cut by blank line
';


$result_texts{'indicateurl_end_lines'} = 'http://begin
continue on other line

http://begin2

cut by blank line
';

$result_errors{'indicateurl_end_lines'} = [
  {
    'error_line' => '@indicateurl missing closing brace
',
    'line_nr' => 4,
    'text' => '@indicateurl missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
