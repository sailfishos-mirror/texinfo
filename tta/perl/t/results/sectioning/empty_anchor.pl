use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_anchor'} = '*document_root C1
 *before_node_section C2
  *0 @anchor C1 l1
   *brace_arg
  *paragraph C3
   {. \\n}
   *1 @anchor C1 l2
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{   }
   {.\\n}
';


$result_texis{'empty_anchor'} = '@anchor{}. 
@anchor{   }.
';


$result_texts{'empty_anchor'} = '. 
.
';

$result_errors{'empty_anchor'} = [
  {
    'error_line' => 'empty argument in @anchor
',
    'line_nr' => 1,
    'text' => 'empty argument in @anchor',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @anchor
',
    'line_nr' => 2,
    'text' => 'empty argument in @anchor',
    'type' => 'error'
  }
];


1;
