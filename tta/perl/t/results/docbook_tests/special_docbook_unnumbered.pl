use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'special_docbook_unnumbered'} = '*document_root C11
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4|E6|E8|E10]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *paragraph C1
   {This is the top.\\n}
  {empty_line:\\n}
  *2 @menu C6 l6
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Dedication}
    |normalized:{Dedication}
     {Dedication}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{preface}
    |normalized:{preface}
     {preface}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{colophon}
    |normalized:{colophon}
     {colophon}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{acknowledgements}
    |normalized:{acknowledgements}
     {acknowledgements}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l11
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
 *3 @node C1 l13 {Dedication}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{Dedication}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Dedication}
 *4 @unnumbered C4 l14 {a dedication}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a dedication}
  {empty_line:\\n}
  *paragraph C1
   {Dedicated\\n}
  {empty_line:\\n}
 *5 @node C1 l18 {preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{3}
 |normalized:{preface}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {preface}
 *6 @unnumbered C4 l19 {The Preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {The Preface}
  {empty_line:\\n}
  *paragraph C1
   {Preface.\\n}
  {empty_line:\\n}
 *7 @node C1 l23 {colophon}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{4}
 |normalized:{colophon}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {colophon}
 *8 @unnumbered C4 l24 {A colophon}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A colophon}
  {empty_line:\\n}
  *paragraph C1
   {Glossary\\n}
  {empty_line:\\n}
 *9 @node C1 l28 {acknowledgements}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{5}
 |normalized:{acknowledgements}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {acknowledgements}
 *10 @chapter C3 l29 {A chapter Acnkowledgements}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E8|up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A chapter Acnkowledgements}
  {empty_line:\\n}
  *paragraph C1
   {Ack!\\n}
';


$result_texis{'special_docbook_unnumbered'} = '@node Top
@top top

This is the top.

@menu
* Dedication::
* preface::
* colophon::
* acknowledgements::
@end menu

@node Dedication
@unnumbered a dedication

Dedicated

@node preface
@unnumbered The Preface

Preface.

@node colophon
@unnumbered A colophon

Glossary

@node acknowledgements
@chapter A chapter Acnkowledgements

Ack!
';


$result_texts{'special_docbook_unnumbered'} = 'top
***

This is the top.

* Dedication::
* preface::
* colophon::
* acknowledgements::

a dedication
************

Dedicated

The Preface
***********

Preface.

A colophon
**********

Glossary

1 A chapter Acnkowledgements
****************************

Ack!
';

$result_errors{'special_docbook_unnumbered'} = [];


$result_nodes_list{'special_docbook_unnumbered'} = '1|Top
 associated_section: top
 associated_title_command: top
 menus:
  Dedication
  preface
  colophon
  acknowledgements
 node_directions:
  next->Dedication
2|Dedication
 associated_section: a dedication
 associated_title_command: a dedication
 menu_directions:
  next->preface
  up->Top
 node_directions:
  next->preface
  prev->Top
  up->Top
3|preface
 associated_section: The Preface
 associated_title_command: The Preface
 menu_directions:
  next->colophon
  prev->Dedication
  up->Top
 node_directions:
  next->colophon
  prev->Dedication
  up->Top
4|colophon
 associated_section: A colophon
 associated_title_command: A colophon
 menu_directions:
  next->acknowledgements
  prev->preface
  up->Top
 node_directions:
  next->acknowledgements
  prev->preface
  up->Top
5|acknowledgements
 associated_section: 1 A chapter Acnkowledgements
 associated_title_command: 1 A chapter Acnkowledgements
 menu_directions:
  prev->colophon
  up->Top
 node_directions:
  prev->colophon
  up->Top
';

$result_sections_list{'special_docbook_unnumbered'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
2|a dedication
 associated_anchor_command: Dedication
 associated_node: Dedication
3|The Preface
 associated_anchor_command: preface
 associated_node: preface
4|A colophon
 associated_anchor_command: colophon
 associated_node: colophon
5|A chapter Acnkowledgements
 associated_anchor_command: acknowledgements
 associated_node: acknowledgements
';

$result_headings_list{'special_docbook_unnumbered'} = '';


$result_converted{'docbook'}->{'special_docbook_unnumbered'} = '<dedication id="Dedication">
<title>a dedication</title>

<para>Dedicated
</para>
</dedication>
<preface id="preface">
<title>The Preface</title>

<para>Preface.
</para>
</preface>
<colophon id="colophon">
<title>A colophon</title>

<para>Glossary
</para>
</colophon>
<chapter label="1" id="acknowledgements">
<title>A chapter Acnkowledgements</title>

<para>Ack!
</para></chapter>
';

1;
