use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'raw_block_on_line'} = '*document_root C1
 *before_node_section C1
  *index_entry_command@cindex C1 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C1
    *@tex C1 l1
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
';


$result_texis{'raw_block_on_line'} = '@cindex @tex
';


$result_texts{'raw_block_on_line'} = '';

$result_errors{'raw_block_on_line'} = [
  {
    'error_line' => 'warning: @tex should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@tex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end tex\'
',
    'line_nr' => 1,
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @cindex
',
    'line_nr' => 1,
    'text' => 'empty index key in @cindex',
    'type' => 'warning'
  }
];


$result_nodes_list{'raw_block_on_line'} = '';

$result_sections_list{'raw_block_on_line'} = '';

$result_sectioning_root{'raw_block_on_line'} = '';

$result_headings_list{'raw_block_on_line'} = '';

$result_indices_sort_strings{'raw_block_on_line'} = '';

1;
