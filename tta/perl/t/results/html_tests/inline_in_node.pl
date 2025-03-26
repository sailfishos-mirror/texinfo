use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inline_in_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@settitle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@inlineraw C2 l1
     |EXTRA
     |expand_index:{1}
     |format:{html}
      *brace_arg C1
       {html}
      *brace_arg C1
       {<strong class="ttitle">}
     {Title}
     *@inlineraw C2 l1
     |EXTRA
     |expand_index:{1}
     |format:{html}
      *brace_arg C1
       {html}
      *brace_arg C1
       {</strong>}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C1 l6 {@inlineraw{html,<code class="tnode">}One@inlineraw{html,</code>}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{htmlOnehtml}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@inlineraw C2 l6
    |EXTRA
    |expand_index:{1}
    |format:{html}
     *brace_arg C1
      {html}
     *brace_arg C1
      {<code class="tnode">}
    {One}
    *@inlineraw C2 l6
    |EXTRA
    |expand_index:{1}
    |format:{html}
     *brace_arg C1
      {html}
     *brace_arg C1
      {</code>}
 *3 @chapter C2 l7 {@inlineraw{html,<span class="test">}One@inlineraw{html,</span>}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@inlineraw C2 l7
    |EXTRA
    |expand_index:{1}
    |format:{html}
     *brace_arg C1
      {html}
     *brace_arg C1
      {<span class="test">}
    {One}
    *@inlineraw C2 l7
    |EXTRA
    |expand_index:{1}
    |format:{html}
     *brace_arg C1
      {html}
     *brace_arg C1
      {</span>}
  {empty_line:\\n}
';


$result_texis{'inline_in_node'} = '@settitle @inlineraw{html,<strong class="ttitle">}Title@inlineraw{html,</strong>}

@node Top
@top

@node @inlineraw{html,<code class="tnode">}One@inlineraw{html,</code>}
@chapter @inlineraw{html,<span class="test">}One@inlineraw{html,</span>}

';


$result_texts{'inline_in_node'} = '

1 <span class="test">One</span>
*******************************

';

$result_errors{'inline_in_node'} = [];


1;
