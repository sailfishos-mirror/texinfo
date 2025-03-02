use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'codequoteundirected_codequotebacktick'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C8
   *0 @macro C8 l1
   |EXTRA
   |macro_name:{quotes}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: quotes\\n}
    {raw:``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*\\n}
    {raw:code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*\\n}
    {raw:asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*\\n}
    {raw:strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*\\n}
    {raw:kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*\\n}
    {raw:samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*\\n}
    *@end C1 l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {macro}
   {empty_line:\\n}
   *1 @macro C19 l10
   |EXTRA
   |macro_name:{allquotes}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: allquotes\\n}
    {raw:@quotes{}\\n}
    {raw:\\n}
    {raw:@example\\n}
    {raw:@@codequoteundirected on\\n}
    {raw:@@codequotebacktick on\\n}
    {raw:@end example\\n}
    {raw:@codequoteundirected\\n}
    {raw:@codequotebacktick\\n}
    {raw:@quotes{}\\n}
    {raw:\\n}
    {raw:@example\\n}
    {raw:@@codequoteundirected off\\n}
    {raw:@@codequotebacktick off\\n}
    {raw:@end example\\n}
    {raw:@codequoteundirected off\\n}
    {raw:@codequotebacktick off\\n}
    {raw:@quotes{}\\n}
    *@end C1 l28
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{macro}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {macro}
   {empty_line:\\n}
   *2 @copying C13 l30
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C30
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     >SOURCEMARKS
     >macro_expansion<start;1>
      >*macro_call C1
      >|INFO
      >|command_name:{allquotes}
       >*brace_arg
     >macro_expansion<start;2>
      >*macro_call C1
      >|INFO
      >|command_name:{quotes}
       >*brace_arg
     *3 @quotedblleft C1 l31:@quotes
      *brace_container
     { }
     *@*
     {\\n}
     {code: }
     *4 @code C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *5 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {asis: }
     *6 @asis C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *7 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {strong: }
     *8 @strong C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *9 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {kbd: }
     *10 @kbd C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *11 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {samp: }
     *12 @samp C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *13 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     >SOURCEMARKS
     >macro_expansion<end;2>
     {\\n}
    {empty_line:\\n}
    *14 @example C3 l31:@allquotes
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *preformatted C4
      *@@
      {codequoteundirected on\\n}
      *@@
      {codequotebacktick on\\n}
     *@end C1 l31:@allquotes
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
    *@codequoteundirected C1 l31:@allquotes
    |EXTRA
    |global_command_number:{1}
     *line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@codequotebacktick C1 l31:@allquotes
    |EXTRA
    |global_command_number:{1}
     *line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C30
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     >SOURCEMARKS
     >macro_expansion<start;3>
      >*macro_call C1
      >|INFO
      >|command_name:{quotes}
       >*brace_arg
     *15 @quotedblleft C1 l31:@quotes
      *brace_container
     { }
     *@*
     {\\n}
     {code: }
     *16 @code C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *17 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {asis: }
     *18 @asis C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *19 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {strong: }
     *20 @strong C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *21 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {kbd: }
     *22 @kbd C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *23 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {samp: }
     *24 @samp C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *25 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     >SOURCEMARKS
     >macro_expansion<end;3>
     {\\n}
    {empty_line:\\n}
    *26 @example C3 l31:@allquotes
     *arguments_line C1
      *block_line_arg
      |INFO
      |spaces_after_argument:
       |{\\n}
     *preformatted C4
      *@@
      {codequoteundirected off\\n}
      *@@
      {codequotebacktick off\\n}
     *@end C1 l31:@allquotes
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
    *@codequoteundirected C1 l31:@allquotes
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{2}
    |misc_args:A{off}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {off}
    *@codequotebacktick C1 l31:@allquotes
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{2}
    |misc_args:A{off}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {off}
    *paragraph C30
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     >SOURCEMARKS
     >macro_expansion<start;4>
      >*macro_call C1
      >|INFO
      >|command_name:{quotes}
       >*brace_arg
     *27 @quotedblleft C1 l31:@quotes
      *brace_container
     { }
     *@*
     {\\n}
     {code: }
     *28 @code C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *29 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {asis: }
     *30 @asis C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *31 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {strong: }
     *32 @strong C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *33 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {kbd: }
     *34 @kbd C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *35 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     {\\n}
     {samp: }
     *36 @samp C1 l31:@quotes
      *brace_container C2
       {``simple-double--three---four----\'\' `simple\' quotedblleft: }
       *37 @quotedblleft C1 l31:@quotes
        *brace_container
     { }
     *@*
     >SOURCEMARKS
     >macro_expansion<end;4>
     >macro_expansion<end;1>
     {\\n}
    *@end C1 l32
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
   *38 @titlepage C4 l33
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {Titlepage\\n}
    *@insertcopying C1 l35
    |EXTRA
    |global_command_number:{1}
     {rawline_arg:\\n}
    *@end C1 l36
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
   {empty_line:\\n}
 *39 @node C1 l39 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E40]
 |is_target:{1}
 |node_directions:D[next->E41]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    {Top}
 *40 @top C2 l40 {test quotes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E39]
 |section_childs:EC[E42]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E40]
  ||section_level:{-1}
 |toplevel_directions:D[next->E42]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {test quotes}
  {empty_line:\\n}
 *41 @node C1 l42 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E42]
 |is_target:{1}
 |node_directions:D[prev->E39|up->E39]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *42 @chapter C16 l43 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E41]
 |section_directions:D[up->E40]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E40|up->E40]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C30
   {``simple-double--three---four----\'\' `simple\' quotedblleft: }
   >SOURCEMARKS
   >macro_expansion<start;5>
    >*macro_call C1
    >|INFO
    >|command_name:{allquotes}
     >*brace_arg
   >macro_expansion<start;6>
    >*macro_call C1
    >|INFO
    >|command_name:{quotes}
     >*brace_arg
   *43 @quotedblleft C1 l45:@quotes
    *brace_container
   { }
   *@*
   {\\n}
   {code: }
   *44 @code C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *45 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {asis: }
   *46 @asis C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *47 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {strong: }
   *48 @strong C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *49 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {kbd: }
   *50 @kbd C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *51 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {samp: }
   *52 @samp C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *53 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   >SOURCEMARKS
   >macro_expansion<end;6>
   {\\n}
  {empty_line:\\n}
  *54 @example C3 l45:@allquotes
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C4
    *@@
    {codequoteundirected on\\n}
    *@@
    {codequotebacktick on\\n}
   *@end C1 l45:@allquotes
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
  *@codequoteundirected C1 l45:@allquotes
  |EXTRA
  |global_command_number:{3}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  *@codequotebacktick C1 l45:@allquotes
  |EXTRA
  |global_command_number:{3}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  *paragraph C30
   {``simple-double--three---four----\'\' `simple\' quotedblleft: }
   >SOURCEMARKS
   >macro_expansion<start;7>
    >*macro_call C1
    >|INFO
    >|command_name:{quotes}
     >*brace_arg
   *55 @quotedblleft C1 l45:@quotes
    *brace_container
   { }
   *@*
   {\\n}
   {code: }
   *56 @code C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *57 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {asis: }
   *58 @asis C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *59 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {strong: }
   *60 @strong C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *61 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {kbd: }
   *62 @kbd C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *63 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {samp: }
   *64 @samp C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *65 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   >SOURCEMARKS
   >macro_expansion<end;7>
   {\\n}
  {empty_line:\\n}
  *66 @example C3 l45:@allquotes
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C4
    *@@
    {codequoteundirected off\\n}
    *@@
    {codequotebacktick off\\n}
   *@end C1 l45:@allquotes
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
  *@codequoteundirected C1 l45:@allquotes
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  *@codequotebacktick C1 l45:@allquotes
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  *paragraph C30
   {``simple-double--three---four----\'\' `simple\' quotedblleft: }
   >SOURCEMARKS
   >macro_expansion<start;8>
    >*macro_call C1
    >|INFO
    >|command_name:{quotes}
     >*brace_arg
   *67 @quotedblleft C1 l45:@quotes
    *brace_container
   { }
   *@*
   {\\n}
   {code: }
   *68 @code C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *69 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {asis: }
   *70 @asis C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *71 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {strong: }
   *72 @strong C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *73 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {kbd: }
   *74 @kbd C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *75 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   {\\n}
   {samp: }
   *76 @samp C1 l45:@quotes
    *brace_container C2
     {``simple-double--three---four----\'\' `simple\' quotedblleft: }
     *77 @quotedblleft C1 l45:@quotes
      *brace_container
   { }
   *@*
   >SOURCEMARKS
   >macro_expansion<end;8>
   >macro_expansion<end;5>
   {\\n}
  {empty_line:\\n}
  *78 @example C7 l47
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C31
    {``simple-double--three---four----\'\' `simple\' quotedblleft: }
    >SOURCEMARKS
    >macro_expansion<start;9>
     >*macro_call C1
     >|INFO
     >|command_name:{allquotes}
      >*brace_arg
    >macro_expansion<start;10>
     >*macro_call C1
     >|INFO
     >|command_name:{quotes}
      >*brace_arg
    *79 @quotedblleft C1 l48:@quotes
     *brace_container
    { }
    *@*
    {\\n}
    {code: }
    *80 @code C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *81 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {asis: }
    *82 @asis C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *83 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {strong: }
    *84 @strong C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *85 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {kbd: }
    *86 @kbd C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *87 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {samp: }
    *88 @samp C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *89 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    >SOURCEMARKS
    >macro_expansion<end;10>
    {\\n}
    {empty_line:\\n}
   *90 @example C3 l48:@allquotes
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C4
     *@@
     {codequoteundirected on\\n}
     *@@
     {codequotebacktick on\\n}
    *@end C1 l48:@allquotes
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
   *preformatted C33
    *@codequoteundirected C1 l48:@allquotes
    |EXTRA
    |global_command_number:{5}
     *line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *@codequotebacktick C1 l48:@allquotes
    |EXTRA
    |global_command_number:{5}
     *line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    {``simple-double--three---four----\'\' `simple\' quotedblleft: }
    >SOURCEMARKS
    >macro_expansion<start;11>
     >*macro_call C1
     >|INFO
     >|command_name:{quotes}
      >*brace_arg
    *91 @quotedblleft C1 l48:@quotes
     *brace_container
    { }
    *@*
    {\\n}
    {code: }
    *92 @code C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *93 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {asis: }
    *94 @asis C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *95 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {strong: }
    *96 @strong C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *97 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {kbd: }
    *98 @kbd C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *99 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {samp: }
    *100 @samp C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *101 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    >SOURCEMARKS
    >macro_expansion<end;11>
    {\\n}
    {empty_line:\\n}
   *102 @example C3 l48:@allquotes
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C4
     *@@
     {codequoteundirected off\\n}
     *@@
     {codequotebacktick off\\n}
    *@end C1 l48:@allquotes
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
   *preformatted C32
    *@codequoteundirected C1 l48:@allquotes
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{6}
    |misc_args:A{off}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {off}
    *@codequotebacktick C1 l48:@allquotes
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |global_command_number:{6}
    |misc_args:A{off}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {off}
    {``simple-double--three---four----\'\' `simple\' quotedblleft: }
    >SOURCEMARKS
    >macro_expansion<start;12>
     >*macro_call C1
     >|INFO
     >|command_name:{quotes}
      >*brace_arg
    *103 @quotedblleft C1 l48:@quotes
     *brace_container
    { }
    *@*
    {\\n}
    {code: }
    *104 @code C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *105 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {asis: }
    *106 @asis C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *107 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {strong: }
    *108 @strong C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *109 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {kbd: }
    *110 @kbd C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *111 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    {\\n}
    {samp: }
    *112 @samp C1 l48:@quotes
     *brace_container C2
      {``simple-double--three---four----\'\' `simple\' quotedblleft: }
      *113 @quotedblleft C1 l48:@quotes
       *brace_container
    { }
    *@*
    >SOURCEMARKS
    >macro_expansion<end;12>
    >macro_expansion<end;9>
    {\\n}
   *@end C1 l49
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
';


$result_texis{'codequoteundirected_codequotebacktick'} = '@macro quotes
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end macro

@macro allquotes
@quotes{}

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
@quotes{}

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
@quotes{}
@end macro

@copying
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end copying
@titlepage
Titlepage
@insertcopying
@end titlepage


@node Top 
@top test quotes

@node chap
@chapter Chapter

``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
@end example

';


$result_texts{'codequoteundirected_codequotebacktick'} = '



test quotes
***********

1 Chapter
*********

"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected on
@codequotebacktick on
"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected off
@codequotebacktick off
"simple-double-three--four---" `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: "simple-double-three--four---" `simple\' quotedblleft: " 

strong: "simple-double-three--four---" `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected on
@codequotebacktick on
``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


@codequoteundirected off
@codequotebacktick off
``simple-double--three---four----\'\' `simple\' quotedblleft: " 

code: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

strong: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 

samp: ``simple-double--three---four----\'\' `simple\' quotedblleft: " 


';

$result_errors{'codequoteundirected_codequotebacktick'} = [
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'line_nr' => 31,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'line_nr' => 31,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'line_nr' => 45,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'line_nr' => 45,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequoteundirected missing argument (possibly involving @allquotes)
',
    'line_nr' => 48,
    'macro' => 'allquotes',
    'text' => '@codequoteundirected missing argument',
    'type' => 'error'
  },
  {
    'error_line' => '@codequotebacktick missing argument (possibly involving @allquotes)
',
    'line_nr' => 48,
    'macro' => 'allquotes',
    'text' => '@codequotebacktick missing argument',
    'type' => 'error'
  }
];


$result_floats{'codequoteundirected_codequotebacktick'} = {};



$result_converted{'plaintext'}->{'codequoteundirected_codequotebacktick'} = 'test quotes
***********

1 Chapter
*********

"simple-double-three--four---" \'simple\' quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: "simple-double-three--four---" \'simple\' quotedblleft: “
strong: *"simple-double-three--four---" \'simple\' quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     @codequoteundirected on
     @codequotebacktick on
   "simple-double-three--four---" \'simple\' quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: "simple-double-three--four---" \'simple\' quotedblleft: “
strong: *"simple-double-three--four---" \'simple\' quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     @codequoteundirected off
     @codequotebacktick off
   "simple-double-three--four---" \'simple\' quotedblleft: “
code: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
asis: "simple-double-three--four---" \'simple\' quotedblleft: “
strong: *"simple-double-three--four---" \'simple\' quotedblleft: “*
kbd: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’
samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’


          @codequoteundirected on
          @codequotebacktick on
     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’


          @codequoteundirected off
          @codequotebacktick off
     ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     code: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     strong: *``simple-double--three---four----\'\' `simple\' quotedblleft: “*

     kbd: ``simple-double--three---four----\'\' `simple\' quotedblleft: “

     samp: ‘``simple-double--three---four----\'\' `simple\' quotedblleft: “’

';


$result_converted{'html_text'}->{'codequoteundirected_codequotebacktick'} = '



<div class="top-level-extent" id="Top">
<h1 class="top" id="test-quotes"><span>test quotes<a class="copiable-link" href="#test-quotes"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">@codequoteundirected on
@codequotebacktick on
</pre></div>
<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">@codequoteundirected off
@codequotebacktick off
</pre></div>
<p>&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> <br>
asis: &ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo; <br>
strong: <strong class="strong">&ldquo;simple-double&ndash;three&mdash;four&mdash;-&rdquo; &lsquo;simple&rsquo; quotedblleft: &ldquo;</strong> <br>
kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> <br>
samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; <br>
</p>
<div class="example">
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 


</pre><div class="example">
<pre class="example-preformatted">@codequoteundirected on
@codequotebacktick on
</pre></div>
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 


</pre><div class="example">
<pre class="example-preformatted">@codequoteundirected off
@codequotebacktick off
</pre></div>
<pre class="example-preformatted">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

code: <code class="code">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; 

strong: <strong class="strong">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> 

kbd: <kbd class="kbd">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> 

samp: &lsquo;<samp class="samp">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp>&rsquo; 

</pre></div>

</div>
</div>
';


$result_converted{'latex'}->{'codequoteundirected_codequotebacktick'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% style command for kbd in \'cmd_text\' formatting context
\\newcommand\\Texinfocommandstyletextkbd[1]{{\\ttfamily\\textsl{#1}}}%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}


% used for substitutions in commands
\\newcommand{\\Texinfoplaceholder}[1]{}

\\newpagestyle{single}{\\sethead[\\chaptername{} \\thechapter{} \\chaptertitle{}][][\\thepage]
                              {\\chaptername{} \\thechapter{} \\chaptertitle{}}{}{\\thepage}}

% allow line breaking at underscore
\\let\\Texinfounderscore\\_
\\renewcommand{\\_}{\\Texinfounderscore\\discretionary{}{}{}}
\\renewcommand{\\includegraphics}[1]{\\fbox{FIG \\detokenize{#1}}}

\\makeatother
% set default for @setchapternewpage
\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%





\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
Titlepage
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected on
@codequotebacktick on
\\end{Texinfopreformatted}
\\end{Texinfoindented}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected off
@codequotebacktick off
\\end{Texinfopreformatted}
\\end{Texinfoindented}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\
\\endgroup
\\end{titlepage}
\\mainmatter
\\pagestyle{single}%
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected on
@codequotebacktick on
\\end{Texinfopreformatted}
\\end{Texinfoindented}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected off
@codequotebacktick off
\\end{Texinfopreformatted}
\\end{Texinfoindented}
``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
code: \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{} \\leavevmode{}\\\\
strong: \\textbf{``simple-double--three---four----\'\' `simple\' quotedblleft: \\textquotedblleft{}} \\leavevmode{}\\\\
kbd: \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}} \\leavevmode{}\\\\
samp: `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\' \\leavevmode{}\\\\

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\

\\end{Texinfopreformatted}
\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected on
@codequotebacktick on
\\end{Texinfopreformatted}
\\end{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\

\\end{Texinfopreformatted}
\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily @codequoteundirected off
@codequotebacktick off
\\end{Texinfopreformatted}
\\end{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
code:\\ \\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
asis:\\ {`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}\\ \\leavevmode{}\\\\
strong:\\ \\textbf{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
kbd:\\ \\Texinfocommandstyletextkbd{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\\ \\leavevmode{}\\\\
samp:\\ `\\texttt{{`}{`}simple-double{-}{-}three{-}{-}{-}four{-}{-}{-}-{\'}{\'} `simple\' quotedblleft:\\ \\textquotedblleft{}}\'\\ \\leavevmode{}\\\\
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\end{document}
';


$result_converted{'docbook_doc'}->{'codequoteundirected_codequotebacktick'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="en">
<title>test quotes</title>
<bookinfo><title>test quotes</title>
<legalnotice><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected on
@codequotebacktick on
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected off
@codequotebacktick off
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para></legalnotice></bookinfo>
<chapter label="1" id="chap">
<title>Chapter</title>

<para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected on
@codequotebacktick on
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>@codequoteundirected off
@codequotebacktick off
</screen><para>&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: &#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220; 

strong: <emphasis role="bold">&#8220;simple-double&#8211;three&#8212;four&#8212;-&#8221; &#8216;simple&#8217; quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</para>
<screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 


</screen><screen>@codequoteundirected on
@codequotebacktick on
</screen><screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 


</screen><screen>@codequoteundirected off
@codequotebacktick off
</screen><screen>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

code: <literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal> 

asis: ``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220; 

strong: <emphasis role="bold">``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</emphasis> 

kbd: <userinput>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</userinput> 

samp: &#8216;<literal>``simple-double--three---four----\'\' `simple\' quotedblleft: &#8220;</literal>&#8217; 

</screen>
</chapter>
</book>
';


$result_converted{'xml'}->{'codequoteundirected_codequotebacktick'} = '<macro name="quotes" line=" quotes" endspaces=" ">
``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{} @*
code: @code{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
asis: @asis{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
strong: @strong{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
kbd: @kbd{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
samp: @samp{``simple-double--three---four----\'\' `simple\' quotedblleft: @quotedblleft{}} @*
</macro>

<macro name="allquotes" line=" allquotes" endspaces=" ">
@quotes{}

@example
@@codequoteundirected on
@@codequotebacktick on
@end example
@codequoteundirected
@codequotebacktick
@quotes{}

@example
@@codequoteundirected off
@@codequotebacktick off
@end example
@codequoteundirected off
@codequotebacktick off
@quotes{}
</macro>

<copying endspaces=" ">
<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para>
<example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected on
&arobase;codequotebacktick on
</pre></example>
<codequoteundirected></codequoteundirected>
<codequotebacktick></codequotebacktick>
<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para>
<example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected off
&arobase;codequotebacktick off
</pre></example>
<codequoteundirected spaces=" " value="off" line="off"></codequoteundirected>
<codequotebacktick spaces=" " value="off" line="off"></codequotebacktick>
<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para></copying>
<titlepage endspaces=" ">
<para>Titlepage
</para><insertcopying></insertcopying>
</titlepage>


<node identifier="Top" spaces=" "><nodename trailingspaces=" ">Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>test quotes</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para>
<example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected on
&arobase;codequotebacktick on
</pre></example>
<codequoteundirected></codequoteundirected>
<codequotebacktick></codequotebacktick>
<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para>
<example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected off
&arobase;codequotebacktick off
</pre></example>
<codequoteundirected spaces=" " value="off" line="off"></codequoteundirected>
<codequotebacktick spaces=" " value="off" line="off"></codequotebacktick>
<para>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>&textldquo;simple-double&textndash;three&textmdash;four&textmdash;-&textrdquo; &textlsquo;simple&textrsquo; quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</para>
<example endspaces=" ">
<pre xml:space="preserve">``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;

</pre><example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected on
&arobase;codequotebacktick on
</pre></example>
<pre xml:space="preserve"><codequoteundirected></codequoteundirected>
<codequotebacktick></codequotebacktick>
``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;

</pre><example endspaces=" ">
<pre xml:space="preserve">&arobase;codequoteundirected off
&arobase;codequotebacktick off
</pre></example>
<pre xml:space="preserve"><codequoteundirected spaces=" " value="off" line="off"></codequoteundirected>
<codequotebacktick spaces=" " value="off" line="off"></codequotebacktick>
``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo; &linebreak;
code: <code>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</code> &linebreak;
asis: <asis>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</asis> &linebreak;
strong: <strong>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</strong> &linebreak;
kbd: <kbd>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</kbd> &linebreak;
samp: <samp>``simple-double--three---four----\'\' `simple\' quotedblleft: &ldquo;</samp> &linebreak;
</pre></example>

</chapter>
';

1;
