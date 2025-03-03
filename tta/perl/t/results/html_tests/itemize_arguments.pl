use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'itemize_arguments'} = '*document_root C1
 *before_node_section C77
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
  *0 @itemize C3 l2
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {---}
   *@item C2 l3
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item ---\\n}
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
  {empty_line:\\n}
  *1 @itemize C3 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a\'\'b\'c}
   *@item C2 l7
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item a\'\'b\'c\\n}
   *@end C1 l8
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
  *2 @itemize C3 l10
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *3 @code C1 l10
      *brace_container C1
       {a\'\'b\'c}
   *@item C2 l11
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item code }
     *4 @code C1 l11
      *brace_container C1
       {a\'\'b\'c}
     {\\n}
   *@end C1 l12
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
  *5 @itemize C3 l14
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a``b`c}
   *@item C2 l15
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item a``b`c\\n}
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
  *6 @itemize C3 l18
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {a\'"}
   *@item C2 l19
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item a\'"\\n}
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
  {empty_line:\\n}
  *7 @itemize C3 l22
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {b\\<&}
   *@item C2 l23
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item b\\<&\\n}
   *@end C1 l24
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
  *8 @itemize C3 l26
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E9]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *9 @today l26
   *@item C2 l27
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item today }
     *10 @today C1 l27
      *brace_container
     {\\n}
   *@end C1 l28
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
  *11 @itemize C3 l30
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *12 @aa C1 l30
      *brace_container
     { }
     *13 @sc C1 l30
      *brace_container C1
       *14 @aa C1 l30
        *brace_container
   *@item C2 l31
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C5
     {item aa }
     *15 @aa C1 l31
      *brace_container
     { }
     *16 @sc C1 l31
      *brace_container C1
       *17 @aa C1 l31
        *brace_container
     {\\n}
   *@end C1 l32
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
  *18 @itemize C3 l34
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E19]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *19 @tie C1 l34
      *brace_container
   *@item C2 l35
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item tie }
     *20 @tie C1 l35
      *brace_container
     {\\n}
   *@end C1 l36
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
  *21 @itemize C3 l38
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *22 @tie C1 l38
      *brace_container
     { a}
   *@item C2 l39
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item tie }
     *23 @tie C1 l39
      *brace_container
     { a\\n}
   *@end C1 l40
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
  *24 @itemize C3 l42
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E25]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *25 @atchar l42
   *@item C2 l43
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C1
     {item atchar\\n}
   *@end C1 l44
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
  *26 @itemize C3 l46
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *27 @atchar C1 l46
      *brace_container
     { a}
   *@item C2 l47
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item atchar }
     *28 @atchar C1 l47
      *brace_container
     { a\\n}
   *@end C1 l48
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
  *29 @itemize C3 l50
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@*
   *@item C2 l51
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item * }
     *@*
     {\\n}
   *@end C1 l52
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
  *30 @itemize C3 l54
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@{
   *@item C2 l55
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *@{
     {\\n}
   *@end C1 l56
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
  *31 @itemize C3 l58
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@&
   *@item C2 l59
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *@&
     {\\n}
   *@end C1 l60
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
  *32 @itemize C3 l62
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E33]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *33 @ampchar l62
   *@item C2 l63
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *34 @ampchar C1 l63
      *brace_container
     {\\n}
   *@end C1 l64
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
  *35 @itemize C3 l66
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *@&
     { a}
   *@item C2 l67
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *@&
     { a\\n}
   *@end C1 l68
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
  *36 @itemize C3 l70
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *37 @ampchar C1 l70
      *brace_container
     { a}
   *@item C2 l71
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item }
     *38 @ampchar C1 l71
      *brace_container
     { a\\n}
   *@end C1 l72
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
  *39 @itemize C3 l74
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E40]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *40 @registeredsymbol C1 l74
      *brace_container
   *@item C2 l75
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item registeredsymbol }
     *41 @registeredsymbol C1 l75
      *brace_container
     {\\n}
   *@end C1 l76
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
  *42 @itemize C3 l78
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *43 @registeredsymbol C1 l78
      *brace_container
     { a}
   *@item C2 l79
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item registeredsymbol }
     *44 @registeredsymbol C1 l79
      *brace_container
     { a\\n}
   *@end C1 l80
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
  *45 @itemize C3 l82
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E46]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *46 @enddots C1 l82
      *brace_container
   *@item C2 l83
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item dots }
     *47 @enddots C1 l83
      *brace_container
     {\\n}
   *@end C1 l84
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
  *48 @itemize C3 l86
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *49 @enddots C1 l86
      *brace_container
     { a}
   *@item C2 l87
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item dots }
     *50 @enddots C1 l87
      *brace_container
     { a\\n}
   *@end C1 l88
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
  *51 @itemize C3 l90
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *52 @^ C1 l90
      *following_arg C1
       {e}
     { }
     *53 @sc C1 l90
      *brace_container C1
       *54 @^ C1 l90
        *following_arg C1
         {e}
   *@item C2 l91
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C5
     {item e }
     *55 @^ C1 l91
      *following_arg C1
       {e}
     { }
     *56 @sc C1 l91
      *brace_container C1
       *57 @^ C1 l91
        *following_arg C1
         {e}
     {\\n}
   *@end C1 l92
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
  *58 @itemize C3 l94
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *59 @^ C1 l94
      *following_arg C1
       {E}
     { }
     *60 @sc C1 l94
      *brace_container C1
       *61 @^ C1 l94
        *following_arg C1
         {E}
   *@item C2 l95
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C5
     {item E }
     *62 @^ C1 l95
      *following_arg C1
       {E}
     { }
     *63 @sc C1 l95
      *brace_container C1
       *64 @^ C1 l95
        *following_arg C1
         {E}
     {\\n}
   *@end C1 l96
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
  *65 @itemize C3 l98
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *66 @~ C1 l98
      *brace_container C1
       *67 @dotless C1 l98
        *brace_container C1
         {i}
     { }
     *68 @dotless C1 l98
      *brace_container C1
       {i}
     { }
     *69 @sc C1 l98
      *brace_container C3
       *70 @~ C1 l98
        *brace_container C1
         *71 @dotless C1 l98
          *brace_container C1
           {i}
       { }
       *72 @dotless C1 l98
        *brace_container C1
         {i}
   *@item C2 l99
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C7
     {item dotless }
     *73 @~ C1 l99
      *brace_container C1
       *74 @dotless C1 l99
        *brace_container C1
         {i}
     { }
     *75 @dotless C1 l99
      *brace_container C1
       {i}
     { }
     *76 @sc C1 l99
      *brace_container C3
       *77 @~ C1 l99
        *brace_container C1
         *78 @dotless C1 l99
          *brace_container C1
           {i}
       { }
       *79 @dotless C1 l99
        *brace_container C1
         {i}
     {\\n}
   *@end C1 l100
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
  *80 @itemize C3 l102
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *81 @udotaccent C1 l102
      *brace_container C1
       {r}
     { }
     *82 @v C1 l102
      *brace_container C1
       *83 @\' C1 l102
        *brace_container C1
         {r}
     { }
     *84 @sc C1 l102
      *brace_container C3
       *85 @udotaccent C1 l102
        *brace_container C1
         {r}
       { }
       *86 @v C1 l102
        *brace_container C1
         *87 @\' C1 l102
          *brace_container C1
           {r}
   *@item C2 l103
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C7
     {item complex a }
     *88 @udotaccent C1 l103
      *brace_container C1
       {r}
     { }
     *89 @v C1 l103
      *brace_container C1
       *90 @\' C1 l103
        *brace_container C1
         {r}
     { }
     *91 @sc C1 l103
      *brace_container C3
       *92 @udotaccent C1 l103
        *brace_container C1
         {r}
       { }
       *93 @v C1 l103
        *brace_container C1
         *94 @\' C1 l103
          *brace_container C1
           {r}
     {\\n}
   *@end C1 l104
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
  *95 @itemize C3 l106
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *96 @= C1 l106
      *brace_container C1
       *97 @, C1 l106
        *brace_container C1
         *98 @~ C1 l106
          *brace_container C1
           {n}
     { }
     *99 @sc C1 l106
      *brace_container C2
       { }
       *100 @= C1 l106
        *brace_container C1
         *101 @, C1 l106
          *brace_container C1
           *102 @~ C1 l106
            *brace_container C1
             {n}
   *@item C2 l107
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C5
     {item complex n }
     *103 @= C1 l107
      *brace_container C1
       *104 @, C1 l107
        *brace_container C1
         *105 @~ C1 l107
          *brace_container C1
           {n}
     { }
     *106 @sc C1 l107
      *brace_container C2
       { }
       *107 @= C1 l107
        *brace_container C1
         *108 @, C1 l107
          *brace_container C1
           *109 @~ C1 l107
            *brace_container C1
             {n}
     {\\n}
   *@end C1 l108
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
  *110 @itemize C3 l110
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E111]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *111 @asis l110
   *@item C2 l111
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item asis }
     *112 @asis C1 l111
      *brace_container
     {\\n}
   *@end C1 l112
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
  *113 @itemize C3 l114
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E114]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *114 @click C1 l114
     |EXTRA
     |clickstyle:{arrow}
      *brace_container
   *@item C2 l115
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item click }
     *115 @click C1 l115
     |EXTRA
     |clickstyle:{arrow}
      *brace_container
     {\\n}
   *@end C1 l116
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
  *116 @itemize C3 l118
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *117 @click C1 l118
     |EXTRA
     |clickstyle:{arrow}
      *brace_container
     { a}
   *@item C2 l119
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item click }
     *118 @click C1 l119
     |EXTRA
     |clickstyle:{arrow}
      *brace_container
     { a\\n}
   *@end C1 l120
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
  *@clickstyle C1 l122
  |INFO
  |arg_line:{ @result\\n}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@result}
  {empty_line:\\n}
  *119 @itemize C3 l124
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E120]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *120 @click C1 l124
     |EXTRA
     |clickstyle:{result}
      *brace_container
   *@item C2 l125
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item result click }
     *121 @click C1 l125
     |EXTRA
     |clickstyle:{result}
      *brace_container
     {\\n}
   *@end C1 l126
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
  *122 @itemize C3 l128
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *123 @click C1 l128
     |EXTRA
     |clickstyle:{result}
      *brace_container
     { a}
   *@item C2 l129
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item result click }
     *124 @click C1 l129
     |EXTRA
     |clickstyle:{result}
      *brace_container
     {\\n}
   *@end C1 l130
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
  *125 @itemize C3 l132
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E126]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *126 @error C1 l132
      *brace_container
   *@item C2 l133
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item error }
     *127 @error C1 l133
      *brace_container
     {\\n}
   *@end C1 l134
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
  *128 @itemize C3 l136
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *129 @error C1 l136
      *brace_container
     { a}
   *@item C2 l137
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item error }
     *130 @error C1 l137
      *brace_container
     { a\\n}
   *@end C1 l138
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
  *@documentlanguage C1 l140
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
  *131 @itemize C3 l141
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E132]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *132 @error C1 l141
      *brace_container
   *@item C2 l142
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item fr error }
     *133 @error C1 l142
      *brace_container
     {\\n}
   *@end C1 l143
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
  *134 @itemize C3 l145
  |INFO
  |spaces_before_argument:
   |{ }
   *arguments_line C1
    *block_line_arg C2
    |INFO
    |spaces_after_argument:
     |{\\n}
     *135 @error C1 l145
      *brace_container
     { a}
   *@item C2 l146
   |EXTRA
   |item_number:{1}
    {ignorable_spaces_after_command: }
    *paragraph C3
     {item fr error }
     *136 @error C1 l146
      *brace_container
     { a\\n}
   *@end C1 l147
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


$result_texis{'itemize_arguments'} = '
@itemize ---
@item item ---
@end itemize

@itemize a\'\'b\'c
@item item a\'\'b\'c
@end itemize

@itemize @code{a\'\'b\'c}
@item item code @code{a\'\'b\'c}
@end itemize

@itemize a``b`c
@item item a``b`c
@end itemize

@itemize a\'"
@item item a\'"
@end itemize

@itemize b\\<&
@item item b\\<&
@end itemize

@itemize @today
@item item today @today{}
@end itemize

@itemize @aa{} @sc{@aa{}}
@item item aa @aa{} @sc{@aa{}}
@end itemize

@itemize @tie{}
@item item tie @tie{}
@end itemize

@itemize @tie{} a
@item item tie @tie{} a
@end itemize

@itemize @atchar
@item item atchar
@end itemize

@itemize @atchar{} a
@item item atchar @atchar{} a
@end itemize

@itemize @*
@item item * @*
@end itemize

@itemize @{
@item item @{
@end itemize

@itemize @&
@item item @&
@end itemize

@itemize @ampchar
@item item @ampchar{}
@end itemize

@itemize @& a
@item item @& a
@end itemize

@itemize @ampchar{} a
@item item @ampchar{} a
@end itemize

@itemize @registeredsymbol{}
@item item registeredsymbol @registeredsymbol{}
@end itemize

@itemize @registeredsymbol{} a
@item item registeredsymbol @registeredsymbol{} a
@end itemize

@itemize @enddots{}
@item item dots @enddots{}
@end itemize

@itemize @enddots{} a
@item item dots @enddots{} a
@end itemize

@itemize @^e @sc{@^e}
@item item e @^e @sc{@^e}
@end itemize

@itemize @^E @sc{@^E}
@item item E @^E @sc{@^E}
@end itemize

@itemize @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@item item dotless @~{@dotless{i}} @dotless{i} @sc{@~{@dotless{i}} @dotless{i}}
@end itemize

@itemize @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@item item complex a @udotaccent{r} @v{@\'{r}} @sc{@udotaccent{r} @v{@\'{r}}}
@end itemize

@itemize @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@item item complex n @={@,{@~{n}}} @sc{ @={@,{@~{n}}}}
@end itemize

@itemize @asis
@item item asis @asis{}
@end itemize

@itemize @click{}
@item item click @click{}
@end itemize

@itemize @click{} a
@item item click @click{} a
@end itemize

@clickstyle @result

@itemize @click{}
@item item result click @click{}
@end itemize

@itemize @click{} a
@item item result click @click{}
@end itemize

@itemize @error{}
@item item error @error{}
@end itemize

@itemize @error{} a
@item item error @error{} a
@end itemize

@documentlanguage fr
@itemize @error{}
@item item fr error @error{}
@end itemize

@itemize @error{} a
@item item fr error @error{} a
@end itemize

';


$result_texts{'itemize_arguments'} = 'item --

item a"b\'c

item code a\'\'b\'c

item a"b`c

item a\'"

item b\\<&

item today a sunny day

item aa aa AA

item tie  

item tie   a

item atchar

item atchar @ a

item * 


item {

item &

item &

item & a

item & a

item registeredsymbol (R)

item registeredsymbol (R) a

item dots ...

item dots ... a

item e e^ E^

item E E^ E^

item dotless i~ i I~ I

item complex a .r r\'< .R R\'<

item complex n n~,=  N~,=

item asis 

item click ->

item click -> a


item result click =>

item result click =>

item error error-->

item error error--> a

item fr error error-->

item fr error error--> a

';

$result_errors{'itemize_arguments'} = [
  {
    'error_line' => 'warning: @asis expected braces
',
    'line_nr' => 110,
    'text' => '@asis expected braces',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_html'}->{'itemize_arguments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'itemize_arguments.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
