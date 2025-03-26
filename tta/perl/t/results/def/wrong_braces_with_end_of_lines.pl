use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'wrong_braces_with_end_of_lines'} = '*document_root C1
 *before_node_section C3
  *@deffn C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{name}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {args}
     {spaces: }
     *def_arg C1
      *bracketed_arg C1 l1
      |INFO
      |spaces_after_argument:
       |{\\n}
      |spaces_before_argument:
       |{   }
       |>SOURCEMARKS
       |>defline_continuation<1><p:1>
       {more args}
   *def_item C1
    *paragraph C3
     {deffn with }
     *@{
     {\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ \\n}
     {deffn}
  {empty_line:\\n}
  *@deffn C3 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l6
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{name}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffn}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {args}
     {spaces:    }
     >SOURCEMARKS
     >defline_continuation<2><p:2>
     *def_arg C1
      *def_line_arg C1
       {more}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {args}
   *def_item C1
    *paragraph C3
     {deffn with }
     *@}
     {\\n}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{ \\n}
     {deffn}
';


$result_texis{'wrong_braces_with_end_of_lines'} = '@deffn category name args {   more args
}deffn with @{
@end deffn 

@deffn category name args    more args
deffn with @}
@end deffn 
';


$result_texts{'wrong_braces_with_end_of_lines'} = 'category: name args more args
deffn with {

category: name args    more args
deffn with }
';

$result_errors{'wrong_braces_with_end_of_lines'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 7,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'wrong_braces_with_end_of_lines'} = 'fn:
 name
 name
';

1;
