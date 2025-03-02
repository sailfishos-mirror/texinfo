use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb_and_char_end_of_line_not_closed'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {verb, not  closed }
   *0 @verb C1 l1
   |INFO
   |delimiter:{*}
    *brace_container C3
     {raw:\\n}
     {raw:\\n}
     {raw:@bye\\n}
';


$result_texis{'verb_and_char_end_of_line_not_closed'} = 'verb, not  closed @verb{*

@bye
*}';


$result_texts{'verb_and_char_end_of_line_not_closed'} = 'verb, not  closed 

@bye
';

$result_errors{'verb_and_char_end_of_line_not_closed'} = [
  {
    'error_line' => '@verb missing closing delimiter sequence: *}
',
    'line_nr' => 1,
    'text' => '@verb missing closing delimiter sequence: *}',
    'type' => 'error'
  }
];


$result_floats{'verb_and_char_end_of_line_not_closed'} = {};


1;
