use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'text_css_info_in_init'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C8 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
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
    {top}
  {empty_line:\\n}
  *paragraph C2
   *@sansserif C1 l4
    *brace_container C1
     {SSSSSSSSSSs ssss}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *@code C1 l6
    *brace_container C1
     *@r C1 l6
      *brace_container C1
       {in r in code}
   {\\n}
  {empty_line:\\n}
  *@titlefont C1 l8
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {in a new heading}
  {\\n}
';


$result_texis{'text_css_info_in_init'} = '@node Top
@top top

@sansserif{SSSSSSSSSSs ssss}.

@code{@r{in r in code}}

@titlefont{in a new heading}
';


$result_texts{'text_css_info_in_init'} = 'top
***

SSSSSSSSSSs ssss.

in r in code

in a new heading
';

$result_errors{'text_css_info_in_init'} = [];


1;
