use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_in_item_missing_line'} = '*document_root C1
 *before_node_section C3
  *0 @table C4 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @code l1
   *table_entry C1
    *table_term C1
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C2
       {xx }
       *@set C2
       |INFO
       |arg_line:{ n\\n}
        {rawline_arg:n}
        {rawline_arg:}
   *table_entry C1
    *table_term C1
     *@item C1 l3
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {jj}
   *@end C1 l4
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
  {empty_line:\\n}
  *2 @table C4 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E3]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *3 @code l6
   *table_entry C1
    *table_term C1
     *@item C1 l7
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C2
       {cxx }
       *@set C2
       |INFO
       |arg_line:{ cn@c\\n}
        {rawline_arg:cn}
        {rawline_arg:}
   *table_entry C1
    *table_term C1
     *@item C1 l8
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {jj}
   *@end C1 l9
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


$result_texis{'set_in_item_missing_line'} = '@table @code
@item xx @set n
@item jj
@end table

@table @code
@item cxx @set cn@c
@item jj
@end table
';


$result_texts{'set_in_item_missing_line'} = 'xx 
jj

cxx 
jj
';

$result_errors{'set_in_item_missing_line'} = [
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


1;
