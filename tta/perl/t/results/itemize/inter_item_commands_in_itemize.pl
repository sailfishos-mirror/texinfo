use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inter_item_commands_in_itemize'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l4 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C7 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 @itemize C4 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E5]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *5 @minus l7
   *before_item C2
    *@c C1
     {rawline_arg: comment in itemize\\n}
    *6 index_entry_command@cindex C1 l9
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {also a cindex in itemize}
   *@item C2 l10
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {e--mph item\\n}
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
  *7 @itemize C5 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E8]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *8 @bullet l13
   *before_item C1
    *9 index_entry_command@cindex C1 l14
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,2}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index entry within itemize}
   *@item C2 l15
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {i--tem 1\\n}
   *@item C3 l16
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *10 index_entry_command@cindex C1 l16
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E2]
    |index_entry:I{cp,3}
     *line_arg C3
     |INFO
     |spaces_after_argument:
      |{\\n}
      {index entry right after }
      *@@
      {item}
    *paragraph C1
     {i--tem 2\\n}
   *@end C1 l18
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
  *11 @itemize C4 l20
  |EXTRA
  |command_as_argument:[E12]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *12 @bullet
     |INFO
     |inserted:{1}
   *before_item C2
    *@c C1
     {rawline_arg: comment in itemize\\n}
    *paragraph C2
     {T--ext before items.\\n}
     *13 index_entry_command@cindex C1 l23
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,4}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {also a cindex in itemize}
   *@item C2 l24
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {bullet item\\n}
   *@end C1 l25
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


$result_texis{'inter_item_commands_in_itemize'} = '@node Top
@top top

@node chapter
@chapter chap

@itemize @minus
@c comment in itemize
@cindex also a cindex in itemize
@item e--mph item
@end itemize

@itemize @bullet
@cindex index entry within itemize
@item i--tem 1
@item @cindex index entry right after @@item
i--tem 2
@end itemize

@itemize
@c comment in itemize
T--ext before items.
@cindex also a cindex in itemize
@item bullet item
@end itemize
';


$result_texts{'inter_item_commands_in_itemize'} = 'top
***

1 chap
******

e-mph item

i-tem 1
i-tem 2

T-ext before items.
bullet item
';

$result_errors{'inter_item_commands_in_itemize'} = [
  {
    'error_line' => 'warning: @cindex should only appear at the beginning of a line
',
    'line_nr' => 16,
    'text' => '@cindex should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'inter_item_commands_in_itemize'} = 'cp:
 also a cindex in itemize
 also a cindex in itemize
 index entry right after @item
 index entry within itemize
';


$result_converted{'plaintext'}->{'inter_item_commands_in_itemize'} = 'top
***

1 chap
******

   − e-mph item

   • i-tem 1
   • i-tem 2

     T-ext before items.
   • bullet item
';


$result_converted{'html_text'}->{'inter_item_commands_in_itemize'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter" id="chap"><span>1 chap<a class="copiable-link" href="#chap"> &para;</a></span></h2>

<ul class="itemize mark-minus">
<li><a class="index-entry-id" id="index-also-a-cindex-in-itemize"></a>
</li><li>e&ndash;mph item
</li></ul>

<ul class="itemize mark-bullet">
<li><a class="index-entry-id" id="index-index-entry-within-itemize"></a>
</li><li>i&ndash;tem 1
</li><li><a class="index-entry-id" id="index-index-entry-right-after-_0040item"></a>
i&ndash;tem 2
</li></ul>

<ul class="itemize mark-bullet">
<li>T&ndash;ext before items.
<a class="index-entry-id" id="index-also-a-cindex-in-itemize-1"></a>
</li><li>bullet item
</li></ul>
</div>
</div>
';

1;
