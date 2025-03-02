use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_comment'} = '*document_root C1
 *before_node_section C1
  *paragraph C2
   {text}
   *@c C1
    {rawline_arg: comment}
';


$result_texis{'text_comment'} = 'text@c comment';


$result_texts{'text_comment'} = 'text';

$result_errors{'text_comment'} = [];


$result_floats{'text_comment'} = {};



$result_converted{'plaintext'}->{'text_comment'} = 'text
';


$result_converted{'html_text'}->{'text_comment'} = '<p>text</p>';

1;
