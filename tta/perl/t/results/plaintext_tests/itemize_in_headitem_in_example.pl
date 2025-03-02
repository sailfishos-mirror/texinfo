use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'itemize_in_headitem_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C10 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @itemize C3 l2
   |EXTRA
   |command_as_argument:[E2]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *2 @bullet
      |INFO
      |inserted:{1}
    *before_item C1
     *preformatted C2
      {ignorable_spaces_after_command: }
      {a \\n}
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
   *preformatted C1
    {empty_line:\\n}
   *3 @itemize C3 l6
   |EXTRA
   |command_as_argument:[E4]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *4 @bullet
      |INFO
      |inserted:{1}
    *@item C2 l7
    |EXTRA
    |item_number:{1}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {bbb\\n}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {ccc\\n}
    *@end C1 l9
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
   *preformatted C1
    {empty_line:\\n}
   *5 @itemize C4 l11
   |EXTRA
   |command_as_argument:[E6]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *6 @bullet
      |INFO
      |inserted:{1}
    *before_item C1
     *preformatted C2
      {ignorable_spaces_after_command: }
      {ddd\\n}
    *@item C1 l13
    |EXTRA
    |item_number:{1}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {eee\\n}
    *@end C1 l14
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
   *preformatted C1
    {empty_line:\\n}
   *7 @itemize C4 l16
   |EXTRA
   |command_as_argument:[E8]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *8 @bullet
      |INFO
      |inserted:{1}
    *@item C2 l17
    |EXTRA
    |item_number:{1}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {fff\\n}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {ggg\\n}
    *@item C1 l19
    |EXTRA
    |item_number:{2}
     *preformatted C2
      {ignorable_spaces_after_command: }
      {hhh\\n}
    *@end C1 l20
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
   *preformatted C1
    {empty_line:\\n}
   *@end C1 l22
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
';


$result_texis{'itemize_in_headitem_in_example'} = '@example
@itemize
 a 
@end itemize

@itemize
@item bbb
 ccc
@end itemize

@itemize
 ddd
@item eee
@end itemize

@itemize
@item fff
 ggg
@item hhh
@end itemize

@end example
';


$result_texts{'itemize_in_headitem_in_example'} = 'a 

bbb
ccc

ddd
eee

fff
ggg
hhh

';

$result_errors{'itemize_in_headitem_in_example'} = [
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 3,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @itemize has text but no @item
',
    'line_nr' => 2,
    'text' => '@itemize has text but no @item',
    'type' => 'warning'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 8,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 12,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  },
  {
    'error_line' => '@headitem not meaningful inside `@itemize\' block
',
    'line_nr' => 18,
    'text' => '@headitem not meaningful inside `@itemize\' block',
    'type' => 'error'
  }
];


$result_floats{'itemize_in_headitem_in_example'} = {};



$result_converted{'plaintext'}->{'itemize_in_headitem_in_example'} = '          a

        • bbb
          ccc

          ddd
        • eee

        • fff
          ggg
        • hhh

';

1;
