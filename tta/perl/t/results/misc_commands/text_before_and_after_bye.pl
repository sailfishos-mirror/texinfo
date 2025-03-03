use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_before_and_after_bye'} = '*document_root C3
 *before_node_section C1
  *paragraph C1
   {Before bye }
 *@bye C1
  {rawline_arg: on bye line\\n}
 *postamble_after_end C2
  {text_after_end:\\n}
  {text_after_end:after bye\\n}
';


$result_texis{'text_before_and_after_bye'} = 'Before bye @bye on bye line

after bye
';


$result_texts{'text_before_and_after_bye'} = 'Before bye ';

$result_errors{'text_before_and_after_bye'} = [
  {
    'error_line' => 'warning: @bye should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@bye should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


1;
