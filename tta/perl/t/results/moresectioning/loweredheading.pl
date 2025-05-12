use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'loweredheading'} = '*document_root C3
 *before_node_section C1
  *@lowersections C1
   {rawline_arg:\\n}
 *0 @section C2 l2 {Foo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |level_modifier:{-1}
 |section_heading_number:{1}
 |section_level:{3}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Foo}
  *1 @heading C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |heading_number:{1}
  |level_modifier:{-1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Bar}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'loweredheading'} = '@lowersections
@section Foo
@heading Bar
@bye
';


$result_texts{'loweredheading'} = '1 Foo
-----
Bar
---
';

$result_errors{'loweredheading'} = [];


$result_nodes_list{'loweredheading'} = '';

$result_sections_list{'loweredheading'} = '1|Foo
';

1;
