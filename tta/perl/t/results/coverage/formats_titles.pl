use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'formats_titles'} = '*document_root C1
 *before_node_section C9
  *0 @itemize C4 l1
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @bullet
     |INFO
     |inserted:{1}
   *before_item C1
    *paragraph C1
     {before first itemize\\n}
   *@item C2 l3
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item\\n}
   *@end C1 l4
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{itemize}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {itemize}
  {empty_line:\\n}
  *2 @enumerate C4 l6
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *before_item C1
    *paragraph C1
     {before first enumerate\\n}
   *@item C2 l8
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {enum\\n}
   *@end C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {enumerate}
  {empty_line:\\n}
  *3 @table C4 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E4]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *4 @emph l11
   *before_item C1
    *paragraph C1
     {before first table\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l13
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {tab}
   *@end C1 l14
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
  *5 @vtable C4 l16
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E6]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *6 @asis l16
   *before_item C1
    *paragraph C1
     {before first vtable\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l18
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |index_entry:I{vr,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {vtab}
   *@end C1 l19
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{vtable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {vtable}
  {empty_line:\\n}
  *7 @multitable C4 l21
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |columnfractions:[E8]
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C1
     *8 @columnfractions C1 l21
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |misc_args:A{0.5|0.5}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {0.5 0.5}
   *before_item C1
    *paragraph C1
     {before first multitable\\n}
   *multitable_body C1
    *row C2
    |EXTRA
    |row_number:{1}
     *@item C2 l23
     |EXTRA
     |cell_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {item multit }
     *@tab C2 l23
     |EXTRA
     |cell_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {tab multit\\n}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{multitable}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {multitable}
';


$result_texis{'formats_titles'} = '@itemize
before first itemize
@item item
@end itemize

@enumerate
before first enumerate
@item enum
@end enumerate

@table @emph
before first table
@item tab
@end table

@vtable @asis
before first vtable
@item vtab
@end vtable

@multitable @columnfractions 0.5 0.5
before first multitable
@item item multit @tab tab multit
@end multitable
';


$result_texts{'formats_titles'} = 'before first itemize
item

before first enumerate
1. enum

before first table
tab

before first vtable
vtab

before first multitable
item multit tab multit
';

$result_errors{'formats_titles'} = [
  {
    'error_line' => 'warning: entry for index `vr\' outside of any node
',
    'line_nr' => 18,
    'text' => 'entry for index `vr\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'formats_titles'} = 'vr:
 vtab
';

1;
