use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_and_spaces'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C7 l2 {Element}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Element}
  *2 @anchor C1 l3
  |EXTRA
  |is_target:{1}
  |normalized:{anchor-0}
   *brace_arg C1
    {anchor 0}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *paragraph C3
   {Now }
   *3 @anchor C1 l5
   |EXTRA
   |is_target:{1}
   |normalized:{anchor1}
    *brace_arg C1
     {anchor1}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {No space}
   *4 @anchor C1 l7
   |EXTRA
   |is_target:{1}
   |normalized:{anchor2}
    *brace_arg C1
     {anchor2}
   {.\\n}
';


$result_texis{'anchor_and_spaces'} = '@node Top
@top Element
@anchor{anchor 0}

Now @anchor{anchor1}.

No space@anchor{anchor2}.
';


$result_texts{'anchor_and_spaces'} = 'Element
*******

Now .

No space.
';

$result_errors{'anchor_and_spaces'} = [];


$result_nodes_list{'anchor_and_spaces'} = '1|Top
 associated_section: Element
';

$result_sections_list{'anchor_and_spaces'} = '1|Element
 associated_node: Top
';


$result_converted{'info'}->{'anchor_and_spaces'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Element
*******

Now .

   No space.


Tag Table:
Node: Top27
Ref: anchor 078
Ref: anchor181
Ref: anchor296

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
