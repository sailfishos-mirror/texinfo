use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_extension'} = '*document_root C2
 *before_node_section
 *@node C8 l1 {Top}
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
  *@image C5 l3
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
  *@image C5 l4
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
  *@image C5 l5
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


$result_nodes_list{'image_extension'} = '1|Top
';

$result_sections_list{'image_extension'} = '';

$result_sectioning_root{'image_extension'} = '';

$result_headings_list{'image_extension'} = '';


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
