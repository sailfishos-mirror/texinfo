use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'comment_on_group_line'} = '*document_root C1
 *before_node_section C1
  *0 @group C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment\\n}
   *paragraph C1
    {in group.\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{group}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {group}
';


$result_texis{'comment_on_group_line'} = '@group @c comment
in group.
@end group
';


$result_texts{'comment_on_group_line'} = 'in group.
';

$result_errors{'comment_on_group_line'} = [];



$result_converted{'plaintext'}->{'comment_on_group_line'} = 'in group.
';


$result_converted{'html_text'}->{'comment_on_group_line'} = '<div class="group"><p>in group.
</p></div>';


$result_converted{'xml'}->{'comment_on_group_line'} = '<group spaces=" " endspaces=" "><!-- c comment -->
<para>in group.
</para></group>
';


$result_converted{'latex_text'}->{'comment_on_group_line'} = 'in group.
';


$result_converted{'docbook'}->{'comment_on_group_line'} = '<para>in group.
</para>';

1;
