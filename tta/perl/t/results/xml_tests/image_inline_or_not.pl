use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_inline_or_not'} = '*document_root C5
 *before_node_section C5
  *0 @image C1 l1
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {A}
  {\\n}
  {empty_line:\\n}
  *paragraph C3
   {Para }
   *1 @image C1 l3
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {hh}
   {.\\n}
  {empty_line:\\n}
 *2 @node C1 l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |menus:EC[E18]
 |node_directions:D[next->E24]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C15 l6 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E26]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E26]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *4 @image C1 l8
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {B}
  {\\n}
  {empty_line:\\n}
  *paragraph C3
   {Para }
   *5 @image C1 l10
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {jj}
   {.\\n}
  {empty_line:\\n}
  *6 @example C3 l12
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C7
    {empty_line:\\n}
    *7 @image C1 l14
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {in_example}
    {\\n}
    {empty_line:\\n}
    {T\\n}
    *8 @image C1 l17
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {in example after text}
    {\\n}
   *@end C1 l18
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
  *9 @quotation C4 l20
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *10 @image C1 l20
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_quotation_arg}
   *11 @image C1 l21
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {in_quotation_content}
   {\\n}
   *@end C1 l22
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{quotation}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {quotation}
  {empty_line:\\n}
  *12 @table C3 l24
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E13]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *13 @asis l24
   *table_entry C2
    *table_term C1
     *@item C1 l25
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *14 @image C1 l25
       |EXTRA
       |input_encoding_name:{utf-8}
        *brace_arg C1
         {in_table_item}
    *table_definition C8
     {empty_line:\\n}
     *15 @image C1 l27
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_table_def}
     {\\n}
     {empty_line:\\n}
     *paragraph C3
      {AA }
      *16 @image C1 l29
      |EXTRA
      |input_encoding_name:{utf-8}
       *brace_arg C1
        {in_table_def_para}
      {\\n}
     {empty_line:\\n}
     *17 @image C1 l31
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_table_def_after}
     {\\n}
   *@end C1 l32
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
  *18 @menu C5 l34
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l35
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@image{node_image}}
    |normalized:{node_005fimage}
     *19 @image C1 l35
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {node_image}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C2
      *20 @image C1 l35
      |EXTRA
      |input_encoding_name:{utf-8}
       *brace_arg C1
        {image_in_description}
      {\\n}
   *menu_entry C6 l36
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     *21 @image C1 l36
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_menu_entry_name}
    {menu_entry_separator:: }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{somewhere}
    |node_content:{@image{extnode}}
    |normalized:{extnode}
     {(}
     {somewhere}
     {)}
     *22 @image C1 l36
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {extnode}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     *23 @image C1 l38
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_menu_comment}
     {\\n}
   *@end C1 l39
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
 *24 @node C1 l41 {@image{node_image}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |is_target:{1}
 |menu_directions:D[next->MISSING: (menu_entry_node)[C4]|up->E2]
 |node_directions:D[prev->E2|up->E2]
 |normalized:{node_005fimage}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *25 @image C1 l41
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {node_image}
 *26 @chapter C8 l42 {@image{in_chapter_arg}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E24]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *27 @image C1 l42
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {in_chapter_arg}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C3
   {T}
   *28 @footnote C1 l45
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C2
     *29 @image C1 l46
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_footnote}
     {\\n}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {U}
   *30 @footnote C1 l49
   |INFO
   |spaces_before_argument:
    |{\\n}
   |EXTRA
   |global_command_number:{2}
    *brace_command_context C2
     *paragraph C3
      {Some t\\n}
      *31 @image C1 l51
      |EXTRA
      |input_encoding_name:{utf-8}
       *brace_arg C1
        {in text in_footnote}
      {\\n}
     {empty_line:\\n}
   {\\n}
  {empty_line:\\n}
  *32 @float C8 l55
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E34]
  |float_number:{1.1}
  |float_section:[E26]
  |float_type:{F}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{g}
   *arguments_line C2
    *block_line_arg C1
     {F}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {g}
   {empty_line:\\n}
   *33 @image C1 l57
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {in_float}
   {\\n}
   {empty_line:\\n}
   *34 @caption C1 l59
   |EXTRA
   |float:[E32]
    *brace_command_context C2
     *35 @image C1 l59
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {in_caption}
     *paragraph C2
      { PAra }
      *36 @image C1 l59
      |EXTRA
      |input_encoding_name:{utf-8}
       *brace_arg C1
        {in_caption_para}
   {spaces_after_close_brace:\\n}
   *@end C1 l60
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
';


$result_texis{'image_inline_or_not'} = '@image{A}

Para @image{hh}.

@node Top
@top top

@image{B}

Para @image{jj}.

@example

@image{in_example}

T
@image{in example after text}
@end example

@quotation @image{in_quotation_arg}
@image{in_quotation_content}
@end quotation

@table @asis
@item @image{in_table_item}

@image{in_table_def}

AA @image{in_table_def_para}

@image{in_table_def_after}
@end table

@menu
* @image{node_image}:: @image{image_in_description}
* @image{in_menu_entry_name}: (somewhere)@image{extnode}.

@image{in_menu_comment}
@end menu

@node @image{node_image}
@chapter @image{in_chapter_arg}


T@footnote{
@image{in_footnote}
}

U@footnote{
Some t
@image{in text in_footnote}

}

@float F,g

@image{in_float}

@caption{@image{in_caption} PAra @image{in_caption_para}}
@end float
';


$result_texts{'image_inline_or_not'} = 'A

Para hh.

top
***

B

Para jj.


in_example

T
in example after text

in_quotation_arg
in_quotation_content

in_table_item

in_table_def

AA in_table_def_para

in_table_def_after

* node_image:: image_in_description
* in_menu_entry_name: (somewhere)extnode.

in_menu_comment

1 in_chapter_arg
****************


T

U

F, g

in_float

';

$result_errors{'image_inline_or_not'} = [];


$result_floats{'image_inline_or_not'} = 'F: 1
 F1.1: {g}
  C: @image{in_caption} PAra @image{in_caption_para}
';


$result_converted{'xml'}->{'image_inline_or_not'} = '<image><imagefile>A</imagefile></image>

<para>Para <image where="inline"><imagefile>hh</imagefile></image>.
</para>
<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on"><image where="inline"><imagefile>node_image</imagefile></image></nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<image><imagefile>B</imagefile></image>

<para>Para <image where="inline"><imagefile>jj</imagefile></image>.
</para>
<example endspaces=" ">
<pre xml:space="preserve">
<image where="inline"><imagefile>in_example</imagefile></image>

T
<image where="inline"><imagefile>in example after text</imagefile></image>
</pre></example>

<quotation spaces=" " endspaces=" "><quotationtype><image where="inline"><imagefile>in_quotation_arg</imagefile></image></quotationtype>
<image><imagefile>in_quotation_content</imagefile></image>
</quotation>

<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis"><image where="inline"><imagefile>in_table_item</imagefile></image></itemformat></item>
</tableterm><tableitem>
<image><imagefile>in_table_def</imagefile></image>

<para>AA <image where="inline"><imagefile>in_table_def_para</imagefile></image>
</para>
<image><imagefile>in_table_def_after</imagefile></image>
</tableitem></tableentry></table>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode><image where="inline"><imagefile>node_image</imagefile></image></menunode><menuseparator>:: </menuseparator><menudescription><pre xml:space="preserve"><image where="inline"><imagefile>image_in_description</imagefile></image>
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle><image where="inline"><imagefile>in_menu_entry_name</imagefile></image></menutitle><menuseparator>: </menuseparator><menunode>(somewhere)<image where="inline"><imagefile>extnode</imagefile></image></menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
<image where="inline"><imagefile>in_menu_comment</imagefile></image>
</pre></menucomment></menu>

</top>
<node identifier="node_005fimage" spaces=" "><nodename><image where="inline"><imagefile>node_image</imagefile></image></nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle><image where="inline"><imagefile>in_chapter_arg</imagefile></image></sectiontitle>


<para>T<footnote spaces="\\n"><image><imagefile>in_footnote</imagefile></image>
</footnote>
</para>
<para>U<footnote spaces="\\n"><para>Some t
<image where="inline"><imagefile>in text in_footnote</imagefile></image>
</para>
</footnote>
</para>
<float identifier="g" type="F" number="1.1" spaces=" " endspaces=" "><floattype>F</floattype><floatname>g</floatname>

<image><imagefile>in_float</imagefile></image>

<caption><image><imagefile>in_caption</imagefile></image><para> PAra <image where="inline"><imagefile>in_caption_para</imagefile></image></para></caption>
</float>
</chapter>
';

1;
