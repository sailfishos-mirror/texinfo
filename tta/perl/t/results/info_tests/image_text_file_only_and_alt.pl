use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_text_file_only_and_alt'} = '*document_root C2
 *before_node_section
 *@node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
  {empty_line:\\n}
  *@image C4 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {text_only_image}
   *brace_arg
   *brace_arg
   *brace_arg C1
    {alt}
  {\\n}
';


$result_texis{'image_text_file_only_and_alt'} = '@node Top

@image{text_only_image,,,alt}
';


$result_texts{'image_text_file_only_and_alt'} = '
text_only_image
';

$result_errors{'image_text_file_only_and_alt'} = [];


$result_nodes_list{'image_text_file_only_and_alt'} = '1|Top
';

$result_sections_list{'image_text_file_only_and_alt'} = '';

$result_sectioning_root{'image_text_file_only_and_alt'} = '';

$result_headings_list{'image_text_file_only_and_alt'} = '';


$result_converted{'info'}->{'image_text_file_only_and_alt'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

 [image src="" alt="alt" text="An image
text
description" ]


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
