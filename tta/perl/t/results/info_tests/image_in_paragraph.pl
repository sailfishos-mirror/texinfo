use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_in_paragraph'} = '*document_root C2
 *before_node_section
 *@node C3 l1 {Top}
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
  *paragraph C3
   {Para.\\n}
   *@image C4 l4
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {alt""\\}
   {. End para.\\n}
';


$result_texis{'image_in_paragraph'} = '@node Top

Para.
@image{f--ile,,,alt""\\}. End para.
';


$result_texts{'image_in_paragraph'} = '
Para.
f--ile. End para.
';

$result_errors{'image_in_paragraph'} = [];


$result_nodes_list{'image_in_paragraph'} = '1|Top
';

$result_sections_list{'image_in_paragraph'} = '';

$result_sectioning_root{'image_in_paragraph'} = '';

$result_headings_list{'image_in_paragraph'} = '';


$result_converted{'info'}->{'image_in_paragraph'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Para.   [image src="f--ile.png" alt="alt\\"\\"\\\\" text="Image description\\"\\"\\\\." ].  End para.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
