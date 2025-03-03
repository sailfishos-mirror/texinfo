use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'contents_with_only_top_node'} = '*document_root C2
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C3 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *@contents C1 l4
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'contents_with_only_top_node'} = '
@node Top

@contents
';


$result_texts{'contents_with_only_top_node'} = '
';

$result_errors{'contents_with_only_top_node'} = [];



$result_converted{'html_text'}->{'contents_with_only_top_node'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

';

$result_converted_errors{'file_html'}->{'contents_with_only_top_node'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'contents_with_only_top_node.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
