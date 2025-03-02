use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comments_on_raw_block_line'} = '*document_root C1
 *before_node_section C3
  *0 @html C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: Hcomment\\n}
   *elided_rawpreformatted C1
    {raw:In HTML\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{html}
    *line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: Hafter end\\n}
     {html}
  {empty_line:\\n}
  *1 @tex C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: Tcomment\\n}
   *rawpreformatted C1
    {In TeX\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: Tafter end\\n}
     {tex}
';


$result_texis{'comments_on_raw_block_line'} = '@html@c Hcomment
In HTML
@end html@c Hafter end

@tex@c Tcomment
In TeX
@end tex@c Tafter end
';


$result_texts{'comments_on_raw_block_line'} = '
In TeX
';

$result_errors{'comments_on_raw_block_line'} = [];


$result_floats{'comments_on_raw_block_line'} = {};



$result_converted{'plaintext'}->{'comments_on_raw_block_line'} = '';


$result_converted{'xml'}->{'comments_on_raw_block_line'} = '<html endspaces=" "><!-- c Hcomment -->
In HTML
</html><!-- c Hafter end -->

<tex endspaces=" "><!-- c Tcomment -->
In TeX
</tex><!-- c Tafter end -->
';

1;
