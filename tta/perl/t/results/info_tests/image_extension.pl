use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_extension'} = '*document_root C2
 *before_node_section
 *0 @node C8 l1 {Top}
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
  *1 @image C5 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {fext}
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C1
    {ext}
  {\\n}
  *2 @image C5 l4
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {fdotext}
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C1
    {ext}
  {\\n}
  *3 @image C5 l5
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {f--ile}
   *brace_arg
   *brace_arg
   *brace_arg
   *brace_arg C1
    {ext}
  {\\n}
';


$result_texis{'image_extension'} = '@node Top

@image{fext,,,,ext}
@image{fdotext,,,,ext}
@image{f--ile,,,,ext}
';


$result_texts{'image_extension'} = '
fext
fdotext
f--ile
';

$result_errors{'image_extension'} = [];



$result_converted{'info'}->{'image_extension'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

 [image src="fextext" text="t" ]

 [image src="fdotext.ext" text="t" ]

 [image src="f--ile.png" text="Image description\\"\\"\\\\." ]


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
