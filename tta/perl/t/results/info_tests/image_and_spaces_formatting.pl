use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_and_spaces_formatting'} = '*document_root C2
 *before_node_section
 *0 @node C27 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *2 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *3 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *4 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *5 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *6 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  { }
  *7 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {words}
  {\\n}
  {empty_line:\\n}
  *paragraph C15
   {Some text }
   *8 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *9 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *10 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *11 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *12 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *13 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { }
   *14 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
  {empty_line:\\n}
  *paragraph C15
   {Some text }
   *15 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text aaaaaaaaa }
   *16 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text bbbbbbbbbbb }
   *17 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text ccccccccccccc }
   *18 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text ddddddddddddd }
   *19 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text eeeeeeeeeeeeeee }
   *20 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   { text fffffffffff }
   *21 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA }
   *22 @image C1 l9
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB }
   *23 @image C1 l11
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {\\n}
  {empty_line:\\n}
  *paragraph C5
   {Text. }
   *24 @image C1 l13
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {       }
   *25 @image C1 l13
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'image_and_spaces_formatting'} = '@node Top

@image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}

Some text @image{words} @image{words} @image{words} @image{words} @image{words} @image{words} @image{words}.

Some text @image{words} text aaaaaaaaa @image{words} text bbbbbbbbbbb @image{words} text ccccccccccccc @image{words} text ddddddddddddd @image{words} text eeeeeeeeeeeeeee @image{words} text fffffffffff @image{words}.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA @image{words}

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB @image{words}

Text. @image{words}       @image{words}.

';


$result_texts{'image_and_spaces_formatting'} = '
words words words words words words words

Some text words words words words words words words.

Some text words text aaaaaaaaa words text bbbbbbbbbbb words text ccccccccccccc words text ddddddddddddd words text eeeeeeeeeeeeeee words text fffffffffff words.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA words

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB words

Text. words       words.

';

$result_nodes{'image_and_spaces_formatting'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_and_spaces_formatting'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_and_spaces_formatting'} = [];


$result_floats{'image_and_spaces_formatting'} = {};



$result_converted{'info'}->{'image_and_spaces_formatting'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words.

Some text This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words. This is an image words..

   Some text This is an image words. text aaaaaaaaa This is an image words. text bbbbbbbbbbb This is an image words. text ccccccccccccc This is an image words. text
ddddddddddddd This is an image words. text eeeeeeeeeeeeeee This is an image words. text fffffffffff This is an image words..

   AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA This is an image words.

   AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABBBBBBBB
This is an image words.
   Text.  This is an image words.  This is an image words..


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
