use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'file_only_png'} = '*document_root C2
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
  {empty_line:\\n}
  *paragraph C5
   {Just before an image }
   *1 @image C1 l3
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {this_is_a_long_unknown_file}
   { text after the image, and more text, and more }
   *2 @image C1 l3
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {this_is_a_long_unknown_file}
   { text.\\n}
';


$result_texis{'file_only_png'} = '@node Top

Just before an image @image{this_is_a_long_unknown_file} text after the image, and more text, and more @image{this_is_a_long_unknown_file} text.
';


$result_texts{'file_only_png'} = '
Just before an image this_is_a_long_unknown_file text after the image, and more text, and more this_is_a_long_unknown_file text.
';

$result_errors{'file_only_png'} = [];



$result_converted{'info'}->{'file_only_png'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Just before an image  [image src="this_is_a_long_unknown_file.png" ] text after the image, and more text, and more  [image src="this_is_a_long_unknown_file.png" ]
text.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
