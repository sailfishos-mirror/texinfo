use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'space_command_in_image'} = '*document_root C1
 *before_node_section C3
  *0 @image C4 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {f--ile}
   *brace_arg
   *brace_arg
   *brace_arg C1
    *@ 
  { }
  *1 @image C4 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {f--ile}
   *brace_arg
   *brace_arg
   *brace_arg C1
    *@:
';


$result_texis{'space_command_in_image'} = '@image{f--ile,,,@ } @image{f--ile,,,@:}';


$result_texts{'space_command_in_image'} = 'f--ile f--ile';

$result_errors{'space_command_in_image'} = [];


$result_floats{'space_command_in_image'} = {};



$result_converted{'plaintext'}->{'space_command_in_image'} = 'Image description""\\. Image description""\\.
';


$result_converted{'html_text'}->{'space_command_in_image'} = '<img class="image" src="f--ile.png" alt="&nbsp;"> <img class="image" src="f--ile.png" alt="f--ile">';


$result_converted{'latex_text'}->{'space_command_in_image'} = '\\includegraphics{f--ile} \\includegraphics{f--ile}';


$result_converted{'docbook'}->{'space_command_in_image'} = '<informalfigure><mediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></mediaobject></informalfigure> <informalfigure><mediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></mediaobject></informalfigure>';

1;
