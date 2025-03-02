use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_to_top_in_anchor'} = '*document_root C2
 *before_node_section
 *0 @node C2 l1
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
  *1 @anchor C1 l2
  |EXTRA
  |is_target:{1}
  |normalized:{TOP-Top}
   *brace_arg C2
    {TOP }
    *2 @ref C1 l2
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
     |normalized:{Top}
      {Top}
';


$result_texis{'ref_to_top_in_anchor'} = '@node Top
@anchor{TOP @ref{Top}}';


$result_texts{'ref_to_top_in_anchor'} = '';

$result_nodes{'ref_to_top_in_anchor'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'ref_to_top_in_anchor'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'ref_to_top_in_anchor'} = [
  {
    'error_line' => 'warning: @ref should not appear anywhere inside @anchor
',
    'line_nr' => 2,
    'text' => '@ref should not appear anywhere inside @anchor',
    'type' => 'warning'
  }
];


$result_floats{'ref_to_top_in_anchor'} = {};


1;
