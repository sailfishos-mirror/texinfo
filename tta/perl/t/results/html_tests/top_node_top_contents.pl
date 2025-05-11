use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_node_top_contents'} = '*document_root C3
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
 *1 @top C1 l4 {Texinfo modules documentation}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
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
    {Texinfo modules documentation}
';


$result_texis{'top_node_top_contents'} = '@contents

@node Top
@top Texinfo modules documentation
';


$result_texts{'top_node_top_contents'} = '
Texinfo modules documentation
*****************************
';

$result_errors{'top_node_top_contents'} = [];



$result_converted{'html_text'}->{'top_node_top_contents'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="Texinfo-modules-documentation"><span>Texinfo modules documentation<a class="copiable-link" href="#Texinfo-modules-documentation"> &para;</a></span></h1>
</div>
';

1;
