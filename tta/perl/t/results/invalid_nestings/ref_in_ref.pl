use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'ref_in_ref'} = '*document_root C2
 *before_node_section
 *0 @node C2 l1 {first}
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
  *paragraph C1
   *@ref C1 l2
    *brace_arg C1
    |EXTRA
    |node_content:{@ref{first}}
    |normalized:{first}
     *@ref C1 l2
      *brace_arg C1
      |EXTRA
      |node_content:{first}
      |normalized:{first}
       {first}
';


$result_texis{'ref_in_ref'} = '@node first
@ref{@ref{first}}';


$result_texts{'ref_in_ref'} = 'first';

$result_errors{'ref_in_ref'} = [
  {
    'error_line' => 'warning: @ref should not appear anywhere inside @ref
',
    'line_nr' => 2,
    'text' => '@ref should not appear anywhere inside @ref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref to `@ref{first}\', different from node name `first\'
',
    'line_nr' => 2,
    'text' => '@ref to `@ref{first}\', different from node name `first\'',
    'type' => 'warning'
  }
];


1;
