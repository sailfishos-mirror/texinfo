use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'line_passed_and_formats'} = '*document_root C2
 *before_node_section
 *0 @node C53 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E29]
 |node_directions:D[next->MISSING: (menu_entry_node)[C4]]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @quotation C4 l3
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {special}
   *paragraph C1
    {Quotation special.\\n}
   *2 @quotation C3 l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{ \\n}
    *paragraph C2
     {Nested quotation sdflkmsfdlkmfsdqmlkfsdq mlfdsqlkmfdsqmlkfdsq klm fsqdlkmfdsq\\n}
     {fdsfsdqmlkfsqd m lqlkmf qskmlfq sklm fqds\\n}
    *@end C1 l8
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
   *@end C1 l9
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
  *3 @quotation C4 l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {quotation  text\\n}
   *4 @example C3 l13
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {example in   quotation\\n}
    *@end C1 l15
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
   *@end C1 l16
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
  *5 @example C4 l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    { In  example.\\n}
   *6 @quotation C3 l20
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {   In quotation   in example\\n}
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
   *@end C1 l23
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
  *7 @example C3 l25
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {In 1 example\\n}
   *@end C1 l27
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
  *8 @example C3 l28
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {In 2 example\\n}
   *@end C1 l30
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
  *9 @quotation C3 l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {In 1 quotation\\n}
   *@end C1 l34
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
  *10 @quotation C3 l35
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {In 2 quotation\\n}
   *@end C1 l37
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
  *11 @quotation C5 l39
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *paragraph C1
    {Quotation\\n}
   *12 @quotation C3 l41
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{ \\n}
    *paragraph C1
     {Nested quotation\\n}
    *@end C1 l43
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
   *paragraph C1
    {Quotation 2\\n}
   *@end C1 l45
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
  *13 @example C5 l47
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {In  example.\\n}
   *14 @quotation C3 l49
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {In quotation   in example\\n}
    *@end C1 l51
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
   *preformatted C1
    {In  example 2.\\n}
   *@end C1 l53
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
  *15 @quotation C5 l55
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {quotation  text\\n}
   *16 @example C3 l57
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {example in   quotation\\n}
    *@end C1 l59
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
   *paragraph C1
    {quotation  text 2\\n}
   *@end C1 l61
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
  *paragraph C1
   {Before quotation\\n}
  *17 @quotation C3 l64
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {quotation  text\\n}
   *@end C1 l66
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
  *paragraph C1
   {after end\\n}
  {empty_line:\\n}
  *paragraph C1
   {Before example\\n}
  *18 @example C3 l70
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {In example\\n}
   *@end C1 l72
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
  *paragraph C1
   {After example\\n}
  {empty_line:\\n}
  *paragraph C1
   {Before quotation and empty line\\n}
  *19 @quotation C5 l76
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *paragraph C1
    {In quotation\\n}
   {empty_line:\\n}
   *@end C1 l80
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
  *paragraph C1
   {After quotation\\n}
  {empty_line:\\n}
  *paragraph C1
   {Before example and empty line\\n}
  *20 @example C3 l84
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C3
    {empty_line:\\n}
    {In example\\n}
    {empty_line:\\n}
   *@end C1 l88
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
  *paragraph C1
   {After example\\n}
  {empty_line:\\n}
  *paragraph C1
   {Nested and empty lines\\n}
  {empty_line:\\n}
  *paragraph C1
   {Quotation empty out, spaces inside\\n}
  *21 @quotation C5 l94
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *22 @quotation C5 l96
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {empty_line:\\n}
    *paragraph C1
     {In nested\\n}
    {empty_line:\\n}
    *@end C1 l100
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
   *@end C1 l102
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
  *paragraph C1
   {Quotation empty out, no spaces inside\\n}
  *23 @quotation C5 l105
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *24 @quotation C3 l107
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {In nested\\n}
    *@end C1 l109
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
   *@end C1 l111
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
  *paragraph C1
   {Example empty out, spaces inside\\n}
  *25 @example C5 l114
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {empty_line:\\n}
   *26 @example C3 l116
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C3
     {empty_line:\\n}
     {In nested\\n}
     {empty_line:\\n}
    *@end C1 l120
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
   *preformatted C1
    {empty_line:\\n}
   *@end C1 l122
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
  *paragraph C1
   {Example empty out, no spaces inside\\n}
  *27 @example C5 l125
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {empty_line:\\n}
   *28 @example C3 l127
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C1
     {In nested\\n}
    *@end C1 l129
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
   *preformatted C1
    {empty_line:\\n}
   *@end C1 l131
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
  *paragraph C1
   {menu\\n}
  *29 @menu C3 l134
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l135
    {menu_entry_leading_text:* }
    *menu_entry_node C4
    |EXTRA
    |manual_content:{manual}
    |node_content:{node}
    |normalized:{node}
     {(}
     {manual}
     {)}
     {node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l136
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
  *paragraph C1
   {end menu\\n}
';


$result_texis{'line_passed_and_formats'} = '@node Top

@quotation special
Quotation special.
@quotation 
Nested quotation sdflkmsfdlkmfsdqmlkfsdq mlfdsqlkmfdsqmlkfdsq klm fsqdlkmfdsq
fdsfsdqmlkfsqd m lqlkmf qskmlfq sklm fqds
@end quotation
@end quotation

@quotation
quotation  text
@example
example in   quotation
@end example
@end quotation

@example
 In  example.
@quotation
   In quotation   in example
@end quotation
@end example

@example
In 1 example
@end example
@example
In 2 example
@end example

@quotation
In 1 quotation
@end quotation
@quotation
In 2 quotation
@end quotation

@quotation 
Quotation
@quotation 
Nested quotation
@end quotation
Quotation 2
@end quotation

@example
In  example.
@quotation
In quotation   in example
@end quotation
In  example 2.
@end example

@quotation
quotation  text
@example
example in   quotation
@end example
quotation  text 2
@end quotation

Before quotation
@quotation
quotation  text
@end quotation
after end

Before example
@example
In example
@end example
After example

Before quotation and empty line
@quotation

In quotation

@end quotation
After quotation

Before example and empty line
@example

In example

@end example
After example

Nested and empty lines

Quotation empty out, spaces inside
@quotation

@quotation

In nested

@end quotation

@end quotation

Quotation empty out, no spaces inside
@quotation

@quotation
In nested
@end quotation

@end quotation

Example empty out, spaces inside
@example

@example

In nested

@end example

@end example

Example empty out, no spaces inside
@example

@example
In nested
@end example

@end example

menu
@menu
* (manual)node::
@end menu
end menu
';


$result_texts{'line_passed_and_formats'} = '
special
Quotation special.
Nested quotation sdflkmsfdlkmfsdqmlkfsdq mlfdsqlkmfdsqmlkfdsq klm fsqdlkmfdsq
fdsfsdqmlkfsqd m lqlkmf qskmlfq sklm fqds

quotation  text
example in   quotation

 In  example.
   In quotation   in example

In 1 example
In 2 example

In 1 quotation
In 2 quotation

Quotation
Nested quotation
Quotation 2

In  example.
In quotation   in example
In  example 2.

quotation  text
example in   quotation
quotation  text 2

Before quotation
quotation  text
after end

Before example
In example
After example

Before quotation and empty line

In quotation

After quotation

Before example and empty line

In example

After example

Nested and empty lines

Quotation empty out, spaces inside


In nested



Quotation empty out, no spaces inside

In nested


Example empty out, spaces inside


In nested



Example empty out, no spaces inside

In nested


menu
* (manual)node::
end menu
';

$result_nodes{'line_passed_and_formats'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => 'node'
          },
          'type' => 'menu_entry_node'
        }
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'line_passed_and_formats'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  }
];

$result_errors{'line_passed_and_formats'} = [];


$result_floats{'line_passed_and_formats'} = {};



$result_converted{'plaintext'}->{'line_passed_and_formats'} = '     special: Quotation special.
          Nested quotation sdflkmsfdlkmfsdqmlkfsdq mlfdsqlkmfdsqmlkfdsq
          klm fsqdlkmfdsq fdsfsdqmlkfsqd m lqlkmf qskmlfq sklm fqds

     quotation text
          example in   quotation

      In  example.
             In quotation   in example

     In 1 example
     In 2 example

     In 1 quotation
     In 2 quotation

     Quotation
          Nested quotation
     Quotation 2

     In  example.
          In quotation   in example
     In  example 2.

     quotation text
          example in   quotation
     quotation text 2

   Before quotation
     quotation text
   after end

   Before example
     In example
   After example

   Before quotation and empty line

     In quotation

   After quotation

   Before example and empty line

     In example

   After example

   Nested and empty lines

   Quotation empty out, spaces inside

          In nested

   Quotation empty out, no spaces inside

          In nested

   Example empty out, spaces inside


          In nested


   Example empty out, no spaces inside

          In nested

   menu
   end menu
';

1;
