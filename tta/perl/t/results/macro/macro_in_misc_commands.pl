use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_in_misc_commands'} = '*document_root C6
 *before_node_section C4
  *@macro C3 l1
  |EXTRA
  |macro_name:{text}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: text \\n}
   {raw:atext\\n}
   *@end C1 l3
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
  *@macro C3 l5
  |EXTRA
  |macro_name:{Top}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: Top\\n}
   {raw:Top\\n}
   *@end C1 l7
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
 *0 @node C1 l9 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
  |>SOURCEMARKS
  |>macro_expansion<start;1><p:1>
   |>*macro_call C1
   |>|INFO
   |>|command_name:{Top}
    |>*brace_arg
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E3]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
    >SOURCEMARKS
    >macro_expansion<end;1><p:3>
 *1 @top C127 l10 {top atext}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top atext}
    >SOURCEMARKS
    >macro_expansion<start;2><p:4>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;2><p:9>
  *2 @subheading C1 l11
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Comment like: atext}
    >SOURCEMARKS
    >macro_expansion<start;3><p:14>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;3><p:19>
  {empty_line:\\n}
  *paragraph C3
   {Text line followed by a comment on the same line and another below }
   *@c C1
    {rawline_arg: comment @text{}\\n}
   *@c C1
    {rawline_arg: comment @text{}\\n}
  {empty_line:\\n}
  *@macro C3 l16
  |EXTRA
  |macro_name:{en}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: en \\n}
   {raw:en\\n}
   *@end C1 l18
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
  *@macro C3 l19
  |EXTRA
  |macro_name:{documentlanguagecommand}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: documentlanguagecommand \\n}
   {raw:@documentlanguage\\n}
   *@end C1 l21
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
  *paragraph C2
   {documentlanguage }
   *@documentlanguage C1 l23
   |INFO
   |spaces_before_argument:
    |{  }
    |>SOURCEMARKS
    |>macro_expansion<start;4><p:2>
     |>*macro_call C1
     |>|INFO
     |>|command_name:{en}
      |>*brace_arg
   |EXTRA
   |global_command_number:{1}
   |text_arg:{en}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {en}
     >SOURCEMARKS
     >macro_expansion<end;4><p:2>
  {empty_line:\\n}
  *paragraph C3
   {documentlanguage on its line\\n}
   >SOURCEMARKS
   >macro_expansion<start;5><p:29>
    >*macro_call C1
    >|INFO
    >|command_name:{documentlanguagecommand}
     >*brace_arg
   *@documentlanguage C1 l26:@documentlanguagecommand
   |INFO
   |spaces_before_argument:
    |{  }
    |>SOURCEMARKS
    |>macro_expansion<end;5>
   |EXTRA
   |global_command_number:{2}
   |text_arg:{en}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {en}
   {line following documentlanguage\\n}
  {empty_line:\\n}
  *@macro C3 l29
  |EXTRA
  |macro_name:{pagesizesarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: pagesizesarg\\n}
   {raw:200mm,150mm\\n}
   *@end C1 l31
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
  *@macro C3 l33
  |EXTRA
  |macro_name:{afourpapermacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: afourpapermacro \\n}
   {raw:@afourpaper\\n}
   *@end C1 l35
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
  *@pagesizes C1 l37
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;6><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{pagesizesarg}
     |>*brace_arg
  >SOURCEMARKS
  >macro_expansion<start;7>
   >*macro_call C1
   >|INFO
   >|command_name:{afourpapermacro}
    >*brace_arg
  >macro_expansion<end;7>
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {200mm,150mm}
    >SOURCEMARKS
    >macro_expansion<end;6><p:11>
  *@afourpaper C1 l38:@afourpapermacro
   {rawline_arg:\\n}
  *@headings C1 l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on line following headings atext}
    >SOURCEMARKS
    >macro_expansion<start;8><p:27>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;8><p:32>
  *@oddfooting C1 l40
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on line following oddfooting atext}
    >SOURCEMARKS
    >macro_expansion<start;9><p:29>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;9><p:34>
  *@everyheading C1 l41
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on line following everyheading atext}
    >SOURCEMARKS
    >macro_expansion<start;10><p:31>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;10><p:36>
  {empty_line:\\n}
  *@macro C3 l43
  |EXTRA
  |macro_name:{needarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: needarg\\n}
   {raw:0.1\\n}
   *@end C1 l45
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
  *@need C1 l47
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;11><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{needarg}
     |>*brace_arg
  |EXTRA
  |misc_args:A{0.1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {0.1}
    >SOURCEMARKS
    >macro_expansion<end;11><p:3>
  {empty_line:\\n}
  *@macro C3 l49
  |EXTRA
  |macro_name:{raisesectionsmacro}
  |misc_args:A{}
  >SOURCEMARKS
  >macro_expansion<start;12>
   >*macro_call C1
   >|INFO
   >|command_name:{raisesectionsmacro}
    >*brace_arg
  >macro_expansion<end;12>
   *arguments_line C1
    {macro_line: raisesectionsmacro \\n}
   {raw:@raisesections\\n}
   *@end C1 l51
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
  *@raisesections C1
   {rawline_arg:\\n}
  *@macro C3 l53
  |EXTRA
  |macro_name:{lowersectionsmacro}
  |misc_args:A{}
  >SOURCEMARKS
  >macro_expansion<start;13>
   >*macro_call C1
   >|INFO
   >|command_name:{lowersectionsmacro}
    >*brace_arg
  >macro_expansion<end;13>
   *arguments_line C1
    {macro_line: lowersectionsmacro \\n}
   {raw:@lowersections\\n}
   *@end C1 l55
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
  *@lowersections C1
   {rawline_arg:\\n}
  {empty_line:\\n}
  *paragraph C3
   *@@
   {definfoenclose phoo,//,\\\\  }
   *@definfoenclose C1 l58
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{phoo|//|\\\\}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {phoo,//,\\\\}
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@phoo C1 l60
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{//}
   |end:{\\\\}
    *brace_container C1
     {bar}
   {\\n}
  {empty_line:\\n}
  *@macro C3 l62
  |EXTRA
  |macro_name:{definfoenclosename}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: definfoenclosename \\n}
   {raw:phi\\n}
   *@end C1 l64
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
  *@definfoenclose C1 l65
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;14><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{definfoenclosename}
     |>*brace_arg
  |EXTRA
  |misc_args:A{phi|:|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phi,:,:}
    >SOURCEMARKS
    >macro_expansion<end;14><p:3>
  {empty_line:\\n}
  *paragraph C2
   *definfoenclose_command@phi C1 l67
   |INFO
   |command_name:{phi}
   |EXTRA
   |begin:{:}
   |end:{:}
    *brace_container C1
     {bar}
   {\\n}
  {empty_line:\\n}
  *@macro C3 l69
  |EXTRA
  |macro_name:{strongmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: strongmacro \\n}
   {raw:@strong\\n}
   *@end C1 l71
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
  *@macro C3 l72
  |EXTRA
  |macro_name:{strongname}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: strongname \\n}
   {raw:strong\\n}
   *@end C1 l74
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
  >SOURCEMARKS
  >macro_expansion<start;15><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{strongmacro}
    >*brace_arg
  *paragraph C2
   *@strong C1 l76:@strongmacro
   |INFO
   |spaces_after_cmd_before_arg:
    |{}
    |>SOURCEMARKS
    |>macro_expansion<end;15>
    *brace_container C1
     {very strong}
   {\\n}
  {empty_line:\\n}
  *@definfoenclose C1 l78
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;16><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{strongname}
     |>*brace_arg
  |EXTRA
  |misc_args:A{strong|(strong:|:)}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {strong,(strong:,:)}
    >SOURCEMARKS
    >macro_expansion<end;16><p:6>
    >macro_expansion<start;17><p:8>
     >*macro_call C1
     >|INFO
     >|command_name:{strongname}
      >*brace_arg
    >macro_expansion<end;17><p:14>
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;18><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{strongmacro}
    >*brace_arg
  *paragraph C2
   *definfoenclose_command@strong C1 l80:@strongmacro
   |INFO
   |command_name:{strong}
   |spaces_after_cmd_before_arg:
    |{}
    |>SOURCEMARKS
    |>macro_expansion<end;18>
   |EXTRA
   |begin:{(strong:}
   |end:{:)}
    *brace_container C1
     { is it really strong? }
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@kbd C1 l82
    *brace_container C1
     {something before kbdinputstyle}
   {\\n}
  {empty_line:\\n}
  *@macro C3 l84
  |EXTRA
  |macro_name:{kbdinputstylearg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: kbdinputstylearg \\n}
   {raw:code\\n}
   *@end C1 l86
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
  *@kbdinputstyle C1 l87
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;19><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{kbdinputstylearg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{code}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {code}
    >SOURCEMARKS
    >macro_expansion<end;19><p:4>
  {empty_line:\\n}
  *paragraph C2
   *@kbd C1 l89
   |EXTRA
   |code:{1}
    *brace_container C1
     {truc}
   {\\n}
  {empty_line:\\n}
  *@example C3 l91
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    *@kbd C1 l92
    |EXTRA
    |code:{1}
     *brace_container C1
      {example}
    {\\n}
   *@end C1 l93
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
  *@macro C3 l95
  |EXTRA
  |macro_name:{asisarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: asisarg \\n}
   {raw:asis\\n}
   *@end C1 l97
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
  *@macro C3 l98
  |EXTRA
  |macro_name:{zero}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: zero \\n}
   {raw:0\\n}
   *@end C1 l100
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
  *@macro C3 l101
  |EXTRA
  |macro_name:{nonearg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: nonearg \\n}
   {raw:none\\n}
   *@end C1 l103
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
  *@macro C3 l104
  |EXTRA
  |macro_name:{four}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: four \\n}
   {raw:4\\n}
   *@end C1 l106
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
  *@macro C3 l107
  |EXTRA
  |macro_name:{six}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: six \\n}
   {raw:6\\n}
   *@end C1 l109
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
  *@paragraphindent C1 l111
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;20><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{asisarg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{asis}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {asis}
    >SOURCEMARKS
    >macro_expansion<end;20><p:4>
  *@paragraphindent C1 l112
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;21><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{zero}
     |>*brace_arg
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{0}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {0}
    >SOURCEMARKS
    >macro_expansion<end;21><p:1>
  *@paragraphindent C1 l113
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;22><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{nonearg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{none}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {none}
    >SOURCEMARKS
    >macro_expansion<end;22><p:4>
  *@paragraphindent C1 l114
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;23><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{four}
     |>*brace_arg
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {4}
    >SOURCEMARKS
    >macro_expansion<end;23><p:1>
  *@firstparagraphindent C1 l115
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;24><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{nonearg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{none}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {none}
    >SOURCEMARKS
    >macro_expansion<end;24><p:4>
  *@exampleindent C1 l116
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;25><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{six}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {6}
    >SOURCEMARKS
    >macro_expansion<end;25><p:1>
  {empty_line:\\n}
  *@macro C3 l118
  |EXTRA
  |macro_name:{endarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: endarg \\n}
   {raw:end\\n}
   *@end C1 l120
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
  *@macro C3 l121
  |EXTRA
  |macro_name:{separatearg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: separatearg \\n}
   {raw:separate \\n}
   *@end C1 l123
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
  *@footnotestyle C1 l124
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;26><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{endarg}
     |>*brace_arg
  |EXTRA
  |misc_args:A{end}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {end}
    >SOURCEMARKS
    >macro_expansion<end;26><p:3>
  *@footnotestyle C1 l125
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;27><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{separatearg}
     |>*brace_arg
  |EXTRA
  |misc_args:A{separate}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
    |>SOURCEMARKS
    |>macro_expansion<end;27><p:1>
    {separate}
  {empty_line:\\n}
  *@macro C3 l127
  |EXTRA
  |macro_name:{onarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: onarg \\n}
   {raw:on\\n}
   *@end C1 l129
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
  *@macro C3 l130
  |EXTRA
  |macro_name:{offarg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: offarg \\n}
   {raw:off\\n}
   *@end C1 l132
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
  *@frenchspacing C1 l133
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;28><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{onarg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
    >SOURCEMARKS
    >macro_expansion<end;28><p:2>
  *@frenchspacing C1 l134
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;29><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{offarg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
    >SOURCEMARKS
    >macro_expansion<end;29><p:3>
  {empty_line:\\n}
  *@c C1
   {rawline_arg: accepts 10 or 11\\n}
  *@macro C3 l137
  |EXTRA
  |macro_name:{ten}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: ten \\n}
   {raw:10\\n}
   *@end C1 l139
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
  *@fonttextsize C1 l140
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;30><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{ten}
     |>*brace_arg
  |EXTRA
  |misc_args:A{10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {10}
    >SOURCEMARKS
    >macro_expansion<end;30><p:2>
  *@c C1
   {rawline_arg: accept false or true\\n}
  *@macro C3 l142
  |EXTRA
  |macro_name:{falsearg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: falsearg \\n}
   {raw:false\\n}
   *@end C1 l144
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
  *@macro C3 l145
  |EXTRA
  |macro_name:{truearg}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: truearg\\n}
   {raw:true\\n}
   *@end C1 l147
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
  *@allowcodebreaks C1 l148
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;31><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{falsearg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{false}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {false}
    >SOURCEMARKS
    >macro_expansion<end;31><p:5>
  {empty_line:\\n}
  *@allowcodebreaks C1 l150
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;32><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{truearg}
     |>*brace_arg
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{true}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {true}
    >SOURCEMARKS
    >macro_expansion<end;32><p:4>
  {empty_line:\\n}
  *@macro C3 l152
  |EXTRA
  |macro_name:{pagemacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: pagemacro \\n}
   {raw:@page\\n}
   *@end C1 l154
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
  *@macro C3 l155
  |EXTRA
  |macro_name:{noindentmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: noindentmacro \\n}
   {raw:@noindent\\n}
   *@end C1 l157
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
  *@macro C3 l158
  |EXTRA
  |macro_name:{refillmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: refillmacro \\n}
   {raw:@refill\\n}
   *@end C1 l160
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
  *paragraph C2
  >SOURCEMARKS
  >macro_expansion<end;33>
   *@@
   {page }
   >SOURCEMARKS
   >macro_expansion<start;33><p:5>
    >*macro_call C1
    >|INFO
    >|command_name:{pagemacro}
     >*brace_arg
  *@page C1
   {rawline_arg: on page line\\n}
  *paragraph C8
   *@@
   {noindent }
   >SOURCEMARKS
   >macro_expansion<start;34><p:9>
    >*macro_call C1
    >|INFO
    >|command_name:{noindentmacro}
     >*brace_arg
   *@noindent l163:@noindentmacro
   {ignorable_spaces_after_command: }
   >SOURCEMARKS
   >macro_expansion<end;34>
   *@@
   {refill }
   >SOURCEMARKS
   >macro_expansion<start;35><p:7>
    >*macro_call C1
    >|INFO
    >|command_name:{refillmacro}
     >*brace_arg
   *@refill
   >SOURCEMARKS
   >macro_expansion<end;35>
   { something\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;36><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{noindentmacro}
    >*brace_arg
  *@noindent l165:@noindentmacro
  {ignorable_spaces_after_command:     }
  >SOURCEMARKS
  >macro_expansion<end;36>
  *paragraph C8
  |EXTRA
  |noindent:{1}
  >SOURCEMARKS
  >macro_expansion<end;39>
   {noindent at beginning of line\\n}
   >SOURCEMARKS
   >macro_expansion<start;37><p:30>
    >*macro_call C1
    >|INFO
    >|command_name:{noindentmacro}
     >*brace_arg
   *@noindent l166:@noindentmacro
   {ignorable_spaces_after_command:\\n}
   >SOURCEMARKS
   >macro_expansion<end;37>
   {noindent on the preceding line\\n}
   {  }
   >SOURCEMARKS
   >macro_expansion<start;38><p:2>
    >*macro_call C1
    >|INFO
    >|command_name:{noindentmacro}
     >*brace_arg
   *@noindent l168:@noindentmacro
   {ignorable_spaces_after_command:    }
   >SOURCEMARKS
   >macro_expansion<end;38>
   {noindent after space at beginning of line\\n}
   >SOURCEMARKS
   >macro_expansion<start;39><p:42>
    >*macro_call C1
    >|INFO
    >|command_name:{pagemacro}
     >*brace_arg
  *@page C1
  >SOURCEMARKS
  >macro_expansion<start;40>
   >*macro_call C1
   >|INFO
   >|command_name:{pagemacro}
    >*brace_arg
  >macro_expansion<end;40>
   {rawline_arg:         page at beginning of line\\n}
  *@page C1
   {rawline_arg:\\n}
  *paragraph C1
   {After page on its own line.\\n}
  {empty_line:\\n}
  *paragraph C2
  >SOURCEMARKS
  >macro_expansion<end;41>
   *@@
   {page }
   >SOURCEMARKS
   >macro_expansion<start;41><p:5>
    >*macro_call C1
    >|INFO
    >|command_name:{pagemacro}
     >*brace_arg
  *@page C1
   {rawline_arg:\\n}
  *paragraph C9
   {two spaces   }
   *@@
   {noindent }
   >SOURCEMARKS
   >macro_expansion<start;42><p:9>
    >*macro_call C1
    >|INFO
    >|command_name:{noindentmacro}
     >*brace_arg
   *@noindent l174:@noindentmacro
   {ignorable_spaces_after_command:    }
   >SOURCEMARKS
   >macro_expansion<end;42>
   *@@
   {refill }
   >SOURCEMARKS
   >macro_expansion<start;43><p:7>
    >*macro_call C1
    >|INFO
    >|command_name:{refillmacro}
     >*brace_arg
   *@refill
   >SOURCEMARKS
   >macro_expansion<end;43>
   {\\n}
  {empty_line:\\n}
  *@macro C3 l176
  |EXTRA
  |macro_name:{contentsmacro}
  |misc_args:A{}
  >SOURCEMARKS
  >macro_expansion<start;44>
   >*macro_call C1
   >|INFO
   >|command_name:{contentsmacro}
    >*brace_arg
  >macro_expansion<end;44>
   *arguments_line C1
    {macro_line: contentsmacro \\n}
   {raw:@contents\\n}
   *@end C1 l178
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
  *@contents C1 l179:@contentsmacro
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@vskip C1
   {rawline_arg: @atext{}\\n}
  {empty_line:\\n}
  *@macro C3 l183
  |EXTRA
  |macro_name:{exdentmacro}
  |misc_args:A{}
  >SOURCEMARKS
  >macro_expansion<start;45>
   >*macro_call C1
   >|INFO
   >|command_name:{exdentmacro}
    >*brace_arg
   *arguments_line C1
    {macro_line: exdentmacro \\n}
   {raw:@exdent\\n}
   *@end C1 l185
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
  *@exdent C1 l186:@exdentmacro
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<end;45>
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {line after exdent}
  {empty_line:\\n}
  *@macro C3 l188
  |EXTRA
  |macro_name:{two}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: two \\n}
   {raw:2\\n}
   *@end C1 l190
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
  *@sp C1 l191
  |INFO
  |spaces_before_argument:
   |{ }
   |>SOURCEMARKS
   |>macro_expansion<start;46><p:1>
    |>*macro_call C1
    |>|INFO
    |>|command_name:{two}
     |>*brace_arg
  |EXTRA
  |misc_args:A{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {2}
    >SOURCEMARKS
    >macro_expansion<end;46><p:1>
  {empty_line:\\n}
  *@macro C3 l193
  |EXTRA
  |macro_name:{resultmacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: resultmacro \\n}
   {raw:@result\\n}
   *@end C1 l195
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
  *@clickstyle C1 l197
  |INFO
  |arg_line:{ @resultmacro{}\\n}
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:@resultmacro}
  {empty_line:\\n}
  *3 @menu C3 l199
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l200
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node atext}
    |normalized:{node-atext}
     {node atext}
     >SOURCEMARKS
     >macro_expansion<start;47><p:5>
      >*macro_call C1
      >|INFO
      >|command_name:{text}
       >*brace_arg
     >macro_expansion<end;47><p:10>
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l201
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
 *4 @node C1 l203 {node atext}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{node-atext}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node atext}
    >SOURCEMARKS
    >macro_expansion<start;48><p:5>
     >*macro_call C1
     >|INFO
     >|command_name:{text}
      >*brace_arg
    >macro_expansion<end;48><p:10>
 *5 @chapter C9 l204 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
 >SOURCEMARKS
 >macro_expansion<end;51>
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  >SOURCEMARKS
  >macro_expansion<start;49><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{contentsmacro}
    >*brace_arg
  >macro_expansion<end;49><p:1>
  *@contents C1 l206:@contentsmacro
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@macro C3 l208
  |EXTRA
  |macro_name:{shortcontentsmacro}
  |misc_args:A{}
  >SOURCEMARKS
  >macro_expansion<start;50>
   >*macro_call C1
   >|INFO
   >|command_name:{shortcontentsmacro}
    >*brace_arg
  >macro_expansion<end;50>
   *arguments_line C1
    {macro_line: shortcontentsmacro \\n}
   {raw:@shortcontents\\n}
   *@end C1 l210
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
  *@shortcontents C1 l211:@shortcontentsmacro
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@macro C3 l213
  |EXTRA
  |macro_name:{byemacro}
  |misc_args:A{}
   *arguments_line C1
    {macro_line: byemacro\\n}
   {raw:@bye\\n}
   *@end C1 l215
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
  >SOURCEMARKS
  >macro_expansion<start;51><p:1>
   >*macro_call C1
   >|INFO
   >|command_name:{byemacro}
    >*brace_arg
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'macro_in_misc_commands'} = '@macro text 
atext
@end macro

@macro Top
Top
@end macro

@node Top
@top top atext
@subheading Comment like: atext

Text line followed by a comment on the same line and another below @c comment @text{}
@c comment @text{}

@macro en 
en
@end macro
@macro documentlanguagecommand 
@documentlanguage
@end macro

documentlanguage @documentlanguage  en

documentlanguage on its line
@documentlanguage  en
line following documentlanguage

@macro pagesizesarg
200mm,150mm
@end macro

@macro afourpapermacro 
@afourpaper
@end macro

@pagesizes 200mm,150mm
@afourpaper
@headings on line following headings atext
@oddfooting on line following oddfooting atext
@everyheading on line following everyheading atext

@macro needarg
0.1
@end macro

@need 0.1

@macro raisesectionsmacro 
@raisesections
@end macro
@raisesections
@macro lowersectionsmacro 
@lowersections
@end macro
@lowersections

@@definfoenclose phoo,//,\\\\  @definfoenclose phoo,//,\\\\

@phoo{bar}

@macro definfoenclosename 
phi
@end macro
@definfoenclose phi,:,:

@phi{bar}

@macro strongmacro 
@strong
@end macro
@macro strongname 
strong
@end macro

@strong{very strong}

@definfoenclose strong,(strong:,:)

@strong{ is it really strong? }

@kbd{something before kbdinputstyle}

@macro kbdinputstylearg 
code
@end macro
@kbdinputstyle code

@kbd{truc}

@example
@kbd{example}
@end example

@macro asisarg 
asis
@end macro
@macro zero 
0
@end macro
@macro nonearg 
none
@end macro
@macro four 
4
@end macro
@macro six 
6
@end macro

@paragraphindent asis
@paragraphindent 0
@paragraphindent none
@paragraphindent 4
@firstparagraphindent none
@exampleindent 6

@macro endarg 
end
@end macro
@macro separatearg 
separate 
@end macro
@footnotestyle end
@footnotestyle separate 

@macro onarg 
on
@end macro
@macro offarg 
off
@end macro
@frenchspacing on
@frenchspacing off

@c accepts 10 or 11
@macro ten 
10
@end macro
@fonttextsize 10
@c accept false or true
@macro falsearg 
false
@end macro
@macro truearg
true
@end macro
@allowcodebreaks false

@allowcodebreaks true

@macro pagemacro 
@page
@end macro
@macro noindentmacro 
@noindent
@end macro
@macro refillmacro 
@refill
@end macro

@@page @page on page line
@@noindent @noindent @@refill @refill something

@noindent     noindent at beginning of line
@noindent
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on its own line.

@@page @page
two spaces   @@noindent @noindent    @@refill @refill

@macro contentsmacro 
@contents
@end macro
@contents

@vskip @atext{}

@macro exdentmacro 
@exdent
@end macro
@exdent line after exdent

@macro two 
2
@end macro
@sp 2

@macro resultmacro 
@result
@end macro

@clickstyle @resultmacro{}

@menu
* node atext::
@end menu

@node node atext
@chapter chapter

@contents

@macro shortcontentsmacro 
@shortcontents
@end macro
@shortcontents

@macro byemacro
@bye
@end macro

@bye
';


$result_texts{'macro_in_misc_commands'} = '

top atext
*********
Comment like: atext
-------------------

Text line followed by a comment on the same line and another below 

documentlanguage 
documentlanguage on its line
line following documentlanguage







@definfoenclose phoo,//,\\\\  
bar


bar


very strong


 is it really strong? 

something before kbdinputstyle


truc

example








@page 
@noindent @refill  something

noindent at beginning of line
noindent on the preceding line
  noindent after space at beginning of line


After page on its own line.

@page 
two spaces   @noindent @refill 



line after exdent






* node atext::

1 chapter
*********




';

$result_errors{'macro_in_misc_commands'} = [
  {
    'error_line' => 'warning: @documentlanguage should only appear at the beginning of a line
',
    'line_nr' => 23,
    'text' => '@documentlanguage should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @headings: on line following headings atext
',
    'line_nr' => 39,
    'text' => 'bad argument to @headings: on line following headings atext',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 58,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose should only appear at the beginning of a line
',
    'line_nr' => 58,
    'text' => '@definfoenclose should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 65,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 78,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @footnotestyle
',
    'line_nr' => 125,
    'text' => 'multiple @footnotestyle',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line (possibly involving @pagemacro)
',
    'line_nr' => 162,
    'macro' => 'pagemacro',
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'line_nr' => 163,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete (possibly involving @refillmacro)
',
    'line_nr' => 163,
    'macro' => 'refillmacro',
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'line_nr' => 166,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'line_nr' => 168,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line (possibly involving @pagemacro)
',
    'line_nr' => 173,
    'macro' => 'pagemacro',
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph (possibly involving @noindentmacro)
',
    'line_nr' => 174,
    'macro' => 'noindentmacro',
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete (possibly involving @refillmacro)
',
    'line_nr' => 174,
    'macro' => 'refillmacro',
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @clickstyle is obsolete
',
    'line_nr' => 197,
    'text' => '@clickstyle is obsolete',
    'type' => 'warning'
  }
];


1;
