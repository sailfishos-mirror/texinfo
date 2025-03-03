use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ignore_spaces_and_comments'} = '*document_root C1
 *before_node_section C9
  *0 @ignore C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:No space no comment\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
  {empty_line:\\n}
  *1 @ignore C3 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{  \\n}
   {raw:Spaces no comment\\n}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
  {empty_line:\\n}
  *2 @ignore C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: no space comment\\n}
   {raw:Comment\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
  {empty_line:\\n}
  *3 @ignore C3 l13
  |INFO
  |spaces_before_argument:
   |{  }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@comment C1
      |{rawline_arg: space comment\\n}
   {raw:Space Comment\\n}
   *@end C1 l15
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
  {empty_line:\\n}
  *4 @ignore C3 l17
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg:\\n}
   {raw:Space Comment no argument\\n}
   *@end C1 l19
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{ignore}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ignore}
';


$result_texis{'ignore_spaces_and_comments'} = '@ignore
No space no comment
@end ignore

@ignore  
Spaces no comment
@end ignore

@ignore@c no space comment
Comment
@end ignore

@ignore  @comment space comment
Space Comment
@end ignore

@ignore @c
Space Comment no argument
@end ignore
';


$result_texts{'ignore_spaces_and_comments'} = '



';

$result_errors{'ignore_spaces_and_comments'} = [];


1;
