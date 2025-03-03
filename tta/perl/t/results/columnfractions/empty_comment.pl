use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_comment'} = '*document_root C1
 *before_node_section C1
  *0 @multitable C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg C1
     *1 @columnfractions C1 l1
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg
      |INFO
      |comment_at_end:
       |*@c C1
        |{rawline_arg:\\n}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
     {multitable}
';


$result_texis{'empty_comment'} = '@multitable @columnfractions @c
@end multitable';


$result_texts{'empty_comment'} = '';

$result_errors{'empty_comment'} = [
  {
    'error_line' => '@columnfractions missing argument
',
    'line_nr' => 1,
    'text' => '@columnfractions missing argument',
    'type' => 'error'
  }
];



$result_converted{'html_text'}->{'empty_comment'} = '';


$result_converted{'xml'}->{'empty_comment'} = '<multitable spaces=" " endspaces=" "><columnfractions spaces=" " line="@c"></columnfractions><!-- c -->
</multitable>';


$result_converted{'latex_text'}->{'empty_comment'} = '\\begin{tabular}{}%
\\end{tabular}%
';

1;
