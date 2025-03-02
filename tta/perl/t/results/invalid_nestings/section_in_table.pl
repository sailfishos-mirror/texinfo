use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_in_table'} = '*document_root C2
 *before_node_section C1
  *0 @table C2 l1
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
       {Before}
    *table_definition C1
     {empty_line:\\n}
 *2 @section C5 l4 {Subsection}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E2]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Subsection}
  {empty_line:\\n}
  {ignorable_spaces_after_command: }
  *paragraph C1
   {After\\n}
  {empty_line:\\n}
';


$result_texis{'section_in_table'} = '@table @asis
@item Before

@section Subsection

 After

';


$result_texts{'section_in_table'} = 'Before

1 Subsection
============

After

';

$result_errors{'section_in_table'} = [
  {
    'error_line' => '@section seen before @end table
',
    'line_nr' => 4,
    'text' => '@section seen before @end table',
    'type' => 'error'
  },
  {
    'error_line' => '@item outside of table or list
',
    'line_nr' => 6,
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\'
',
    'line_nr' => 8,
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  }
];


$result_floats{'section_in_table'} = {};


1;
