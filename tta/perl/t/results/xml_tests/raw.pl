use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw'} = '*document_root C1
 *before_node_section C3
  *0 @tex C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *rawpreformatted C1
    {in <tex>\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {tex}
  {empty_line:\\n}
  *paragraph C2
   {Para\\n}
   *1 @xml C3 l6
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *rawpreformatted C1
     {<in />\\n}
    *@end C1 l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{xml}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {xml}
';


$result_texis{'raw'} = '@tex
in <tex>
@end tex

Para
@xml
<in />
@end xml
';


$result_texts{'raw'} = 'in <tex>

Para
<in />
';

$result_errors{'raw'} = [];


$result_floats{'raw'} = {};



$result_converted{'xml'}->{'raw'} = '<tex endspaces=" ">
in &lt;tex&gt;
</tex>

<para>Para
<in />
</para>';

1;
