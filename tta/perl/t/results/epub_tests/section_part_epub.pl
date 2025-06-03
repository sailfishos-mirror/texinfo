use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_part_epub'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *@section C2 l2 {section}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{2}
 |section_number:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
  {empty_line:\\n}
 *@part C1 l4 {part}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |global_command_number:{1}
 |section_level:{0}
 |section_number:{2}
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


$result_nodes_list{'section_part_epub'} = '1|Top
 associated_section: 1 section
 associated_title_command: 1 section
';

$result_sections_list{'section_part_epub'} = '1|section
 associated_anchor_command: Top
 associated_node: Top
2|part
';

$result_sectioning_root{'section_part_epub'} = 'level: -1
list:
 1|section
 2|part
';

$result_headings_list{'section_part_epub'} = '';

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
