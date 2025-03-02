use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'multiple_include_encodings'} = '*document_root C19
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\input texinfo.tex\\n}
  *preamble_before_content C10
   *@documentencoding C1 multiple_include_encodings.texi:l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
   *0 @copying C3 multiple_include_encodings.texi:l4
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {Télé.\\n}
    *@end C1 multiple_include_encodings.texi:l6
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
   {empty_line:\\n}
   >SOURCEMARKS
   >include<start;1><p:1>
    >*@include C1 multiple_include_encodings.texi:l8
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{documentdescription_EUC_CN.texi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{documentdescription_EUC_CN.texi}
   *@documentencoding C1 documentdescription_EUC_CN.texi:l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{2}
   |input_encoding_name:{euc-cn}
   |text_arg:{EUC-CN}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {EUC-CN}
   {empty_line:\\n}
   *1 @documentdescription C3 documentdescription_EUC_CN.texi:l3
   >SOURCEMARKS
   >include<end;1>
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {Sample 示例 \\n}
    *@end C1 documentdescription_EUC_CN.texi:l5
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{documentdescription}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {documentdescription}
   {empty_line:\\n}
   *@documentencoding C1 multiple_include_encodings.texi:l10
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{3}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
 *2 @node C1 multiple_include_encodings.texi:l12 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C4 multiple_include_encodings.texi:l13 {include files with multiple encodings}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E5|E7|E9|E11|E18|E20]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {include files with multiple encodings}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;2><p:1>
   >*@include C1 multiple_include_encodings.texi:l15
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{verbatim_encoded_latin1.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{verbatim_encoded_latin1.texi}
  *paragraph C1
   {é\\n}
   >SOURCEMARKS
   >include<end;2><p:2>
  {empty_line:\\n}
 *4 @node C1 multiple_include_encodings.texi:l17 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[next->E6|prev->E2|up->E2]
 |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 *5 @chapter C6 multiple_include_encodings.texi:l18 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[next->E7|up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E7|prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;3><p:1>
   >*@include C1 multiple_include_encodings.texi:l20
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{chapter_japanese_shift_jis.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{chapter_japanese_shift_jis.texi}
  *@documentencoding C1 chapter_japanese_shift_jis.texi:l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |input_encoding_name:{shift_jis}
  |text_arg:{shift_jis}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {shift_jis}
  *@documentlanguage C1 chapter_japanese_shift_jis.texi:l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{ja}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ja}
  {empty_line:\\n}
  {empty_line:\\n}
 *6 @node C1 chapter_japanese_shift_jis.texi:l5 {Preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |is_target:{1}
 |node_directions:D[next->E8|prev->E4|up->E2]
 |normalized:{Preface}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Preface}
 *7 @chapter C7 chapter_japanese_shift_jis.texi:l6 {Preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E6]
 |section_directions:D[next->E9|prev->E5|up->E3]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E9|prev->E5|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Preface}
  {empty_line:\\n}
  *paragraph C1
   {これは GNU LilyPond バージョン \\n}
  {empty_line:\\n}
  *paragraph C1
   {それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。\\n}
  {empty_line:\\n}
  {empty_line:\\n}
 *8 @node C1 chapter_japanese_shift_jis.texi:l13 {Introduction}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |node_directions:D[next->E10|prev->E6|up->E2]
 |normalized:{Introduction}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Introduction}
 *9 @chapter C7 chapter_japanese_shift_jis.texi:l14 {Introduction}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[next->E11|prev->E7|up->E3]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E11|prev->E7|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Introduction}
  {empty_line:\\n}
  *paragraph C1
   {この章では読者に LilyPond とこのドキュメントについての紹介を行います。\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<end;3><p:1>
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;4><p:1>
   >*@include C1 multiple_include_encodings.texi:l22
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{chapter_char_latin2_latin2_in_refs.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{chapter_char_latin2_latin2_in_refs.texi}
  *@documentencoding C1 chapter_char_latin2_latin2_in_refs.texi:l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |input_encoding_name:{iso-8859-2}
  |text_arg:{ISO-8859-2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ISO-8859-2}
  {empty_line:\\n}
 *10 @node C1 chapter_char_latin2_latin2_in_refs.texi:l3 {char latin2 latin2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E11]
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E13]
 |node_directions:D[next->E17|prev->E8|up->E2]
 |normalized:{char-latin2-latin2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {char latin2 latin2}
 *11 @chapter C9 chapter_char_latin2_latin2_in_refs.texi:l4 {char latin2 latin2 in refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E10]
 |section_childs:EC[E15]
 |section_directions:D[next->E18|prev->E9|up->E3]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E18|prev->E9|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {char latin2 latin2 in refs}
  {empty_line:\\n}
  *paragraph C2
   *12 @ref C1 chapter_char_latin2_latin2_in_refs.texi:l6
    *brace_arg C1
    |EXTRA
    |node_content:{Ą ą ˛ Ę ę}
    |normalized:{_0104-_0105-_02db-_0118-_0119}
     {Ą ą ˛ Ę ę}
   {.\\n}
  {empty_line:\\n}
  *@printindex C1 chapter_char_latin2_latin2_in_refs.texi:l8
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek\\n}
  *13 @menu C3 chapter_char_latin2_latin2_in_refs.texi:l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 chapter_char_latin2_latin2_in_refs.texi:l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Ą ą ˛ Ę ę}
    |normalized:{_0104-_0105-_02db-_0118-_0119}
     {Ą ą ˛ Ę ę}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 chapter_char_latin2_latin2_in_refs.texi:l13
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
 *14 @node C1 chapter_char_latin2_latin2_in_refs.texi:l15 {Ą ą ˛ Ę ę}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[up->E10]
 |node_directions:D[up->E10]
 |normalized:{_0104-_0105-_02db-_0118-_0119}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
 *15 @section C7 chapter_char_latin2_latin2_in_refs.texi:l16 {Ą ą ˛ Ę ę}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[up->E11]
 |section_level:{2}
 |section_number:{4.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
  {empty_line:\\n}
  *16 index_entry_command@cindex C1 chapter_char_latin2_latin2_in_refs.texi:l18
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E14]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<end;4><p:1>
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;5><p:1>
   >*@include C1 multiple_include_encodings.texi:l24
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{chapter_chinese_mixed_with_en_EUC_CN.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{chapter_chinese_mixed_with_en_EUC_CN.texi}
  *@documentencoding C1 chapter_chinese_mixed_with_en_EUC_CN.texi:l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{6}
  |input_encoding_name:{euc-cn}
  |text_arg:{EUC-CN}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {EUC-CN}
  {empty_line:\\n}
 *17 @node C1 chapter_chinese_mixed_with_en_EUC_CN.texi:l3 {Mixed english and chinese EUC-CN}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E18]
 |is_target:{1}
 |node_directions:D[next->E19|prev->E10|up->E2]
 |normalized:{Mixed-english-and-chinese-EUC_002dCN}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Mixed english and chinese EUC-CN}
 *18 @chapter C25 chapter_chinese_mixed_with_en_EUC_CN.texi:l4 {Mixed english and chinese EUC-CN}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E17]
 |section_directions:D[next->E20|prev->E11|up->E3]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E20|prev->E11|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Mixed english and chinese EUC-CN}
  {empty_line:\\n}
  *paragraph C2
   {Example of english and chinese, chinese aligned or not.\\n}
   {1. english only\\n}
  {empty_line:\\n}
  *paragraph C5
   {The Emacs mode for programming in Ada 95 with GNAT helps the user\\n}
   {in\\n}
   {understanding existing code and facilitates writing new code.  It\\n}
   {furthermore provides some utility functions for easier integration of\\n}
   {standard Emacs features when programming in Ada.\\n}
  {empty_line:\\n}
  *paragraph C1
   {2. chinese already aligned in source(this result)\\n}
  {empty_line:\\n}
  *paragraph C2
   {这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取\\n}
   {变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）\\n}
  {empty_line:\\n}
  *paragraph C1
   {3. chinese not aligned in source\\n}
  {empty_line:\\n}
  *paragraph C4
   {这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存\\n}
   {读取\\n}
   {变量的值，而不是作某些优化。\\n}
   {（这些优化有可能导致程序不能获得正确的值）\\n}
  {empty_line:\\n}
  *paragraph C1
   {4. a mix of chinese and english\\n}
  {empty_line:\\n}
  *paragraph C2
   {restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory\\n}
   {overlap。\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<end;5><p:1>
  {empty_line:\\n}
  *@c C1
   {rawline_arg: need to finish with an encoding that can accept all the\\n}
  *@c C1
   {rawline_arg: codepoints used in the other encodings\\n}
  {empty_line:\\n}
  >SOURCEMARKS
  >include<start;6><p:1>
   >*@include C1 multiple_include_encodings.texi:l29
   >|INFO
   >|spaces_before_argument:
    >|{ }
   >|EXTRA
   >|text_arg:{chapter_chinese_mixed_with_en.texi}
    >*line_arg C1
    >|INFO
    >|spaces_after_argument:
     >|{\\n}
     >{chapter_chinese_mixed_with_en.texi}
  *@documentencoding C1 chapter_chinese_mixed_with_en.texi:l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{7}
  |input_encoding_name:{utf-8}
  |text_arg:{utf-8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {utf-8}
  {empty_line:\\n}
 *19 @node C1 chapter_chinese_mixed_with_en.texi:l3 {Mixed chinese and english utf-8}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E20]
 |is_target:{1}
 |node_directions:D[prev->E17|up->E2]
 |normalized:{Mixed-chinese-and-english-utf_002d8}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Mixed chinese and english utf-8}
 *20 @chapter C21 chapter_chinese_mixed_with_en.texi:l4 {Mixed chinese and english utf-8}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E19]
 |section_directions:D[prev->E18|up->E3]
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[prev->E18|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Mixed chinese and english utf-8}
  {empty_line:\\n}
  *paragraph C1
   {Example of english and chinese, chinese aligned or not.\\n}
  {empty_line:\\n}
  *paragraph C1
   {1. english only\\n}
  {empty_line:\\n}
  *paragraph C5
   {The Emacs mode for programming in Ada 95 with GNAT helps the user\\n}
   {in\\n}
   {understanding existing code and facilitates writing new code.  It\\n}
   {furthermore provides some utility functions for easier integration of\\n}
   {standard Emacs features when programming in Ada.\\n}
  {empty_line:\\n}
  *paragraph C1
   {2. chinese already aligned in source(this result)\\n}
  {empty_line:\\n}
  *paragraph C2
   {这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取\\n}
   {变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）\\n}
  {empty_line:\\n}
  *paragraph C1
   {3. chinese not aligned in source\\n}
  {empty_line:\\n}
  *paragraph C4
   {这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存\\n}
   {读取\\n}
   {变量的值，而不是作某些优化。\\n}
   {（这些优化有可能导致程序不能获得正确的值）\\n}
  {empty_line:\\n}
  *paragraph C1
   {4. a mix of chinese and english\\n}
  {empty_line:\\n}
  *paragraph C2
   {restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory\\n}
   {overlap。\\n}
  {empty_line:\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
 *postamble_after_end C3
  {}
  >SOURCEMARKS
  >include<end;6>
  {text_after_end:\\n}
  {text_after_end:@bye\\n}
';


$result_texis{'multiple_include_encodings'} = '\\input texinfo.tex
@documentencoding ISO-8859-1

@copying
Télé.
@end copying

@documentencoding EUC-CN

@documentdescription
Sample 示例 
@end documentdescription

@documentencoding ISO-8859-1

@node Top
@top include files with multiple encodings

é

@node ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
@chapter ä ë ï ö ü ÿ Ä Ë Ï Ö Ü

@documentencoding shift_jis
@documentlanguage ja


@node Preface
@chapter Preface

これは GNU LilyPond バージョン 

それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。


@node Introduction
@chapter Introduction

この章では読者に LilyPond とこのドキュメントについての紹介を行います。


@documentencoding ISO-8859-2

@node char latin2 latin2
@chapter char latin2 latin2 in refs

@ref{Ą ą ˛ Ę ę}.

@printindex cp

@c Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
@menu
* Ą ą ˛ Ę ę::
@end menu

@node Ą ą ˛ Ę ę
@section Ą ą ˛ Ę ę

@cindex Ą ą ˛ Ę ę


@documentencoding EUC-CN

@node Mixed english and chinese EUC-CN
@chapter Mixed english and chinese EUC-CN

Example of english and chinese, chinese aligned or not.
1. english only

The Emacs mode for programming in Ada 95 with GNAT helps the user
in
understanding existing code and facilitates writing new code.  It
furthermore provides some utility functions for easier integration of
standard Emacs features when programming in Ada.

2. chinese already aligned in source(this result)

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取
变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）

3. chinese not aligned in source

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存
读取
变量的值，而不是作某些优化。
（这些优化有可能导致程序不能获得正确的值）

4. a mix of chinese and english

restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory
overlap。



@c need to finish with an encoding that can accept all the
@c codepoints used in the other encodings

@documentencoding utf-8

@node Mixed chinese and english utf-8
@chapter Mixed chinese and english utf-8

Example of english and chinese, chinese aligned or not.

1. english only

The Emacs mode for programming in Ada 95 with GNAT helps the user
in
understanding existing code and facilitates writing new code.  It
furthermore provides some utility functions for easier integration of
standard Emacs features when programming in Ada.

2. chinese already aligned in source(this result)

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取
变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）

3. chinese not aligned in source

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存
读取
变量的值，而不是作某些优化。
（这些优化有可能导致程序不能获得正确的值）

4. a mix of chinese and english

restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory
overlap。


@bye

@bye
';


$result_texts{'multiple_include_encodings'} = '




include files with multiple encodings
*************************************

é

1 ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
***********************



2 Preface
*********

これは GNU LilyPond バージョン 

それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。


3 Introduction
**************

この章では読者に LilyPond とこのドキュメントについての紹介を行います。



4 char latin2 latin2 in refs
****************************

Ą ą ˛ Ę ę.


* Ą ą ˛ Ę ę::

4.1 Ą ą ˛ Ę ę
=============




5 Mixed english and chinese EUC-CN
**********************************

Example of english and chinese, chinese aligned or not.
1. english only

The Emacs mode for programming in Ada 95 with GNAT helps the user
in
understanding existing code and facilitates writing new code.  It
furthermore provides some utility functions for easier integration of
standard Emacs features when programming in Ada.

2. chinese already aligned in source(this result)

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取
变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）

3. chinese not aligned in source

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存
读取
变量的值，而不是作某些优化。
（这些优化有可能导致程序不能获得正确的值）

4. a mix of chinese and english

restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory
overlap。





6 Mixed chinese and english utf-8
*********************************

Example of english and chinese, chinese aligned or not.

1. english only

The Emacs mode for programming in Ada 95 with GNAT helps the user
in
understanding existing code and facilitates writing new code.  It
furthermore provides some utility functions for easier integration of
standard Emacs features when programming in Ada.

2. chinese already aligned in source(this result)

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存读取
变量的值，而不是作某些优化。（这些优化有可能导致程序不能获得正确的值）

3. chinese not aligned in source

这常用于修饰多个线程会访问或修改的全局变量，让编译器保证每次都从内存
读取
变量的值，而不是作某些优化。
（这些优化有可能导致程序不能获得正确的值）

4. a mix of chinese and english

restrict 表示在当前 scope 内不允许其它变量指向它。用处，比如防止 memory
overlap。


';

$result_sectioning{'multiple_include_encodings'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Preface'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Introduction'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'char-latin2-latin2'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '_0104-_0105-_02db-_0118-_0119'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '4.1'
                    }
                  }
                ],
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '4',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Mixed-english-and-chinese-EUC_002dCN'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '5',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Mixed-chinese-and-english-utf_002d8'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '6',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_include_encodings'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'multiple_include_encodings'};

$result_nodes{'multiple_include_encodings'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'associated_section' => {
                                'cmdname' => 'chapter',
                                'extra' => {
                                  'section_number' => '4'
                                }
                              },
                              'isindex' => 1,
                              'node_directions' => {
                                'next' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'associated_section' => {
                                      'cmdname' => 'chapter',
                                      'extra' => {
                                        'section_number' => '5'
                                      }
                                    },
                                    'node_directions' => {
                                      'next' => {
                                        'cmdname' => 'node',
                                        'extra' => {
                                          'associated_section' => {
                                            'cmdname' => 'chapter',
                                            'extra' => {
                                              'section_number' => '6'
                                            }
                                          },
                                          'node_directions' => {
                                            'prev' => {},
                                            'up' => {}
                                          },
                                          'normalized' => 'Mixed-chinese-and-english-utf_002d8'
                                        }
                                      },
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'Mixed-english-and-chinese-EUC_002dCN'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'char-latin2-latin2'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'Introduction'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Preface'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '4.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => '_0104-_0105-_02db-_0118-_0119'
    }
  },
  {},
  {}
];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0];
$result_nodes{'multiple_include_encodings'}[1] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[2] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[3] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[4] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[5]{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[6] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_include_encodings'}[7] = $result_nodes{'multiple_include_encodings'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'multiple_include_encodings'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
    }
  },
  {
    'extra' => {
      'normalized' => 'Preface'
    }
  },
  {
    'extra' => {
      'normalized' => 'Introduction'
    }
  },
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'char-latin2-latin2'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => '_0104-_0105-_02db-_0118-_0119'
    }
  },
  {
    'extra' => {
      'normalized' => 'Mixed-english-and-chinese-EUC_002dCN'
    }
  },
  {
    'extra' => {
      'normalized' => 'Mixed-chinese-and-english-utf_002d8'
    }
  }
];
$result_menus{'multiple_include_encodings'}[5]{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_include_encodings'}[4];

$result_errors{'multiple_include_encodings'} = [
  {
    'error_line' => 'warning: encoding `EUC-CN\' is not a canonical texinfo encoding
',
    'file_name' => 'documentdescription_EUC_CN.texi',
    'line_nr' => 1,
    'text' => 'encoding `EUC-CN\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: encoding `shift_jis\' is not a canonical texinfo encoding
',
    'file_name' => 'chapter_japanese_shift_jis.texi',
    'line_nr' => 1,
    'text' => 'encoding `shift_jis\' is not a canonical texinfo encoding',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: encoding `EUC-CN\' is not a canonical texinfo encoding
',
    'file_name' => 'chapter_chinese_mixed_with_en_EUC_CN.texi',
    'line_nr' => 1,
    'text' => 'encoding `EUC-CN\' is not a canonical texinfo encoding',
    'type' => 'warning'
  }
];


$result_floats{'multiple_include_encodings'} = {};


$result_indices_sort_strings{'multiple_include_encodings'} = {
  'cp' => [
    "\x{104} \x{105} \x{2db} \x{118} \x{119}"
  ]
};


1;
