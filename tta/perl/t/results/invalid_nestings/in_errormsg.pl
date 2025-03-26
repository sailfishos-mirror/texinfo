use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'in_errormsg'} = '*document_root C1
 *before_node_section C7
  {empty_line:\\n}
  *0 @anchor C1 l2
  |EXTRA
  |is_target:{1}
  |normalized:{in-ref}
   *brace_arg C1
    {in ref}
  {spaces_after_close_brace:\\n}
  *paragraph C3
   {Text. }
   *@errormsg C1 l3
    *brace_arg C3
     *1 @anchor C1 l3
     |EXTRA
     |is_target:{1}
     |normalized:{in-anchor}
      *brace_arg C1
       {in anchor}
     {spaces_after_close_brace: }
     *@ref C1 l3
      *brace_arg C1
      |EXTRA
      |node_content:{in ref}
      |normalized:{in-ref}
       {in ref}
   {\\n}
  {empty_line:\\n}
  *@errormsg C1 l5
   *brace_arg
   |INFO
   |spaces_before_argument:
    |{\\n}
  *@table C3 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@asis l6
   *table_entry C1
    *table_term C1
     *@item C1 l7
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {item}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
';


$result_texis{'in_errormsg'} = '
@anchor{in ref}
Text. @errormsg{@anchor{in anchor} @ref{in ref}}

@errormsg{
}@table @asis
@item item
@end table
';


$result_texts{'in_errormsg'} = '
Text. 

item
';

$result_errors{'in_errormsg'} = [
  {
    'error_line' => 'warning: @anchor should not appear anywhere inside @errormsg
',
    'line_nr' => 3,
    'text' => '@anchor should not appear anywhere inside @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear anywhere inside @errormsg
',
    'line_nr' => 3,
    'text' => '@ref should not appear anywhere inside @errormsg',
    'type' => 'warning'
  },
  {
    'error_line' => '
',
    'line_nr' => 3,
    'text' => '',
    'type' => 'error'
  },
  {
    'error_line' => '@errormsg missing closing brace
',
    'line_nr' => 5,
    'text' => '@errormsg missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 9,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
