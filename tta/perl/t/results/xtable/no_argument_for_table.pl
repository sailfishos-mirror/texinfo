use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_argument_for_table'} = '*document_root C1
 *before_node_section C1
  *0 @table C3 l1
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @asis
     |INFO
     |inserted:{1}
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
       {item}
    *table_definition C1
     *paragraph C1
      {In item.\\n}
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
';


$result_texis{'no_argument_for_table'} = '@table
@item item
In item.
@end table
';


$result_texts{'no_argument_for_table'} = 'item
In item.
';

$result_errors{'no_argument_for_table'} = [
  {
    'error_line' => 'missing @table argument
',
    'line_nr' => 1,
    'text' => 'missing @table argument',
    'type' => 'error'
  }
];


$result_floats{'no_argument_for_table'} = {};


1;
