use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'glossary'} = '*document_root C5
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C2
    {text_before_beginning:\\input texinfo.tex\\n}
    {text_before_beginning:\\n}
  *preamble_before_content C8
   *@setfilename C1 glossary.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{glossary}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {glossary}
   {empty_line:\\n}
   *@macro C3 glossary.texi:l5
   |EXTRA
   |macro_name:{glossarytext}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: glossarytext\\n}
    {raw:@table @asis\\n}
    *@end C1 glossary.texi:l7
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
   *@macro C5 glossary.texi:l9
   |EXTRA
   |macro_name:{glossary}
   |misc_args:A{}
    *arguments_line C1
     {macro_line: glossary\\n}
    {raw:@glossarytext\\n}
    {raw:@end table\\n}
    {raw:\\n}
    *@end C1 glossary.texi:l13
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
   *@macro C19 glossary.texi:l15
   |EXTRA
   |macro_name:{gentry}
   |misc_args:A{id|name|text}
    *arguments_line C1
     {macro_line: gentry {id, name, text}\\n}
    {raw:@ifhtml\\n}
    {raw:@ref{\\id\\,\\name\\}\\n}
    {raw:@end ifhtml\\n}
    {raw:@ifnothtml\\n}
    {raw:\\name\\ (@pxref{\\id\\})\\n}
    {raw:@end ifnothtml\\n}
    {raw:@unmacro expandglossary\\n}
    {raw:@macro expandglossary{glossary}\\n}
    {raw:@unmacro glossarytext\\n}
    {raw:@macro glossarytext\\n}
    {raw:\\\\glossary\\\\\\n}
    {raw:@item \\name\\ @anchor{\\id\\}\\n}
    {raw:\\text\\\\n}
    {raw:@end macro\\n}
    {raw:@end macro\\n}
    {raw:@expandglossary {@glossarytext{}}\\n}
    {raw:\\n}
    *@end C1 glossary.texi:l33
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
 *0 @node C1 glossary.texi:l35 {Top}
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
 *1 @top C6 glossary.texi:l36 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E4]
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
    {Top}
  {empty_line:\\n}
  *2 @menu C3 glossary.texi:l38
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{ \\n}
   *menu_entry C4 glossary.texi:l39
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{glossary}
    |normalized:{glossary}
     {glossary}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 glossary.texi:l40
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
  *paragraph C15
   {The }
   >SOURCEMARKS
   >macro_expansion<start;1><p:4>
    >*macro_call C3
    >|INFO
    >|command_name:{gentry}
     >*brace_arg C1
      >{id1}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{name1}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{text1, arg1 }
   >expanded_conditional_command<start;1><p:4>
    >*@ifhtml C1 glossary.texi:l42:@gentry
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
   *@ref C2 glossary.texi:l42:@gentry
    *brace_arg C1
    |EXTRA
    |node_content:{id1}
    |normalized:{id1}
     {id1}
    *brace_arg C1
     {name1}
   {\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;1><p:1>
    >*@end C1 glossary.texi:l42:@gentry
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifhtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifhtml}
   >ignored_conditional_block<1><p:1>
    >*@ifnothtml C3 glossary.texi:l42:@gentry
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
     >{raw:name1 (@pxref{id1})\\n}
     >*@end C1 glossary.texi:l42:@gentry
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifnothtml}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifnothtml}
   *@unmacro C1
   |INFO
   |arg_line:{ expandglossary\\n}
    {rawline_arg:expandglossary}
   *@macro C8 glossary.texi:l42:@gentry
   |EXTRA
   |macro_name:{expandglossary}
   |misc_args:A{glossary}
   >SOURCEMARKS
   >macro_expansion<start;2>
    >*macro_call C1
    >|INFO
    >|command_name:{expandglossary}
    >|spaces_after_cmd_before_arg:
     >|{ }
     >*brace_arg C1
      >{@glossarytext{}}
    *arguments_line C1
     {macro_line: expandglossary{glossary}\\n}
    {raw:@unmacro glossarytext\\n}
    {raw:@macro glossarytext\\n}
    {raw:\\glossary\\\\n}
    {raw:@item name1 @anchor{id1}\\n}
    {raw:text1, arg1 \\n}
    {raw:@end macro\\n}
    *@end C1 glossary.texi:l42:@gentry
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
   *@unmacro C1
   |INFO
   |arg_line:{ glossarytext\\n}
    {rawline_arg:glossarytext}
   *@macro C5 glossary.texi:l42:@expandglossary
   |EXTRA
   |macro_name:{glossarytext}
   |misc_args:A{}
   >SOURCEMARKS
   >macro_expansion<end;1>
    *arguments_line C1
     {macro_line: glossarytext\\n}
    {raw:@glossarytext{}\\n}
    {raw:@item name1 @anchor{id1}\\n}
    {raw:text1, arg1 \\n}
    *@end C1 glossary.texi:l42:@expandglossary
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
      >SOURCEMARKS
      >macro_expansion<end;2><p:5>
   { is used in many cases while\\n}
   >SOURCEMARKS
   >macro_expansion<start;3><p:29>
    >*macro_call C3
    >|INFO
    >|command_name:{gentry}
     >*brace_arg C1
      >{id2}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{name2}
     >*brace_arg C1
     >|INFO
     >|spaces_before_argument:
      >|{ }
      >{text2}
   >expanded_conditional_command<start;2><p:29>
    >*@ifhtml C1 glossary.texi:l43:@gentry
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
   *@ref C2 glossary.texi:l43:@gentry
    *brace_arg C1
    |EXTRA
    |node_content:{id2}
    |normalized:{id2}
     {id2}
    *brace_arg C1
     {name2}
   {\\n}
   >SOURCEMARKS
   >expanded_conditional_command<end;2><p:1>
    >*@end C1 glossary.texi:l43:@gentry
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{ifhtml}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{ifhtml}
   >ignored_conditional_block<2><p:1>
    >*@ifnothtml C3 glossary.texi:l43:@gentry
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
     >{raw:name2 (@pxref{id2})\\n}
     >*@end C1 glossary.texi:l43:@gentry
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{ifnothtml}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{ifnothtml}
   *@unmacro C1
   |INFO
   |arg_line:{ expandglossary\\n}
    {rawline_arg:expandglossary}
   *@macro C8 glossary.texi:l43:@gentry
   |EXTRA
   |macro_name:{expandglossary}
   |misc_args:A{glossary}
   >SOURCEMARKS
   >macro_expansion<start;4>
    >*macro_call C1
    >|INFO
    >|command_name:{expandglossary}
    >|spaces_after_cmd_before_arg:
     >|{ }
     >*brace_arg C1
      >{@glossarytext{}}
    *arguments_line C1
     {macro_line: expandglossary{glossary}\\n}
    {raw:@unmacro glossarytext\\n}
    {raw:@macro glossarytext\\n}
    {raw:\\glossary\\\\n}
    {raw:@item name2 @anchor{id2}\\n}
    {raw:text2\\n}
    {raw:@end macro\\n}
    *@end C1 glossary.texi:l43:@gentry
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
   *@unmacro C1
   |INFO
   |arg_line:{ glossarytext\\n}
    {rawline_arg:glossarytext}
   *@macro C5 glossary.texi:l43:@expandglossary
   |EXTRA
   |macro_name:{glossarytext}
   |misc_args:A{}
   >SOURCEMARKS
   >macro_expansion<end;3>
    *arguments_line C1
     {macro_line: glossarytext\\n}
    {raw:@glossarytext{}\\n}
    {raw:@item name2 @anchor{id2}\\n}
    {raw:text2\\n}
    *@end C1 glossary.texi:l43:@expandglossary
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
      >SOURCEMARKS
      >macro_expansion<end;4><p:5>
   { is quite specific\\n}
  {empty_line:\\n}
 *3 @node C1 glossary.texi:l45 {glossary}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{glossary}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {glossary}
 *4 @chapter C6 glossary.texi:l46 {glossary}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {glossary}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;5>
   >*macro_call C1
   >|INFO
   >|command_name:{glossary}
    >*brace_arg
  >macro_expansion<start;6>
   >*macro_call
   >|INFO
   >|command_name:{glossarytext}
  {ignorable_spaces_after_command: }
  *paragraph C4
  >SOURCEMARKS
  >macro_expansion<end;5>
   {name2 }
   *5 @anchor C1 glossary.texi:l47:@glossarytext
   |EXTRA
   |is_target:{1}
   |normalized:{id2}
    *brace_arg C1
     {id2}
   {spaces_after_close_brace:\\n}
   {text2\\n}
   >SOURCEMARKS
   >macro_expansion<end;6><p:5>
  {empty_line:\\n}
  {empty_line:\\n}
';


$result_texis{'glossary'} = '\\input texinfo.tex

@setfilename glossary

@macro glossarytext
@table @asis
@end macro

@macro glossary
@glossarytext
@end table

@end macro

@macro gentry {id, name, text}
@ifhtml
@ref{\\id\\,\\name\\}
@end ifhtml
@ifnothtml
\\name\\ (@pxref{\\id\\})
@end ifnothtml
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\\\glossary\\\\
@item \\name\\ @anchor{\\id\\}
\\text\\
@end macro
@end macro
@expandglossary {@glossarytext{}}

@end macro

@node Top
@top Top

@menu 
* glossary::
@end menu

The @ref{id1,name1}
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\glossary\\
@item name1 @anchor{id1}
text1, arg1 
@end macro
@end macro
@unmacro glossarytext
@macro glossarytext
@glossarytext{}
@item name1 @anchor{id1}
text1, arg1 
@end macro
 is used in many cases while
@ref{id2,name2}
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\glossary\\
@item name2 @anchor{id2}
text2
@end macro
@end macro
@unmacro glossarytext
@macro glossarytext
@glossarytext{}
@item name2 @anchor{id2}
text2
@end macro
 is quite specific

@node glossary
@chapter glossary

 name2 @anchor{id2}
text2


';


$result_texts{'glossary'} = '



Top
***

* glossary::

The id1
 is used in many cases while
id2
 is quite specific

1 glossary
**********

name2 text2


';

$result_errors{'glossary'} = [
  {
    'error_line' => 'warning: use @comma{} instead of \\, in macro arg
',
    'file_name' => 'glossary.texi',
    'line_nr' => 42,
    'text' => 'use @comma{} instead of \\, in macro arg',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ifhtml should only appear at the beginning of a line (possibly involving @gentry)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 42,
    'macro' => 'gentry',
    'text' => '@ifhtml should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'recursive call of macro glossarytext is not allowed; use @rmacro if needed (possibly involving @glossarytext)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossarytext',
    'text' => 'recursive call of macro glossarytext is not allowed; use @rmacro if needed',
    'type' => 'error'
  },
  {
    'error_line' => '@item outside of table or list (possibly involving @glossarytext)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossarytext',
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\' (possibly involving @glossary)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossary',
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `id1\' (possibly involving @gentry)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 42,
    'macro' => 'gentry',
    'text' => '@ref reference to nonexistent node `id1\'',
    'type' => 'error'
  }
];


$result_nodes_list{'glossary'} = '1|Top
 associated_section: Top
 associated_title_command: Top
 menus:
  glossary
 node_directions:
  next->glossary
2|glossary
 associated_section: 1 glossary
 associated_title_command: 1 glossary
 menu_directions:
  up->Top
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'glossary'} = '1|Top
 associated_anchor_command: Top
 associated_node: Top
2|glossary
 associated_anchor_command: glossary
 associated_node: glossary
';

$result_headings_list{'glossary'} = '';

1;
