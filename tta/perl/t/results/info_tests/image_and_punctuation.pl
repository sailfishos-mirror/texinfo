use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_and_punctuation'} = '*document_root C2
 *before_node_section
 *0 @node C13 l1
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
  *paragraph C3
   {One space. }
   *1 @image C1 l3
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Two spaces.  }
   *2 @image C1 l5
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {End line.\\n}
   *3 @image C1 l8
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {One space. }
   *4 @image C1 l10
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {Two spaces.  }
   *5 @image C1 l12
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {End line.\\n}
   *6 @image C1 l15
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {words}
   {.\\n}
';


$result_texis{'image_and_punctuation'} = '@node Top

One space. @image{f--ile}.

Two spaces.  @image{f--ile}.

End line.
@image{f--ile}.

One space. @image{words}.

Two spaces.  @image{words}.

End line.
@image{words}.
';


$result_texts{'image_and_punctuation'} = '
One space. f--ile.

Two spaces.  f--ile.

End line.
f--ile.

One space. words.

Two spaces.  words.

End line.
words.
';

$result_nodes{'image_and_punctuation'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_and_punctuation'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_and_punctuation'} = [];


$result_floats{'image_and_punctuation'} = {};



$result_converted{'info'}->{'image_and_punctuation'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

One space.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   Two spaces.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   End line.   [image src="f--ile.png" text="Image description\\"\\"\\\\." ].

   One space.  This is an image words..

   Two spaces.  This is an image words..

   End line.  This is an image words..


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
