use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'printindex_index_entry_in_copying_no_insertcopying'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *0 @copying C11 l1
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *1 index_entry_command@findex C1 l3
    |INFO
    |command_name:{findex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_region:{copying}
    |index_entry:I{fn,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {Copying this document}
    {empty_line:\\n}
    *2 @defun C4 l5
    |INFO
    |spaces_before_argument:
     |{ }
     *def_line C1 l5
     |EXTRA
     |def_command:{defun}
     |def_index_element:
      |*def_name C1
       |*def_line_arg C1
        |{fun}
     |element_region:{copying}
     |index_entry:I{fn,2}
     |original_def_cmdname:{defun}
      *block_line_arg C5
      |INFO
      |spaces_after_argument:
       |{\\n}
       *def_category C1
       |INFO
       |inserted:{1}
        *def_line_arg C1
         {Function}
       (i){spaces: }
       *def_name C1
        *def_line_arg C1
         {fun}
       {spaces: }
       *def_arg C1
        *def_line_arg C1
         {arg}
     *@defunx C1 l6
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |def_command:{defun}
     |def_index_element:
      |*def_name C1
       |*def_line_arg C1
        |{xf}
     |element_region:{copying}
     |index_entry:I{fn,3}
     |original_def_cmdname:{defunx}
      *line_arg C5
      |INFO
      |spaces_after_argument:
       |{\\n}
       *def_category C1
       |INFO
       |inserted:{1}
        *def_line_arg C1
         {Function}
       (i){spaces: }
       *def_name C1
        *def_line_arg C1
         {xf}
       {spaces: }
       *def_arg C1
        *def_line_arg C1
         {arg}
     *def_item C1
      *paragraph C1
       {Defun\\n}
     *@end C1 l8
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |text_arg:{defun}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {defun}
    {empty_line:\\n}
    *3 @ftable C3 l10
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
       *4 @asis l10
     *table_entry C1
      *table_term C2
       *@item C1 l11
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{copying}
       |index_entry:I{fn,4}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {ftable item}
       *@itemx C1 l12
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{copying}
       |index_entry:I{fn,5}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {xftable xitem}
     *@end C1 l13
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |text_arg:{ftable}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {ftable}
    {empty_line:\\n}
    *@printindex C1 l15
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{1}
    |misc_args:A{fn}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {fn}
    {empty_line:\\n}
    *@end C1 l17
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *5 @node C1 l19 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |menus:EC[E7]
 |node_directions:D[next->E8]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *6 @top C6 l20 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_childs:EC[E9]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E6]
  ||section_level:{-1}
 |toplevel_directions:D[next->E9]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C1
   {Top.\\n}
  {empty_line:\\n}
  *7 @menu C3 l24
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l25
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l26
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *8 @node C1 l28 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |menu_directions:D[up->E5]
 |node_directions:D[prev->E5|up->E5]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *9 @chapter C4 l29 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[up->E6]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E6|up->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  {empty_line:\\n}
  {empty_line:\\n}
';


$result_texis{'printindex_index_entry_in_copying_no_insertcopying'} = '@copying

@findex Copying this document

@defun fun arg
@defunx xf arg
Defun
@end defun

@ftable @asis
@item ftable item
@itemx xftable xitem
@end ftable

@printindex fn

@end copying

@node Top
@top top

Top.

@menu
* chapter::
@end menu

@node chapter
@chapter Chapter



';


$result_texts{'printindex_index_entry_in_copying_no_insertcopying'} = '
top
***

Top.

* chapter::

1 Chapter
*********



';

$result_errors{'printindex_index_entry_in_copying_no_insertcopying'} = [];


$result_indices_sort_strings{'printindex_index_entry_in_copying_no_insertcopying'} = {
  'fn' => [
    'Copying this document',
    'ftable item',
    'fun',
    'xf',
    'xftable xitem'
  ]
};



$result_converted{'info'}->{'printindex_index_entry_in_copying_no_insertcopying'} = 'This is , produced from .

 -- Function: fun arg
 -- Function: xf arg
     Defun

ftable item
xftable xitem


File: ,  Node: Top,  Next: chapter,  Up: (dir)

top
***

Top.

* Menu:

* chapter::


File: ,  Node: chapter,  Prev: Top,  Up: Top

1 Chapter
*********


Tag Table:
Node: Top109
Node: chapter196

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'printindex_index_entry_in_copying_no_insertcopying'} = 'top
***

Top.

1 Chapter
*********

';


$result_converted{'html_text'}->{'printindex_index_entry_in_copying_no_insertcopying'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<p>Top.
</p>

<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>



</div>
</div>
';


$result_converted{'xml'}->{'printindex_index_entry_in_copying_no_insertcopying'} = '<copying endspaces=" ">

<findex index="fn" spaces=" "><indexterm index="fn" number="1">Copying this document</indexterm></findex>

<defun spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="2">fun</indexterm><defcategory automatic="on">Function</defcategory> <deffunction>fun</deffunction> <defparam>arg</defparam></definitionterm>
<defunx spaces=" "><definitionterm><indexterm index="fn" number="3">xf</indexterm><defcategory automatic="on">Function</defcategory> <deffunction>xf</deffunction> <defparam>arg</defparam></definitionterm></defunx>
<definitionitem><para>Defun
</para></definitionitem></defun>

<ftable commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis"><indexterm index="fn" number="4">ftable item</indexterm>ftable item</itemformat></item>
<itemx spaces=" "><itemformat command="asis"><indexterm index="fn" number="5">xftable xitem</indexterm>xftable xitem</itemformat></itemx>
</tableterm></tableentry></ftable>

<printindex spaces=" " value="fn" line="fn"></printindex>

</copying>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<para>Top.
</para>
<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>



</chapter>
';

1;
