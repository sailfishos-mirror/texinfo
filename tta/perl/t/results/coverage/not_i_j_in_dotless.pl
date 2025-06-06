use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'not_i_j_in_dotless'} = '*document_root C1
 *before_node_section C1
  *paragraph C4
   *@dotless C1 l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg: }
    *following_arg C1
     {a}
   { bc, }
   *@^ C1 l1
    *brace_container C1
     *@dotless C1 l1
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


$result_nodes_list{'not_i_j_in_dotless'} = '';

$result_sections_list{'not_i_j_in_dotless'} = '';

$result_sectioning_root{'not_i_j_in_dotless'} = '';

$result_headings_list{'not_i_j_in_dotless'} = '';

1;
