use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'item_in_ref'} = '*document_root C1
 *before_node_section C1
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
     *1 @asis l1
   *table_entry C2
    *table_term C1
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {first item}
    *table_definition C3
     *paragraph C1
      {First item text\\n}
     {empty_line:\\n}
     *paragraph C1
      *2 @ref C3 l5
       *brace_arg C1
        {Top}
       *brace_arg
       *brace_arg C1
       |INFO
       |spaces_before_argument:
        |{ }
        {title in first item\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l6
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {second item}
   *@end C1 l7
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


$result_texis{'item_in_ref'} = '@table @asis
@item first item
First item text

@ref{Top,, title in first item
}@item second item
@end table
';


$result_texts{'item_in_ref'} = 'first item
First item text

Topsecond item
';

$result_errors{'item_in_ref'} = [
  {
    'error_line' => '@ref missing closing brace
',
    'line_nr' => 5,
    'text' => '@ref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


1;
