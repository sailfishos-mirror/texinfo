use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_space_comment'} = '*document_root C1
 *before_node_section C2
  {spaces_before_paragraph: }
  *paragraph C2
   {text  }
   *@c C1
    {rawline_arg: space comment}
';


$result_texis{'text_space_comment'} = ' text  @c space comment';


$result_texts{'text_space_comment'} = 'text  ';

$result_errors{'text_space_comment'} = [];


$result_floats{'text_space_comment'} = {};



$result_converted{'plaintext'}->{'text_space_comment'} = 'text
';


$result_converted{'html_text'}->{'text_space_comment'} = '<p>text  </p>';

1;
