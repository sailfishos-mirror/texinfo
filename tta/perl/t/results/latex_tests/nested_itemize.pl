use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'nested_itemize'} = '*document_root C1
 *before_node_section C3
  *preamble_before_content
  *0 @itemize C5 l1
  |EXTRA
  |command_as_argument:[E1]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *1 @bullet
     |INFO
     |inserted:{1}
   *before_item C1
    {spaces_before_paragraph:   }
   *@item C2 l2
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C2
     {First level item\\n}
     {   }
   *@item C3 l3
   |EXTRA
   |item_number:{2}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {First level item\\n}
    *2 @itemize C5 l4
    |EXTRA
    |command_as_argument:[E3]
     *arguments_line C1
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *3 @bullet
       |INFO
       |inserted:{1}
     *before_item C1
      {spaces_before_paragraph:     }
     *@item C2 l5
     |EXTRA
     |item_number:{1}
      {ignorable_spaces_after_command: }
      *paragraph C2
       {Second level item\\n}
       {     }
     *@item C3 l6
     |EXTRA
     |item_number:{2}
      {ignorable_spaces_after_command: }
      *paragraph C1
       {Second level item\\n}
      *4 @itemize C5 l7
      |EXTRA
      |command_as_argument:[E5]
       *arguments_line C1
        *block_line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         *5 @bullet
         |INFO
         |inserted:{1}
       *before_item C1
        {spaces_before_paragraph:       }
       *@item C2 l8
       |EXTRA
       |item_number:{1}
        {ignorable_spaces_after_command: }
        *paragraph C2
         {Third level item\\n}
         {       }
       *@item C3 l9
       |EXTRA
       |item_number:{2}
        {ignorable_spaces_after_command: }
        *paragraph C1
         {Third level item\\n}
        *6 @itemize C5 l10
        |EXTRA
        |command_as_argument:[E7]
         *arguments_line C1
          *block_line_arg C1
          |INFO
          |spaces_after_argument:
           |{\\n}
           *7 @bullet
           |INFO
           |inserted:{1}
         *before_item C1
          {spaces_before_paragraph:         }
         *@item C2 l11
         |EXTRA
         |item_number:{1}
          {ignorable_spaces_after_command: }
          *paragraph C2
           {Fourth level item\\n}
           {         }
         *@item C2 l12
         |EXTRA
         |item_number:{2}
          {ignorable_spaces_after_command: }
          *paragraph C1
           {Fourth level item\\n}
         *@end C1 l13
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
   *@end C1 l16
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
';


$result_texis{'nested_itemize'} = '@itemize
   @item First level item
   @item First level item
@itemize
     @item Second level item
     @item Second level item
@itemize
       @item Third level item
       @item Third level item
@itemize
         @item Fourth level item
         @item Fourth level item
@end itemize
@end itemize
@end itemize
@end itemize

';


$result_texts{'nested_itemize'} = 'First level item
   First level item
Second level item
     Second level item
Third level item
       Third level item
Fourth level item
         Fourth level item

';

$result_errors{'nested_itemize'} = [];



$result_converted{'latex_text'}->{'nested_itemize'} = '\\begin{document}
\\begin{itemize}
   \\item First level item
   \\item First level item
\\begin{itemize}
     \\item Second level item
     \\item Second level item
\\begin{itemize}
       \\item Third level item
       \\item Third level item
\\begin{itemize}
         \\item Fourth level item
         \\item Fourth level item
\\end{itemize}
\\end{itemize}
\\end{itemize}
\\end{itemize}

';

1;
