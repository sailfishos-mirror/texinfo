use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_not_found'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *1 @image C1 l2
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {n_f_image}
  {\\n}
';


$result_texis{'image_not_found'} = '@node Top
@image{n_f_image}
';


$result_texts{'image_not_found'} = 'n_f_image
';

$result_nodes{'image_not_found'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_not_found'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_not_found'} = [];


$result_floats{'image_not_found'} = {};



$result_converted{'info'}->{'image_not_found'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

[n_f_image]


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'image_not_found'} = [
  {
    'error_line' => 'warning: could not find @image file `n_f_image.txt\' nor alternate text
',
    'line_nr' => 2,
    'text' => 'could not find @image file `n_f_image.txt\' nor alternate text',
    'type' => 'warning'
  }
];


1;
