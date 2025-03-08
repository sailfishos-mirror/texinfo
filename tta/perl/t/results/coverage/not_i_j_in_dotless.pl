use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'not_i_j_in_dotless'} = '*document_root C1
 *before_node_section C1
  *paragraph C4
   *0 @dotless C1 l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {a}
   { bc, }
   *1 @^ C1 l1
    *brace_container C1
     *2 @dotless C1 l1
      *brace_container C1
       {q}
   {.}
';


$result_texis{'not_i_j_in_dotless'} = '@dotless a bc, @^{@dotless{q}}.';


$result_texts{'not_i_j_in_dotless'} = 'a bc, q^.';

$result_errors{'not_i_j_in_dotless'} = [
  {
    'error_line' => '@dotless expects `i\' or `j\' as argument, not `a\'
',
    'line_nr' => 1,
    'text' => '@dotless expects `i\' or `j\' as argument, not `a\'',
    'type' => 'error'
  },
  {
    'error_line' => '@dotless expects `i\' or `j\' as argument, not `q\'
',
    'line_nr' => 1,
    'text' => '@dotless expects `i\' or `j\' as argument, not `q\'',
    'type' => 'error'
  }
];


1;
