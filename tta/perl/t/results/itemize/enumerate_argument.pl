use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'enumerate_argument'} = '*document_root C1
 *before_node_section C7
  *0 @enumerate C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {1}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *1 @enumerate C2 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{A}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment\\n}
     {A}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *2 @enumerate C2 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{z}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment\\n}
    |spaces_after_argument:
     |{ }
     {z}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *3 @enumerate C2 l10
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{0}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {0}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
';


$result_texis{'enumerate_argument'} = '@enumerate 1
@end enumerate

@enumerate A@c comment
@end enumerate

@enumerate z @c comment
@end enumerate

@enumerate 0
@end enumerate
';


$result_texts{'enumerate_argument'} = '


';

$result_errors{'enumerate_argument'} = [];



$result_converted{'plaintext'}->{'enumerate_argument'} = '';


$result_converted{'html_text'}->{'enumerate_argument'} = '


';


$result_converted{'xml'}->{'enumerate_argument'} = '<enumerate first="1" spaces=" " endspaces=" "><enumeratefirst>1</enumeratefirst>
</enumerate>

<enumerate first="A" spaces=" " endspaces=" "><enumeratefirst>A</enumeratefirst><!-- c comment -->
</enumerate>

<enumerate first="z" spaces=" " endspaces=" "><enumeratefirst>z </enumeratefirst><!-- c comment -->
</enumerate>

<enumerate spaces=" " endspaces=" "><enumeratefirst>0</enumeratefirst>
</enumerate>
';

1;
