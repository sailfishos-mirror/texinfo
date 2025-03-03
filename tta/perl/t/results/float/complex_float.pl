use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'complex_float'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E55]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C10 l2 {Test floats}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E56]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E56]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test floats}
  {empty_line:\\n}
  *paragraph C1
   {A list of floats at the beginning.\\n}
  *@listoffloats C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Text}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Text}
  {empty_line:\\n}
  *paragraph C1
   {After the listoffloats.\\n}
  *2 @menu C3 l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l9
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
   *@end C1 l10
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
  *3 @float C24 l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E22]
  |float_number:{1}
  |float_section:[E1]
  |float_type:{Text}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{text-with-a-lot-of-features}
  |shortcaption:[E44]
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {text with a lot of features}
   *paragraph C3
    {An example of float }
    *4 @enddots C1 l13
     *brace_container
    {\\n}
   {empty_line:\\n}
   *@c C1
   >SOURCEMARKS
   >ignored_conditional_block<1>
    >*@ifset C12 l16
    >|INFO
    >|spaces_before_argument:
     >|{ }
     >*arguments_line C1
      >*block_line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{texi2html}
     >{raw:An example.\\n}
     >{raw:@example \\n}
     >{raw:example\\n}
     >{raw:@end example\\n}
     >{raw:\\n}
     >{raw:A multitable.\\n}
     >{raw:@multitable {truc} {bidule}\\n}
     >{raw:@item truc @tab bidule\\n}
     >{raw:@item truc @tab bidule\\n}
     >{raw:@end multitable\\n}
     >*@end C1 l27
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifset}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifset}
    {rawline_arg: makeinfo --docbook segfaults\\n}
   {empty_line:\\n}
   *paragraph C2
    {An index entry\\n}
    *5 index_entry_command@cindex C1 l30
    |INFO
    |command_name:{cindex}
    |spaces_before_argument:
     |{ }
    |EXTRA
    |element_node:[E0]
    |index_entry:I{cp,1}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {float example}
   {empty_line:\\n}
   *paragraph C1
    {A table.\\n}
   *6 @table C3 l33
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |command_as_argument:[E7]
    *arguments_line C1
     *block_line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      *7 @emph l33
    *table_entry C2
     *table_term C1
      *@item C1 l34
      |INFO
      |spaces_before_argument:
       |{ }
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{ \\n}
        {truc}
     *table_definition C1
      *paragraph C1
       {line\\n}
    *@end C1 l36
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
   *paragraph C1
    {An itemize.\\n}
   *8 @itemize C3 l39
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
      *9 @minus l39
    *@item C2 l40
    |EXTRA
    |item_number:{1}
     {ignorable_spaces_after_command: }
     *paragraph C2
      {truc \\n}
      {line\\n}
    *@end C1 l42
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
   *paragraph C6
    {A ref.\\n}
    *10 @xref C2 l45
     *brace_arg C1
     |EXTRA
     |node_content:{Top}
     |normalized:{Top}
      {Top}
     *brace_arg C1
      {xref Text with features}
    {.\\n}
    {A footnote.\\n}
    *11 @footnote C1 l47
    |EXTRA
    |global_command_number:{1}
     *brace_command_context C1
      *paragraph C1
       {footnote Text with features}
    {.\\n}
   {empty_line:\\n}
   *paragraph C17
    *12 @TeX C1 l49
     *brace_container
    { and }
    *13 @emph C1 l49
     *brace_container C2
      *14 @b C1 l49
       *brace_container C3
        {t}
        *15 @\' C1 l49
         *following_arg C1
          {e}
        *16 @^ C1 l49
         *brace_container C1
          *17 @dotless C1 l49
           *brace_container C1
            {i}
      *18 @url C1 l49
       *brace_arg C1
        {an_url}
    { }
    *19 @sc C1 l49
     *brace_container C1
      {and}
    { }
    *20 @verb C1 l49
    |INFO
    |delimiter:{!}
     *brace_container C1
      {raw:it is @verb}
    { }
    *@ 
    {a wo}
    *@-
    {rd }
    *@!
    *@@
    { }
    *21 @AE C1 l49
     *brace_container
    {.\\n}
   {empty_line:\\n}
   *22 @caption C1 l51
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |float:[E3]
    *brace_command_context C19
     *paragraph C4
      {An example of float caption}
      *23 @enddots C1 l51
       *brace_container
      {\\n}
      {An example.\\n}
     *24 @example C3 l53
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{ \\n}
      *preformatted C1
       {example\\n}
      *@end C1 l55
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
     *25 @anchor C1 l57
     |EXTRA
     |is_target:{1}
     |normalized:{Anchor-in-caption}
      *brace_arg C1
       {Anchor in caption}
     {spaces_after_close_brace:\\n}
     {empty_line:\\n}
     *paragraph C1
      {A table.\\n}
     *26 @table C3 l60
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |command_as_argument:[E27]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *27 @emph l60
      *table_entry C2
       *table_term C1
        *@item C1 l61
        |INFO
        |spaces_before_argument:
         |{ }
         *line_arg C1
         |INFO
         |spaces_after_argument:
          |{ \\n}
          {truc}
       *table_definition C1
        *paragraph C1
         {line\\n}
      *@end C1 l63
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
     *paragraph C1
      {A multitable.\\n}
     *28 @multitable C3 l66
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |max_columns:{2}
      *arguments_line C1
       *block_line_arg C3
       |INFO
       |spaces_after_argument:
        |{\\n}
        *bracketed_arg C1 l66
         {truc}
        { }
        *bracketed_arg C1 l66
         {bidule}
      *multitable_body C2
       *row C2
       |EXTRA
       |row_number:{1}
        *@item C2 l67
        |EXTRA
        |cell_number:{1}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {truc }
        *@tab C2 l67
        |EXTRA
        |cell_number:{2}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {bidule\\n}
       *row C2
       |EXTRA
       |row_number:{2}
        *@item C2 l68
        |EXTRA
        |cell_number:{1}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {truc }
        *@tab C2 l68
        |EXTRA
        |cell_number:{2}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {bidule\\n}
      *@end C1 l69
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{multitable}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {multitable}
     *paragraph C2
      {An index entry\\n}
      *29 index_entry_command@cindex C1 l71
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |element_node:[E0]
      |index_entry:I{cp,2}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {float example in caption}
     {empty_line:\\n}
     *paragraph C1
      {An itemize.\\n}
     *30 @itemize C3 l74
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |command_as_argument:[E31]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *31 @minus l74
      *@item C2 l75
      |EXTRA
      |item_number:{1}
       {ignorable_spaces_after_command: }
       *paragraph C2
        {truc \\n}
        {line\\n}
      *@end C1 l77
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
     *paragraph C6
      {A ref.\\n}
      *32 @xref C2 l80
       *brace_arg C1
       |EXTRA
       |node_content:{Top}
       |normalized:{Top}
        {Top}
       *brace_arg C1
        {xref Text with features caption}
      {.\\n}
      {A footnote.\\n}
      *33 @footnote C1 l82
      |EXTRA
      |global_command_number:{2}
       *brace_command_context C1
        *paragraph C1
         {footnote Text with features caption}
      {.\\n}
     {empty_line:\\n}
     *paragraph C17
      *34 @TeX C1 l84
       *brace_container
      { and }
      *35 @emph C1 l84
       *brace_container C2
        *36 @b C1 l84
         *brace_container C3
          {t}
          *37 @\' C1 l84
           *following_arg C1
            {e}
          *38 @^ C1 l84
           *brace_container C1
            *39 @dotless C1 l84
             *brace_container C1
              {i}
        *40 @url C1 l84
         *brace_arg C1
          {an_url}
      { }
      *41 @sc C1 l84
       *brace_container C1
        {and}
      { }
      *42 @verb C1 l84
      |INFO
      |delimiter:{!}
       *brace_container C1
        {raw:it is @verb}
      { }
      *@ 
      {a wo}
      *@-
      {rd }
      *@!
      *@@
      { }
      *43 @AE C1 l84
       *brace_container
      {.\\n}
   {spaces_after_close_brace:\\n}
   {empty_line:\\n}
   *44 @shortcaption C1 l87
   |EXTRA
   |float:[E3]
    *brace_command_context C1
     *paragraph C17
      *45 @TeX C1 l87
       *brace_container
      { and }
      *46 @emph C1 l87
       *brace_container C2
        *47 @b C1 l87
         *brace_container C3
          {t}
          *48 @\' C1 l87
           *following_arg C1
            {e}
          *49 @^ C1 l87
           *brace_container C1
            *50 @dotless C1 l87
             *brace_container C1
              {i}
        *51 @url C1 l87
         *brace_arg C1
          {an_url}
      { }
      *52 @sc C1 l87
       *brace_container C1
        {and}
      { }
      *53 @verb C1 l87
      |INFO
      |delimiter:{!}
       *brace_container C1
        {raw:it is @verb}
      { }
      *@ 
      {a wo}
      *@-
      {rd }
      *@!
      *@@
      { }
      *54 @AE C1 l87
       *brace_container
      {.}
   {spaces_after_close_brace:\\n}
   {empty_line:\\n}
   *@end C1 l89
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
  {empty_line:\\n}
 *55 @node C1 l91 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E56]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *56 @chapter C6 l92 {A chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E55]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A chapter}
  {empty_line:\\n}
  *57 @float C8 l94
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E58]
  |float_number:{1.1}
  |float_section:[E56]
  |float_type:{Text}
  |global_command_number:{2}
  |is_target:{1}
  |normalized:{float-with-a-lot-of-features-and-no-shortcaption}
   *arguments_line C2
    *block_line_arg C1
     {Text}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {float with a lot of features and no shortcaption}
   {empty_line:\\n}
   *paragraph C1
    {Float text of a float with a lot of features.\\n}
   {empty_line:\\n}
   *58 @caption C1 l98
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |float:[E57]
    *brace_command_context C19
     *paragraph C4
      {An example of float caption}
      *59 @enddots C1 l98
       *brace_container
      { 2\\n}
      {An example 2.\\n}
     *60 @example C3 l100
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{ \\n}
      *preformatted C1
       {example 2\\n}
      *@end C1 l102
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
      {A table 2.\\n}
     *61 @table C3 l105
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |command_as_argument:[E62]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *62 @emph l105
      *table_entry C2
       *table_term C1
        *@item C1 l106
        |INFO
        |spaces_before_argument:
         |{ }
         *line_arg C1
         |INFO
         |spaces_after_argument:
          |{ \\n}
          {truc 2}
       *table_definition C1
        *paragraph C1
         {line 2\\n}
      *@end C1 l108
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
     *paragraph C1
      {A multitable 2.\\n}
     *63 @multitable C3 l111
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |max_columns:{2}
      *arguments_line C1
       *block_line_arg C3
       |INFO
       |spaces_after_argument:
        |{\\n}
        *bracketed_arg C1 l111
         {truc}
        { }
        *bracketed_arg C1 l111
         {bidule}
      *multitable_body C2
       *row C2
       |EXTRA
       |row_number:{1}
        *@item C2 l112
        |EXTRA
        |cell_number:{1}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {truc 2 }
        *@tab C2 l112
        |EXTRA
        |cell_number:{2}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {bidule\\n}
       *row C2
       |EXTRA
       |row_number:{2}
        *@item C2 l113
        |EXTRA
        |cell_number:{1}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {truc 2 }
        *@tab C2 l113
        |EXTRA
        |cell_number:{2}
         {ignorable_spaces_after_command: }
         *paragraph C1
          {bidule\\n}
      *@end C1 l114
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{multitable}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {multitable}
     *paragraph C2
      {An index entry 2\\n}
      *64 index_entry_command@cindex C1 l116
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |element_node:[E55]
      |index_entry:I{cp,3}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {float example in caption 2}
     {empty_line:\\n}
     *paragraph C1
      {An itemize 2.\\n}
     *65 @itemize C3 l119
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |command_as_argument:[E66]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *66 @minus l119
      *@item C2 l120
      |EXTRA
      |item_number:{1}
       {ignorable_spaces_after_command: }
       *paragraph C2
        {truc 2\\n}
        {line\\n}
      *@end C1 l122
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
     *67 @anchor C1 l124
     |EXTRA
     |is_target:{1}
     |normalized:{Anchor-in-caption-2}
      *brace_arg C1
       {Anchor in caption 2}
     {spaces_after_close_brace:\\n}
     {empty_line:\\n}
     *paragraph C6
      {A ref 2.\\n}
      *68 @xref C2 l127
       *brace_arg C1
       |EXTRA
       |node_content:{Top}
       |normalized:{Top}
        {Top}
       *brace_arg C1
        {xref Text with features caption}
      {.\\n}
      {A footnote 2.\\n}
      *69 @footnote C1 l129
      |EXTRA
      |global_command_number:{3}
       *brace_command_context C1
        *paragraph C1
         {footnote Text with features caption 2}
      {.\\n}
     {empty_line:\\n}
     *paragraph C17
      *70 @TeX C1 l131
       *brace_container
      { and }
      *71 @emph C1 l131
       *brace_container C2
        *72 @b C1 l131
         *brace_container C3
          {t}
          *73 @\' C1 l131
           *following_arg C1
            {e}
          *74 @^ C1 l131
           *brace_container C1
            *75 @dotless C1 l131
             *brace_container C1
              {i}
        *76 @url C1 l131
         *brace_arg C1
          {an_url}
      { }
      *77 @sc C1 l131
       *brace_container C1
        {and}
      { }
      *78 @verb C1 l131
      |INFO
      |delimiter:{!}
       *brace_container C1
        {raw:it is @verb}
      { }
      *@ 
      {a wo}
      *@-
      {rd }
      *@!
      *@@
      { }
      *79 @AE C1 l131
       *brace_container
      {.\\n}
   {spaces_after_close_brace:\\n}
   {empty_line:\\n}
   *@end C1 l134
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
  {empty_line:\\n}
  *paragraph C2
   *80 @xref C1 l136
    *brace_arg C1
    |EXTRA
    |node_content:{text with a lot of features}
    |normalized:{text-with-a-lot-of-features}
     {text with a lot of features}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'complex_float'} = '@node Top
@top Test floats

A list of floats at the beginning.
@listoffloats Text

After the listoffloats.
@menu
* chapter::
@end menu

@float Text, text with a lot of features
An example of float @enddots{}

@c makeinfo --docbook segfaults

An index entry
@cindex float example

A table.
@table @emph
@item truc 
line
@end table

An itemize.
@itemize @minus
@item truc 
line
@end itemize

A ref.
@xref{Top,xref Text with features}.
A footnote.
@footnote{footnote Text with features}.

@TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.

@caption{ An example of float caption@enddots{}
An example.
@example 
example
@end example

@anchor{Anchor in caption}

A table.
@table @emph
@item truc 
line
@end table

A multitable.
@multitable {truc} {bidule}
@item truc @tab bidule
@item truc @tab bidule
@end multitable
An index entry
@cindex float example in caption

An itemize.
@itemize @minus
@item truc 
line
@end itemize

A ref.
@xref{Top,xref Text with features caption}.
A footnote.
@footnote{footnote Text with features caption}.

@TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.
}

@shortcaption{@TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.}

@end float

@node chapter
@chapter A chapter

@float Text, float with a lot of features and no shortcaption

Float text of a float with a lot of features.

@caption{ An example of float caption@enddots{} 2
An example 2.
@example 
example 2
@end example

A table 2.
@table @emph
@item truc 2 
line 2
@end table

A multitable 2.
@multitable {truc} {bidule}
@item truc 2 @tab bidule
@item truc 2 @tab bidule
@end multitable
An index entry 2
@cindex float example in caption 2

An itemize 2.
@itemize @minus
@item truc 2
line
@end itemize

@anchor{Anchor in caption 2}

A ref 2.
@xref{Top,xref Text with features caption}.
A footnote 2.
@footnote{footnote Text with features caption 2}.

@TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.
}

@end float

@xref{text with a lot of features}.

';


$result_texts{'complex_float'} = 'Test floats
***********

A list of floats at the beginning.

After the listoffloats.
* chapter::

Text, text with a lot of features
An example of float ...


An index entry

A table.
truc
line

An itemize.
truc 
line

A ref.
Top.
A footnote.
.

TeX and te\'i^an_url AND it is @verb  a word !@ AE.




1 A chapter
***********

Text, float with a lot of features and no shortcaption

Float text of a float with a lot of features.



text with a lot of features.

';

$result_errors{'complex_float'} = [
  {
    'error_line' => 'warning: @verb should not appear anywhere inside @shortcaption
',
    'line_nr' => 87,
    'text' => '@verb should not appear anywhere inside @shortcaption',
    'type' => 'warning'
  }
];


$result_floats{'complex_float'} = 'Text: 2
 F1: {text-with-a-lot-of-features}
  S: @TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.
  C: An example of float caption@enddots{}
   An example.
   @example 
   example
   @end example
   
   @anchor{Anchor in caption}
   
   A table.
   @table @emph
   @item truc 
   line
   @end table
   
   A multitable.
   @multitable {truc} {bidule}
   @item truc @tab bidule
   @item truc @tab bidule
   @end multitable
   An index entry
   @cindex float example in caption
   
   An itemize.
   @itemize @minus
   @item truc 
   line
   @end itemize
   
   A ref.
   @xref{Top,xref Text with features caption}.
   A footnote.
   @footnote{footnote Text with features caption}.
   
   @TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.
 F1.1: {float-with-a-lot-of-features-and-no-shortcaption}
  C: An example of float caption@enddots{} 2
   An example 2.
   @example 
   example 2
   @end example
   
   A table 2.
   @table @emph
   @item truc 2 
   line 2
   @end table
   
   A multitable 2.
   @multitable {truc} {bidule}
   @item truc 2 @tab bidule
   @item truc 2 @tab bidule
   @end multitable
   An index entry 2
   @cindex float example in caption 2
   
   An itemize 2.
   @itemize @minus
   @item truc 2
   line
   @end itemize
   
   @anchor{Anchor in caption 2}
   
   A ref 2.
   @xref{Top,xref Text with features caption}.
   A footnote 2.
   @footnote{footnote Text with features caption 2}.
   
   @TeX{} and @emph{@b{t@\'e@^{@dotless{i}}}@url{an_url}} @sc{and} @verb{!it is @verb!} @ a wo@-rd @!@@ @AE{}.
';

$result_indices_sort_strings{'complex_float'} = {
  'cp' => [
    'float example',
    'float example in caption',
    'float example in caption 2'
  ]
};



$result_converted{'plaintext'}->{'complex_float'} = 'Test floats
***********

A list of floats at the beginning.

* Menu:

* Text 1: text with a lot of features.   TeX and _téî<an_url>_ AND
                                         it is @verb  a word !@ Æ.
* Text 1.1: float with a lot of features and no shortcaption.
                                         An example of float caption...
                                         2 An example 2.

   After the listoffloats.

An example of float ...

An index entry

A table.
_truc_
     line

An itemize.
   − truc line

A ref.  See xref Text with features: Top.  A footnote.  (1).

TeX and _téî<an_url>_ AND it is @verb  a word !@ Æ.

Text 1: An example of float caption...  An example.
     example

A table.
_truc_
     line

A multitable.
truc   bidule
truc   bidule
An index entry

An itemize.
   − truc line

A ref.  See xref Text with features caption: Top.  A footnote.  (2).

TeX and _téî<an_url>_ AND it is @verb  a word !@ Æ.

   ---------- Footnotes ----------

   (1) footnote Text with features

   (2) footnote Text with features caption

1 A chapter
***********

Float text of a float with a lot of features.

Text 1.1: An example of float caption...  2 An example 2.
     example 2

A table 2.
_truc 2_
     line 2

A multitable 2.
truc   bidule
2
truc   bidule
2
An index entry 2

An itemize 2.
   − truc 2 line

A ref 2.  See xref Text with features caption: Top.  A footnote 2.  (1).

TeX and _téî<an_url>_ AND it is @verb  a word !@ Æ.

See Text 1: text with a lot of features.

   ---------- Footnotes ----------

   (1) footnote Text with features caption 2

';


$result_converted{'html'}->{'complex_float'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Test floats</title>

<meta name="description" content="Test floats">
<meta name="keywords" content="Test floats">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
div.example {margin-left: 3.2em}
span:hover a.copiable-link {visibility: visible}
ul.mark-minus {list-style-type: "\\2212"}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">A chapter</a> &nbsp; </p>
</div>
<h1 class="top" id="Test-floats"><span>Test floats<a class="copiable-link" href="#Test-floats"> &para;</a></span></h1>

<p>A list of floats at the beginning.
</p><dl class="listoffloats">
<dt><a href="#text-with-a-lot-of-features">Text 1</a></dt><dd class="shortcaption-in-listoffloats"><p>TeX and <em class="emph"><b class="b">t&eacute;&icirc;</b><a class="url" href="an_url">an_url</a></em> <small class="sc">AND</small> <code class="verb">it&nbsp;is&nbsp;@verb</code> &nbsp;a word !@ &AElig;.</p></dd>
<dt><a href="#float-with-a-lot-of-features-and-no-shortcaption">Text 1.1</a></dt><dd class="caption-in-listoffloats"><p>An example of float caption<small class="enddots">...</small> 2
An example 2.
</p><div class="example">
<pre class="example-preformatted">example 2
</pre></div>

<p>A table 2.
</p><dl class="table">
<dt><em class="emph">truc 2</em></dt>
<dd><p>line 2
</p></dd>
</dl>

<p>A multitable 2.
</p><table class="multitable">
<tbody><tr><td>truc 2</td><td>bidule</td></tr>
<tr><td>truc 2</td><td>bidule</td></tr>
</tbody>
</table>
<p>An index entry 2
</p>
<p>An itemize 2.
</p><ul class="itemize mark-minus">
<li>truc 2
line
</li></ul>


<p>A ref 2.
See <a class="xref" href="#Top">xref Text with features caption</a>.
A footnote 2.
<a class="footnote" id="t_flistoffloats_DOCF3_1" href="#t_flistoffloats_FOOT3_1"><sup>1</sup></a>.
</p>
<p>TeX and <em class="emph"><b class="b">t&eacute;&icirc;</b><a class="url" href="an_url">an_url</a></em> <small class="sc">AND</small> <code class="verb">it&nbsp;is&nbsp;@verb</code> &nbsp;a word !@ &AElig;.
</p></dd>
</dl>

<p>After the listoffloats.
</p>
<div class="float" id="text-with-a-lot-of-features">
<p>An example of float <small class="enddots">...</small>
</p>

<p>An index entry
<a class="index-entry-id" id="index-float-example"></a>
</p>
<p>A table.
</p><dl class="table">
<dt><em class="emph">truc</em></dt>
<dd><p>line
</p></dd>
</dl>

<p>An itemize.
</p><ul class="itemize mark-minus">
<li>truc 
line
</li></ul>

<p>A ref.
See <a class="xref" href="#Top">xref Text with features</a>.
A footnote.
<a class="footnote" id="DOCF1" href="#FOOT1"><sup>2</sup></a>.
</p>
<p>TeX and <em class="emph"><b class="b">t&eacute;&icirc;</b><a class="url" href="an_url">an_url</a></em> <small class="sc">AND</small> <code class="verb">it&nbsp;is&nbsp;@verb</code> &nbsp;a word !@ &AElig;.
</p>


<div class="caption"><p><strong class="strong">Text 1: </strong>An example of float caption<small class="enddots">...</small>
An example.
</p><div class="example">
<pre class="example-preformatted">example
</pre></div>

<a class="anchor" id="Anchor-in-caption"></a>
<p>A table.
</p><dl class="table">
<dt><em class="emph">truc</em></dt>
<dd><p>line
</p></dd>
</dl>

<p>A multitable.
</p><table class="multitable">
<tbody><tr><td>truc</td><td>bidule</td></tr>
<tr><td>truc</td><td>bidule</td></tr>
</tbody>
</table>
<p>An index entry
<a class="index-entry-id" id="index-float-example-in-caption"></a>
</p>
<p>An itemize.
</p><ul class="itemize mark-minus">
<li>truc 
line
</li></ul>

<p>A ref.
See <a class="xref" href="#Top">xref Text with features caption</a>.
A footnote.
<a class="footnote" id="DOCF2" href="#FOOT2"><sup>3</sup></a>.
</p>
<p>TeX and <em class="emph"><b class="b">t&eacute;&icirc;</b><a class="url" href="an_url">an_url</a></em> <small class="sc">AND</small> <code class="verb">it&nbsp;is&nbsp;@verb</code> &nbsp;a word !@ &AElig;.
</p></div></div>
<ul class="mini-toc">
<li><a href="#chapter" accesskey="1">A chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter">
<div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Test floats</a>, Up: <a href="#Top" accesskey="u" rel="up">Test floats</a> &nbsp; </p>
</div>
<h2 class="chapter" id="A-chapter"><span>1 A chapter<a class="copiable-link" href="#A-chapter"> &para;</a></span></h2>

<div class="float" id="float-with-a-lot-of-features-and-no-shortcaption">

<p>Float text of a float with a lot of features.
</p>

<div class="caption"><p><strong class="strong">Text 1.1: </strong>An example of float caption<small class="enddots">...</small> 2
An example 2.
</p><div class="example">
<pre class="example-preformatted">example 2
</pre></div>

<p>A table 2.
</p><dl class="table">
<dt><em class="emph">truc 2</em></dt>
<dd><p>line 2
</p></dd>
</dl>

<p>A multitable 2.
</p><table class="multitable">
<tbody><tr><td>truc 2</td><td>bidule</td></tr>
<tr><td>truc 2</td><td>bidule</td></tr>
</tbody>
</table>
<p>An index entry 2
<a class="index-entry-id" id="index-float-example-in-caption-2"></a>
</p>
<p>An itemize 2.
</p><ul class="itemize mark-minus">
<li>truc 2
line
</li></ul>

<a class="anchor" id="Anchor-in-caption-2"></a>
<p>A ref 2.
See <a class="xref" href="#Top">xref Text with features caption</a>.
A footnote 2.
<a class="footnote" id="DOCF3" href="#FOOT3"><sup>4</sup></a>.
</p>
<p>TeX and <em class="emph"><b class="b">t&eacute;&icirc;</b><a class="url" href="an_url">an_url</a></em> <small class="sc">AND</small> <code class="verb">it&nbsp;is&nbsp;@verb</code> &nbsp;a word !@ &AElig;.
</p></div></div>
<p>See <a class="xref" href="#text-with-a-lot-of-features">Text 1</a>.
</p>
</div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="t_flistoffloats_FOOT3_1" href="#t_flistoffloats_DOCF3_1">(1)</a></h5>
<p>footnote Text with features caption 2</p>
<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(2)</a></h5>
<p>footnote Text with features</p>
<h5 class="footnote-body-heading"><a id="FOOT2" href="#DOCF2">(3)</a></h5>
<p>footnote Text with features caption</p>
<h5 class="footnote-body-heading"><a id="FOOT3" href="#DOCF3">(4)</a></h5>
<p>footnote Text with features caption 2</p>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'complex_float'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter</nodenext></node>
<top spaces=" "><sectiontitle>Test floats</sectiontitle>

<para>A list of floats at the beginning.
</para><listoffloats type="Text" spaces=" ">Text</listoffloats>

<para>After the listoffloats.
</para><menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chapter</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<float identifier="text-with-a-lot-of-features" type="Text" number="1" spaces=" " endspaces=" "><floattype>Text</floattype><floatname spaces=" ">text with a lot of features</floatname>
<para>An example of float &enddots;
</para>
<!-- c makeinfo -docbook segfaults -->

<para>An index entry
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">float example</indexterm></cindex>
</para>
<para>A table.
</para><table commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph">truc </itemformat></item>
</tableterm><tableitem><para>line
</para></tableitem></tableentry></table>

<para>An itemize.
</para><itemize commandarg="minus" spaces=" " endspaces=" "><itemprepend><formattingcommand command="minus"/></itemprepend>
<listitem><prepend>&minus;</prepend> <para>truc 
line
</para></listitem></itemize>

<para>A ref.
<xref label="Top"><xrefnodename>Top</xrefnodename><xrefinfoname>xref Text with features</xrefinfoname></xref>.
A footnote.
<footnote><para>footnote Text with features</para></footnote>.
</para>
<para>&tex; and <emph><b>t<accent type="acute" bracketed="off">e</accent><accent type="circ"><dotless>i</dotless></accent></b><url><urefurl>an_url</urefurl></url></emph> <sc>and</sc> <verb delimiter="!">it is @verb</verb> <spacecmd type="spc"/>a wo&hyphenbreak;rd &eosexcl;&arobase; &AElig;.
</para>
<caption spaces=" "><para>An example of float caption&enddots;
An example.
</para><example endspaces=" "> 
<pre xml:space="preserve">example
</pre></example>

<anchor identifier="Anchor-in-caption">Anchor in caption</anchor>

<para>A table.
</para><table commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph">truc </itemformat></item>
</tableterm><tableitem><para>line
</para></tableitem></tableentry></table>

<para>A multitable.
</para><multitable spaces=" " endspaces=" "><columnprototypes><columnprototype bracketed="on">truc</columnprototype> <columnprototype bracketed="on">bidule</columnprototype></columnprototypes>
<tbody><row><entry command="item"> <para>truc </para></entry><entry command="tab"> <para>bidule
</para></entry></row><row><entry command="item"> <para>truc </para></entry><entry command="tab"> <para>bidule
</para></entry></row></tbody></multitable>
<para>An index entry
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">float example in caption</indexterm></cindex>
</para>
<para>An itemize.
</para><itemize commandarg="minus" spaces=" " endspaces=" "><itemprepend><formattingcommand command="minus"/></itemprepend>
<listitem><prepend>&minus;</prepend> <para>truc 
line
</para></listitem></itemize>

<para>A ref.
<xref label="Top"><xrefnodename>Top</xrefnodename><xrefinfoname>xref Text with features caption</xrefinfoname></xref>.
A footnote.
<footnote><para>footnote Text with features caption</para></footnote>.
</para>
<para>&tex; and <emph><b>t<accent type="acute" bracketed="off">e</accent><accent type="circ"><dotless>i</dotless></accent></b><url><urefurl>an_url</urefurl></url></emph> <sc>and</sc> <verb delimiter="!">it is @verb</verb> <spacecmd type="spc"/>a wo&hyphenbreak;rd &eosexcl;&arobase; &AElig;.
</para></caption>

<shortcaption><para>&tex; and <emph><b>t<accent type="acute" bracketed="off">e</accent><accent type="circ"><dotless>i</dotless></accent></b><url><urefurl>an_url</urefurl></url></emph> <sc>and</sc> <verb delimiter="!">it is @verb</verb> <spacecmd type="spc"/>a wo&hyphenbreak;rd &eosexcl;&arobase; &AElig;.</para></shortcaption>

</float>

</top>
<node identifier="chapter" spaces=" "><nodename>chapter</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>A chapter</sectiontitle>

<float identifier="float-with-a-lot-of-features-and-no-shortcaption" type="Text" number="1.1" spaces=" " endspaces=" "><floattype>Text</floattype><floatname spaces=" ">float with a lot of features and no shortcaption</floatname>

<para>Float text of a float with a lot of features.
</para>
<caption spaces=" "><para>An example of float caption&enddots; 2
An example 2.
</para><example endspaces=" "> 
<pre xml:space="preserve">example 2
</pre></example>

<para>A table 2.
</para><table commandarg="emph" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="emph">truc 2 </itemformat></item>
</tableterm><tableitem><para>line 2
</para></tableitem></tableentry></table>

<para>A multitable 2.
</para><multitable spaces=" " endspaces=" "><columnprototypes><columnprototype bracketed="on">truc</columnprototype> <columnprototype bracketed="on">bidule</columnprototype></columnprototypes>
<tbody><row><entry command="item"> <para>truc 2 </para></entry><entry command="tab"> <para>bidule
</para></entry></row><row><entry command="item"> <para>truc 2 </para></entry><entry command="tab"> <para>bidule
</para></entry></row></tbody></multitable>
<para>An index entry 2
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">float example in caption 2</indexterm></cindex>
</para>
<para>An itemize 2.
</para><itemize commandarg="minus" spaces=" " endspaces=" "><itemprepend><formattingcommand command="minus"/></itemprepend>
<listitem><prepend>&minus;</prepend> <para>truc 2
line
</para></listitem></itemize>

<anchor identifier="Anchor-in-caption-2">Anchor in caption 2</anchor>

<para>A ref 2.
<xref label="Top"><xrefnodename>Top</xrefnodename><xrefinfoname>xref Text with features caption</xrefinfoname></xref>.
A footnote 2.
<footnote><para>footnote Text with features caption 2</para></footnote>.
</para>
<para>&tex; and <emph><b>t<accent type="acute" bracketed="off">e</accent><accent type="circ"><dotless>i</dotless></accent></b><url><urefurl>an_url</urefurl></url></emph> <sc>and</sc> <verb delimiter="!">it is @verb</verb> <spacecmd type="spc"/>a wo&hyphenbreak;rd &eosexcl;&arobase; &AElig;.
</para></caption>

</float>

<para><xref label="text-with-a-lot-of-features"><xrefnodename>text with a lot of features</xrefnodename></xref>.
</para>
</chapter>
';


$result_converted{'latex'}->{'complex_float'} = '\\documentclass{book}
\\usepackage{amsfonts}
\\usepackage{amsmath}
\\usepackage[gen]{eurosym}
\\usepackage{textcomp}
\\usepackage{graphicx}
\\usepackage{etoolbox}
\\usepackage{titleps}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{imakeidx}
\\usepackage{array}
\\usepackage{enumitem}
\\usepackage{float}
% use hidelinks to remove boxes around links to be similar to Texinfo TeX
\\usepackage[hidelinks]{hyperref}

\\makeatletter
\\newcommand{\\Texinfosettitle}{No Title}%

% new float for type `Text\'
\\newfloat{TexinfoFloatText}{htb}{tfl}[chapter]
\\floatname{TexinfoFloatText}{}
% no index headers
\\indexsetup{level=\\relax,toclevel=section}%
\\makeindex[name=cp,title=]%

% redefine the \\mainmatter command such that it does not clear page
% as if in double page
\\renewcommand\\mainmatter{\\clearpage\\@mainmattertrue\\pagenumbering{arabic}}
\\newenvironment{Texinfopreformatted}{%
  \\par\\GNUTobeylines\\obeyspaces\\frenchspacing\\parskip=\\z@\\parindent=\\z@}{}
{\\catcode`\\^^M=13 \\gdef\\GNUTobeylines{\\catcode`\\^^M=13 \\def^^M{\\null\\par}}}
\\newenvironment{Texinfoindented}{\\begin{list}{}{}\\item\\relax}{\\end{list}}


% set defaults for lists that match Texinfo TeX formatting
\\setlist[description]{style=nextline, font=\\normalfont}
\\setlist[itemize]{label=\\textbullet}

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
\\label{anchor:Top}%
\\label{anchor:text-with-a-lot-of-features}%
\\chapter{{A chapter}}
\\label{anchor:chapter}%

\\begin{TexinfoFloatText}

Float text of a float with a lot of features.

\\caption{An example of float caption\\dots{} 2
An example 2.
\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily example 2
\\end{Texinfopreformatted}
\\end{Texinfoindented}

A table 2.
\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\emph{truc 2}}}]
line 2
\\end{description}

A multitable 2.
\\begin{tabular}{m{0.4\\textwidth} m{0.6\\textwidth}}%
truc 2 &bidule\\\\
truc 2 &bidule\\\\
\\end{tabular}%
An index entry 2
\\index[cp]{float example in caption 2@float example in caption 2}%

An itemize 2.
\\begin{itemize}[label=-]
\\item truc 2
line
\\end{itemize}

\\label{anchor:Anchor-in-caption-2}%

A ref 2.
See \\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}.
A footnote 2.
\\footnote{footnote Text with features caption 2}.

\\TeX{} and \\emph{\\textbf{t\\\'{e}\\^{\\i{}}}\\url{an_url}} \\textsc{and} \\verb!it is @verb! \\ {}a wo\\-{}rd \\@!@ \\AE{}.
}

\\label{anchor:float-with-a-lot-of-features-and-no-shortcaption}%
\\end{TexinfoFloatText}

See \\hyperref[anchor:text-with-a-lot-of-features]{Text~\\ref*{anchor:text-with-a-lot-of-features}}.

\\end{document}
';

1;
