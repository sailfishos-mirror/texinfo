use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'itemize_tieaccent'} = '*document_root C1
 *before_node_section C12
  *preamble_before_content
  *0 @itemize C3 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @tieaccent C1 l1
      *brace_container C1
       {ab}
   *@item C2 l2
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *2 @tieaccent C1 l2
      *brace_container C1
       {ab}
     {\\n}
   *@end C1 l3
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
  *3 @itemize C3 l5
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *4 @tieaccent C1 l5
      *brace_container C2
       *5 @aa C1 l5
        *brace_container
       *6 @^ C1 l5
        *following_arg C1
         {e}
   *@item C2 l6
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *7 @tieaccent C1 l6
      *brace_container C2
       *8 @aa C1 l6
        *brace_container
       *9 @^ C1 l6
        *following_arg C1
         {e}
     {\\n}
   *@end C1 l7
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
  *10 @itemize C3 l9
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *11 @tieaccent C1 l9
      *brace_container C2
       *12 @aa C1 l9
        *brace_container
       {d}
   *@item C2 l10
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *13 @tieaccent C1 l10
      *brace_container C2
       *14 @aa C1 l10
        *brace_container
       {d}
     {\\n}
   *@end C1 l11
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
  *15 @itemize C3 l13
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *16 @tieaccent C1 l13
      *brace_container C2
       {x}
       *17 @^ C1 l13
        *following_arg C1
         {e}
   *@item C2 l14
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *18 @tieaccent C1 l14
      *brace_container C2
       {x}
       *19 @^ C1 l14
        *following_arg C1
         {e}
     {\\n}
   *@end C1 l15
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
  *20 @itemize C3 l17
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *21 @tieaccent C1 l17
      *brace_container C1
       {g}
   *@item C2 l18
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *22 @tieaccent C1 l18
      *brace_container C1
       {g}
     {\\n}
   *@end C1 l19
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
  *23 @itemize C3 l21
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *24 @tieaccent C1 l21
      *brace_container C1
       *25 @^ C1 l21
        *following_arg C1
         {e}
   *@item C2 l22
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *26 @tieaccent C1 l22
      *brace_container C1
       *27 @^ C1 l22
        *following_arg C1
         {e}
     {\\n}
   *@end C1 l23
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
';


$result_texis{'itemize_tieaccent'} = '@itemize @tieaccent{ab}
@item item @tieaccent{ab}
@end itemize

@itemize @tieaccent{@aa{}@^e}
@item item @tieaccent{@aa{}@^e}
@end itemize

@itemize @tieaccent{@aa{}d}
@item item @tieaccent{@aa{}d}
@end itemize

@itemize @tieaccent{x@^e}
@item item @tieaccent{x@^e}
@end itemize

@itemize @tieaccent{g}
@item item @tieaccent{g}
@end itemize

@itemize @tieaccent{@^e}
@item item @tieaccent{@^e}
@end itemize
';


$result_texts{'itemize_tieaccent'} = 'item ab[

item aae^[

item aad[

item xe^[

item g[

item e^[
';

$result_errors{'itemize_tieaccent'} = [];


$result_converted_errors{'file_html'}->{'itemize_tieaccent'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'itemize_tieaccent.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
