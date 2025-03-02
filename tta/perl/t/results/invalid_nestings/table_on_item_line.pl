use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'table_on_item_line'} = '*document_root C1
 *before_node_section C2
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
      *line_arg C2
       {item }
       *2 @table C1 l2
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
          *3 @asis l2
    *table_definition C1
     {spaces_before_paragraph:   }
   *table_entry C2
    *table_term C1
     *@item C1 l3
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {in nested table item}
    *table_definition C2
     {spaces_before_paragraph:   }
     *paragraph C2
      {in nested table line\\n}
      {   }
   *@end C1 l5
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
  *paragraph C1
   {in table line\\n}
';


$result_texis{'table_on_item_line'} = '@table @asis
@item item @table @asis
   @item in nested table item
   in nested table line
   @end table
in table line
';


$result_texts{'table_on_item_line'} = 'item 
in nested table item
in nested table line
   in table line
';

$result_errors{'table_on_item_line'} = [
  {
    'error_line' => 'warning: @table should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@table should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @table should not appear in @item
',
    'line_nr' => 2,
    'text' => '@table should not appear in @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end table\'
',
    'line_nr' => 2,
    'text' => 'no matching `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 7,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  }
];


$result_floats{'table_on_item_line'} = {};


1;
