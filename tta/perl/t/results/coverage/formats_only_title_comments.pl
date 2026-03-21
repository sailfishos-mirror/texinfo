use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'formats_only_title_comments'} = '*document_root C1
 *before_node_section C9
  *@itemize C3 l1
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment itemize}
    *paragraph C1
     {before first itemize\\n}
   *@end C1 l4
   |EXTRA
   |text_arg:{itemize}
    *line_arg C3
     {spaces_before_argument: }
     {itemize}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@enumerate C3 l6
   *arguments_line C1
    *block_line_arg C2
     {spaces_before_argument: }
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:comment on enumerate line}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment enumerate}
    *paragraph C1
     {before first enumerate\\n}
   *@end C1 l9
   |EXTRA
   |text_arg:{enumerate}
    *line_arg C3
     {spaces_before_argument: }
     {enumerate}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@table C3 l11
   *arguments_line C1
    *block_line_arg C3
     {spaces_before_argument: }
     *@emph l11
     {spaces_after_argument:\\n}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment table}
    *paragraph C1
     {before first table\\n}
   *@end C1 l14
   |EXTRA
   |text_arg:{table}
    *line_arg C3
     {spaces_before_argument: }
     {table}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@vtable C3 l16
   *arguments_line C1
    *block_line_arg C4
     {spaces_before_argument: }
     *@asis l16
     {spaces_after_argument: }
     *@c C1
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{spaces_after_argument:\\n}
       {rawline_text:comment on vtable line}
   *before_item C1
    *paragraph C1
     {before first vtable\\n}
   *@end C1 l18
   |EXTRA
   |text_arg:{vtable}
    *line_arg C3
     {spaces_before_argument: }
     {vtable}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@multitable C3 l20
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C2
     {spaces_before_argument: }
     *@columnfractions C1 l20
     |EXTRA
     |misc_args:A{0.5|0.5}
      *line_arg C3
       {spaces_before_argument: }
       {0.5 0.5}
       {spaces_after_argument:\\n}
   *before_item C2
    *@c C1
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{spaces_after_argument:\\n}
      {rawline_text:comment multitable}
    *paragraph C1
     {before first multitable\\n}
   *@end C1 l23
   |EXTRA
   |text_arg:{multitable}
    *line_arg C3
     {spaces_before_argument: }
     {multitable}
     {spaces_after_argument:\\n}
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

$result_errors{'formats_only_title_comments'} = '* W l1|@itemize has text but no @item
 warning: @itemize has text but no @item

* W l6|@enumerate has text but no @item
 warning: @enumerate has text but no @item

* W l11|@table has text but no @item
 warning: @table has text but no @item

* W l16|@vtable has text but no @item
 warning: @vtable has text but no @item

* W l20|@multitable has text but no @item
 warning: @multitable has text but no @item

';

$result_nodes_list{'formats_only_title_comments'} = '';

$result_sections_list{'formats_only_title_comments'} = '';

$result_sectioning_root{'formats_only_title_comments'} = '';

$result_headings_list{'formats_only_title_comments'} = '';

1;
