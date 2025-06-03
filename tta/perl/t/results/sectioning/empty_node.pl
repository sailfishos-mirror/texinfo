use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'empty_node'} = '*document_root C3
 *before_node_section
 *@node C2 l1
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l3
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
  *arguments_line C4
   *line_arg
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |node_content:{next}
   |normalized:{next}
    {next}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |node_content:{prev}
   |normalized:{prev}
    {prev}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |node_content:{up}
   |normalized:{up}
    {up}
';


$result_texis{'empty_node'} = '@node

@node , next, prev, up
';


$result_texts{'empty_node'} = '
';

$result_errors{'empty_node'} = [
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 1,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'line_nr' => 3,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];


$result_nodes_list{'empty_node'} = '';

$result_sections_list{'empty_node'} = '';

$result_sectioning_root{'empty_node'} = '';

$result_headings_list{'empty_node'} = '';

1;
