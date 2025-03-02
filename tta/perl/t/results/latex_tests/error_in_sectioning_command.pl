use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'error_in_sectioning_command'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@contents C1 l1
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  {empty_line:\\n}
 *2 @node C1 l6 {@code{@@error@{@}} (@error{}): Indicating an Error Message}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message}
  *arguments_line C1
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    *3 @code C1 l6
     *brace_container C4
      *@@
      {error}
      *@{
      *@}
    { (}
    *4 @error C1 l6
     *brace_container
    {): Indicating an Error Message}
 *5 @chapter C3 l7 {@code{@@error@{@}} (@error{}): Indicating an Error Message}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    *6 @code C1 l7
     *brace_container C4
      *@@
      {error}
      *@{
      *@}
    { (}
    *7 @error C1 l7
     *brace_container
    {): Indicating an Error Message}
  {empty_line:\\n}
  *paragraph C3
   {Describe }
   *8 @error C1 l9
    *brace_container
   {.\\n}
';


$result_texis{'error_in_sectioning_command'} = '@contents

@node Top
@top top section

@node @code{@@error@{@}} (@error{}): Indicating an Error Message
@chapter @code{@@error@{@}} (@error{}): Indicating an Error Message

Describe @error{}.
';


$result_texts{'error_in_sectioning_command'} = '
top section
***********

1 @error{} (error-->): Indicating an Error Message
**************************************************

Describe error-->.
';

$result_errors{'error_in_sectioning_command'} = [];


$result_floats{'error_in_sectioning_command'} = {};



$result_converted{'latex_text'}->{'error_in_sectioning_command'} = '
\\begin{document}
\\tableofcontents\\newpage
\\label{anchor:Top}%
\\chapter{{\\texttt{@error\\{\\}} (\\texorpdfstring{\\fbox{error}}{error}): Indicating an Error Message}}
\\label{anchor:_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message}%

Describe \\fbox{error}.
';

1;
