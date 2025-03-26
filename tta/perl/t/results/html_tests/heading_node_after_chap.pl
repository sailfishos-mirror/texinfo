use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'heading_node_after_chap'} = '*document_root C6
 *before_node_section C1
  *preamble_before_content C1
   *@settitle C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {heading node after chap}
 *0 @node C1 l2 {Cap 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Cap-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cap 1}
 *1 @chapter C5 l3 {Chapter One}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_directions:D[next->E3]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E3]
  ||section_level:{0}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter One}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: needed to have Node 1 referenced\\n}
  *paragraph C2
   *@xref C1 l6
    *brace_arg C1
    |EXTRA
    |node_content:{Node 1}
    |normalized:{Node-1}
     {Node 1}
   {\\n}
  {empty_line:\\n}
 *2 @node C1 l8 {Cap 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{Cap-2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Cap 2}
 *3 @chapter C2 l9 {Chapter Two}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[prev->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter Two}
  {empty_line:\\n}
 *4 @node C2 l11 {Node 1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E5]
 |is_target:{1}
 |normalized:{Node-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Node 1}
  *5 @heading C1 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |associated_anchor_command:[E4]
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Topic}
';


$result_texis{'heading_node_after_chap'} = '@settitle heading node after chap
@node Cap 1
@chapter Chapter One

@c needed to have Node 1 referenced
@xref{Node 1}

@node Cap 2
@chapter Chapter Two

@node Node 1
@heading Topic
';


$result_texts{'heading_node_after_chap'} = '1 Chapter One
*************

Node 1

2 Chapter Two
*************

Topic
=====
';

$result_errors{'heading_node_after_chap'} = [];


1;
