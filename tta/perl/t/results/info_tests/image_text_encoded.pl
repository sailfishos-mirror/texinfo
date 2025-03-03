use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_text_encoded'} = '*document_root C1
 *before_node_section C4
  *@documentencoding C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |input_encoding_name:{utf-8}
  |text_arg:{utf-8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {utf-8}
  {empty_line:\\n}
  *0 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {image_encoded}
  {\\n}
';


$result_texis{'image_text_encoded'} = '@documentencoding utf-8

@image{image_encoded}
';


$result_texts{'image_text_encoded'} = '
image_encoded
';

$result_errors{'image_text_encoded'} = [];



$result_converted{'info'}->{'image_text_encoded'} = 'This is , produced from .

îmage encodée

Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'image_text_encoded'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
