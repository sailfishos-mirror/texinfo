use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_and_empty_lines'} = '*document_root C1
 *before_node_section C6
  *paragraph C1
   {text 1.\\n}
  {empty_line:\\n}
  *0 @anchor C1 l3
  |EXTRA
  |is_target:{1}
  |normalized:{in-anchor}
   *brace_arg C1
    {in anchor}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *paragraph C1
   {text 2.\\n}
';


$result_texis{'anchor_and_empty_lines'} = 'text 1.

@anchor{in anchor}

text 2.
';


$result_texts{'anchor_and_empty_lines'} = 'text 1.


text 2.
';

$result_errors{'anchor_and_empty_lines'} = [];


$result_floats{'anchor_and_empty_lines'} = {};



$result_converted{'plaintext'}->{'anchor_and_empty_lines'} = 'text 1.

   text 2.
';

1;
