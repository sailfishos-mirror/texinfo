use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verbatim_in_ref'} = '*document_root C2
 *before_node_section
 *0 @node C6 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *paragraph C1
   *1 @xref C2 l3
    *brace_arg C1
     {first}
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ \\n}
  *2 @verbatim C3 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {raw:verbat text\\n}
   *@end C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{verbatim}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {verbatim}
  {empty_line:\\n}
  *paragraph C1
   {.}
';


$result_texis{'verbatim_in_ref'} = '@node first

@xref{first, 
}@verbatim
verbat text
@end verbatim

.';


$result_texts{'verbatim_in_ref'} = '
firstverbat text

.';

$result_nodes{'verbatim_in_ref'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'verbatim_in_ref'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'verbatim_in_ref'} = [
  {
    'error_line' => '@xref missing closing brace
',
    'line_nr' => 3,
    'text' => '@xref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 8,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'verbatim_in_ref'} = {};


1;
