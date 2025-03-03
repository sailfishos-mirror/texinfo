use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_part_epub'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @section C2 l2 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E2]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *2 @part C1 l4 {part}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |global_command_number:{1}
 |section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {part}
';


$result_texis{'section_part_epub'} = '@node Top
@section section

@part part
';


$result_texts{'section_part_epub'} = '1 section
=========

part
****
';

$result_errors{'section_part_epub'} = [
  {
    'error_line' => 'warning: no chapter-level command before @part
',
    'line_nr' => 4,
    'text' => 'no chapter-level command before @part',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no sectioning command associated with @part
',
    'line_nr' => 4,
    'text' => 'no sectioning command associated with @part',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_epub'}->{'section_part_epub'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'section_part_epub.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
