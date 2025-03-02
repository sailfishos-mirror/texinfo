use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'formats_only_title_comments'} = '*document_root C1
 *before_node_section C9
  *0 @itemize C3 l1
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
   *before_item C2
    *@c C1
     {rawline_arg: comment itemize\\n}
    *paragraph C1
     {before first itemize\\n}
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
  *2 @enumerate C3 l6
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |enumerate_specification:{1}
   *arguments_line C1
    *block_line_arg
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment on enumerate line\\n}
   *before_item C2
    *@c C1
     {rawline_arg: comment enumerate\\n}
    *paragraph C1
     {before first enumerate\\n}
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
  *3 @table C3 l11
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
   *before_item C2
    *@c C1
     {rawline_arg: comment table\\n}
    *paragraph C1
     {before first table\\n}
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
  *5 @vtable C3 l16
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E6]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |comment_at_end:
     |*@c C1
      |{rawline_arg: comment on vtable line\\n}
    |spaces_after_argument:
     |{ }
     *6 @asis l16
   *before_item C1
    *paragraph C1
     {before first vtable\\n}
   *@end C1 l18
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
  *7 @multitable C3 l20
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |columnfractions:[E8]
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C1
     *8 @columnfractions C1 l20
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
   *before_item C2
    *@c C1
     {rawline_arg: comment multitable\\n}
    *paragraph C1
     {before first multitable\\n}
   *@end C1 l23
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


$result_texis{'formats_only_title_comments'} = '@itemize
@c comment itemize
before first itemize
@end itemize

@enumerate @c comment on enumerate line
@c comment enumerate
before first enumerate
@end enumerate

@table @emph
@c comment table
before first table
@end table

@vtable @asis @c comment on vtable line
before first vtable
@end vtable

@multitable @columnfractions 0.5 0.5
@c comment multitable
before first multitable
@end multitable
';


$result_texts{'formats_only_title_comments'} = 'before first itemize

before first enumerate

before first table

before first vtable

before first multitable
';

$result_errors{'formats_only_title_comments'} = [
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'line_nr' => 1,
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @enumerate has text but no @item
',
    'line_nr' => 6,
    'text' => '@enumerate has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @table has text but no @item
',
    'line_nr' => 11,
    'text' => '@table has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @vtable has text but no @item
',
    'line_nr' => 16,
    'text' => '@vtable has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @multitable has text but no @item
',
    'line_nr' => 20,
    'text' => '@multitable has text but no @item',
    'type' => 'warning'
  }
];


$result_floats{'formats_only_title_comments'} = {};


1;
