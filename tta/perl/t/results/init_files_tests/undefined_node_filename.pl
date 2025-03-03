use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'undefined_node_filename'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C2 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
 *1 @node C1 l3 {chap Other}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap-Other}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap Other}
';


$result_texis{'undefined_node_filename'} = '@node Top

@node chap Other
';


$result_texts{'undefined_node_filename'} = '
';

$result_errors{'undefined_node_filename'} = [
  {
    'error_line' => 'warning: node `chap Other\' not in menu
',
    'line_nr' => 3,
    'text' => 'node `chap Other\' not in menu',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_html'}->{'undefined_node_filename'} = [
  {
    'error_line' => 'warning: user-defined node file name not set for `chap-Other.html\'
',
    'text' => 'user-defined node file name not set for `chap-Other.html\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'undefined_node_filename.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
