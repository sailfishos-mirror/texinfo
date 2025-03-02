use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'itemx_before_item'} = '*document_root C1
 *before_node_section C1
  *0 @table C3 l1
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
     *1 @emph l1
   *table_entry C1
    *table_term C1
     *@itemx C1 l2
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {in itemx}
   *@end C1 l3
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


$result_texis{'itemx_before_item'} = '@table @emph
@itemx in itemx
@end table
';


$result_texts{'itemx_before_item'} = 'in itemx
';

$result_errors{'itemx_before_item'} = [
  {
    'error_line' => '@itemx should not begin @table
',
    'line_nr' => 2,
    'text' => '@itemx should not begin @table',
    'type' => 'error'
  }
];


$result_floats{'itemx_before_item'} = {};


1;
