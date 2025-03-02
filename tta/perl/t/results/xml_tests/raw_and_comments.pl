use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw_and_comments'} = '*document_root C1
 *before_node_section C3
  *0 @tex C3 l1
  |INFO
  |spaces_before_argument:
   |{  }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment\\n}
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
    |comment_at_end:
     |*@comment C1
      |{rawline_arg: other comment\\n}
    |spaces_after_argument:
     |{  }
     {tex}
  {empty_line:\\n}
  *paragraph C2
   {Para\\n}
   *1 @xml C3 l6
   |INFO
   |spaces_before_argument:
    |{ }
    *arguments_line C1
     *block_line_arg
     |INFO
     |comment_at_end:
      |*@c C1
       |{rawline_arg: in xml comment\\n}
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
     |comment_at_end:
      |*@comment C1
       |{rawline_arg: end xml comment\\n}
     |spaces_after_argument:
      |{  }
      {xml}
';


$result_texis{'raw_and_comments'} = '@tex  @c comment
in <tex>
@end tex  @comment other comment

Para
@xml @c in xml comment
<in />
@end xml  @comment end xml comment
';


$result_texts{'raw_and_comments'} = 'in <tex>

Para
<in />
';

$result_errors{'raw_and_comments'} = [];


$result_floats{'raw_and_comments'} = {};



$result_converted{'xml'}->{'raw_and_comments'} = '<tex spaces="  " endspaces=" "><!-- c comment -->
in &lt;tex&gt;
</tex>  <!-- comment other comment -->

<para>Para
<in />
</para>';

1;
