use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'misc_raw_comments'} = '*document_root C1
 *before_node_section C6
  {empty_line:\\n}
  *0 @html C3 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment space\\n}
   *rawpreformatted C1
    {in html }
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
      |{rawline_arg: comment no space\\n}
     {html}
  {empty_line:\\n}
  *1 @tex C2 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {in tex}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment after end tex\\n}
    |spaces_after_argument:
     |{    }
     {tex}
  {empty_line:\\n}
  *2 @verbatim C4 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:in verbatim @c in verbatim\\n}
   {raw:in verbatim2\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {verbatim}
';


$result_texis{'misc_raw_comments'} = '
@html @c comment space
in html @end html@c comment no space

@tex in tex
@end tex    @c comment after end tex

@verbatim
in verbatim @c in verbatim
in verbatim2
@end verbatim
';


$result_texts{'misc_raw_comments'} = '
in html 

in verbatim @c in verbatim
in verbatim2
';

$result_errors{'misc_raw_comments'} = [
  {
    'error_line' => 'warning: @end should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@end should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unexpected argument on @tex line: in tex
',
    'line_nr' => 5,
    'text' => 'unexpected argument on @tex line: in tex',
    'type' => 'warning'
  }
];


$result_floats{'misc_raw_comments'} = {};



$result_converted{'plaintext'}->{'misc_raw_comments'} = 'in verbatim @c in verbatim
in verbatim2
';


$result_converted{'xml'}->{'misc_raw_comments'} = '
<html spaces=" " endspaces=" "><!-- c comment space -->
in html </html><!-- c comment no space -->

<tex spaces=" " endspaces=" ">
</tex>    <!-- c comment after end tex -->

<verbatim xml:space="preserve" endspaces=" ">
in verbatim @c in verbatim
in verbatim2
</verbatim>
';

1;
