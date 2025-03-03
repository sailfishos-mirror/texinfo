use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'tab_in_table_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @table C4 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |command_as_argument:[E2]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *2 @code l2
    *before_item C1
     *preformatted C2
      {ignorable_spaces_after_command: }
      {in tab\\n}
    *table_entry C2
     *table_term C1
      *@item C1 l4
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {table item}
     *table_definition C2
      *preformatted C1
       {T\\n}
      *preformatted C2
       {ignorable_spaces_after_command: }
       {other tab\\n}
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
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
';


$result_texis{'tab_in_table_in_example'} = '@example
@table @code
 in tab
@item table item
T
 other tab
@end table
@end example
';


$result_texts{'tab_in_table_in_example'} = 'in tab
table item
T
other tab
';

$result_errors{'tab_in_table_in_example'} = [
  {
    'error_line' => '@tab not meaningful inside `@table\' block
',
    'line_nr' => 3,
    'text' => '@tab not meaningful inside `@table\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@tab not meaningful inside `@table\' block
',
    'line_nr' => 6,
    'text' => '@tab not meaningful inside `@table\' block',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'tab_in_table_in_example'} = '          in tab
     ‘table item’
          T
          other tab
';

1;
