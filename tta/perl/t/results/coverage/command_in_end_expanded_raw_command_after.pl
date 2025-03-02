use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_end_expanded_raw_command_after'} = '*document_root C1
 *before_node_section C1
  *0 @tex C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *rawpreformatted C1
    {In TeX\\n}
   *@end C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{tex}
    *line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     {tex}
     *1 @asis C1 l3
      *brace_container C1
       {asis}
';


$result_texis{'command_in_end_expanded_raw_command_after'} = '@tex
In TeX
@end tex@asis{asis}
';


$result_texts{'command_in_end_expanded_raw_command_after'} = 'In TeX
';

$result_errors{'command_in_end_expanded_raw_command_after'} = [
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 3,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: tex@asis{asis}
',
    'line_nr' => 3,
    'text' => 'bad argument to @end: tex@asis{asis}',
    'type' => 'error'
  }
];


$result_floats{'command_in_end_expanded_raw_command_after'} = {};


1;
