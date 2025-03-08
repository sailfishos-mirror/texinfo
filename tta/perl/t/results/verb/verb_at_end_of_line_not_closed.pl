use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb_at_end_of_line_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {verb at end of line }
   *0 @verb C1 l1
   |INFO
   |delimiter:{}
    *brace_container C2
     {raw:\\n}
     {raw:\\n}
';


$result_texis{'verb_at_end_of_line_not_closed'} = 'verb at end of line @verb{

}';


$result_texts{'verb_at_end_of_line_not_closed'} = 'verb at end of line 

';

$result_errors{'verb_at_end_of_line_not_closed'} = [
  {
    'error_line' => '@verb without associated character
',
    'line_nr' => 1,
    'text' => '@verb without associated character',
    'type' => 'error'
  },
  {
    'error_line' => '@verb missing closing brace
',
    'line_nr' => 1,
    'text' => '@verb missing closing brace',
    'type' => 'error'
  }
];


1;
