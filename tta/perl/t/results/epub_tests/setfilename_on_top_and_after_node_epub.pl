use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'setfilename_on_top_and_after_node_epub'} = '*document_root C3
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
    |{spaces_after_argument:\\n}
    {Top}
 *@top C3 l2 {In top @setfilename very badly placed setfilename
}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C2
    {In top }
    *@setfilename C1 l2
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
    |EXTRA
    |text_arg:{very badly placed setfilename}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {very badly placed setfilename}
  {empty_line:\\n}
  *@setfilename C1 l4
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |text_arg:{a bit too late}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {a bit too late}
';


$result_texis{'setfilename_on_top_and_after_node_epub'} = '@node Top
@top In top @setfilename very badly placed setfilename

@setfilename a bit too late
';


$result_texts{'setfilename_on_top_and_after_node_epub'} = 'In top 
*******

';

$result_errors{'setfilename_on_top_and_after_node_epub'} = [
  {
    'error_line' => 'warning: @setfilename should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@setfilename should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename should not appear on @top line
',
    'line_nr' => 2,
    'text' => '@setfilename should not appear on @top line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 2,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 4,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 4,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  }
];


$result_nodes_list{'setfilename_on_top_and_after_node_epub'} = '1|Top
 associated_section: In top @setfilename very badly placed setfilename

 associated_title_command: In top @setfilename very badly placed setfilename

';

$result_sections_list{'setfilename_on_top_and_after_node_epub'} = '1|In top @setfilename very badly placed setfilename

 associated_anchor_command: Top
 associated_node: Top
';

$result_sectioning_root{'setfilename_on_top_and_after_node_epub'} = 'level: -1
list:
 1|In top @setfilename very badly placed setfilename

';

$result_headings_list{'setfilename_on_top_and_after_node_epub'} = '';

1;
