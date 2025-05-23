use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_with_spaces'} = '*document_root C1
 *before_node_section C2
  *@image C4 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {f--ile}
   *brace_arg
   *brace_arg
   *brace_arg C1
    *@ 
  *paragraph C3
   {.\\n}
   *@image C4 l2
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg
    *brace_arg C1
     *@:
   {.\\n}
';


$result_texis{'image_with_spaces'} = '@image{f--ile,,,@ }.
@image{f--ile,,,@:}.
';


$result_texts{'image_with_spaces'} = 'f--ile.
f--ile.
';

$result_errors{'image_with_spaces'} = [];


$result_nodes_list{'image_with_spaces'} = '';

$result_sections_list{'image_with_spaces'} = '';

$result_sectioning_root{'image_with_spaces'} = '';

$result_headings_list{'image_with_spaces'} = '';


$result_converted{'plaintext'}->{'image_with_spaces'} = 'Image description""\\..  Image description""\\..
';


$result_converted{'html_text'}->{'image_with_spaces'} = '<img class="image" src="f--ile.png" alt="&nbsp;"><p>.
<img class="image" src="f--ile.png" alt="f--ile">.
</p>';


$result_converted{'xml'}->{'image_with_spaces'} = '<image><imagefile>f--ile</imagefile><alttext><spacecmd type="spc"/></alttext></image><para>.
<image where="inline"><imagefile>f--ile</imagefile><alttext>&noeos;</alttext></image>.
</para>';


$result_converted{'docbook'}->{'image_with_spaces'} = '<informalfigure><mediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></mediaobject></informalfigure><para>.
<inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>.
</para>';


$result_converted{'latex_text'}->{'image_with_spaces'} = '\\includegraphics{f--ile}.
\\includegraphics{f--ile}.
';


$result_converted{'info'}->{'image_with_spaces'} = 'This is , produced from .

 [image src="f--ile.png" alt=" " text="Image description\\"\\"\\\\." ]
.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'image_with_spaces'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];


1;
