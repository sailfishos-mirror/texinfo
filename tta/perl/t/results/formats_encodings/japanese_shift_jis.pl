use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'japanese_shift_jis'} = '*document_root C8
 *before_node_section C2
  *preamble_before_setfilename C2
   *preamble_before_beginning C1
    {text_before_beginning:\\input texinfo @c -*- coding: utf-8; mode: texinfo; -*-\\n}
   *@documentencoding C1 japanese_shift_jis.texi:l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{shift_jis}
   |text_arg:{shift_jis}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {shift_jis}
  *preamble_before_content C5
   *@setfilename C1 japanese_shift_jis.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{japanese_shift_jis.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {japanese_shift_jis.info}
   *@settitle C1 japanese_shift_jis.texi:l4
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {GNU LilyPond -- Manuel d\'initiation japanese}
   {empty_line:\\n}
   *@documentlanguage C1 japanese_shift_jis.texi:l6
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
 *0 @node C1 japanese_shift_jis.texi:l8 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E6]
 |node_directions:D[next->E7]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C9 japanese_shift_jis.texi:l9 {GNU LilyPond --- 学習マニュアル}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E8|E10]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E8]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {GNU LilyPond --- 学習マニュアル}
  {empty_line:\\n}
  *2 @copying C7 japanese_shift_jis.texi:l11
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C3
    {Copyright }
    *3 @copyright C1 japanese_shift_jis.texi:l12
     *brace_container
    { 1999--2008 著作者一同\\n}
   {empty_line:\\n}
   *paragraph C2
    *4 @emph C1 japanese_shift_jis.texi:l14
     *brace_container C3
      {The translation of the following copyright notice is provided\\n}
      {for courtesy to non-English speakers, but only the notice in English\\n}
      {legally counts.}
    {\\n}
   {empty_line:\\n}
   *paragraph C2
    *5 @emph C1 japanese_shift_jis.texi:l18
     *brace_container C2
      {以下は英語を話さない人々のための著作権についての注意書きです。しかしながら、\\n}
      {英語で書かれた注意書きだけが法的に有効です。}
    {\\n}
   *@end C1 japanese_shift_jis.texi:l20
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
  {empty_line:\\n}
  *paragraph C1
   {これは GNU LilyPond バージョン \\n}
  {empty_line:\\n}
  *6 @menu C4 japanese_shift_jis.texi:l25
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 japanese_shift_jis.texi:l26
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Preface}
    |normalized:{Preface}
     {Preface}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 japanese_shift_jis.texi:l27
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Introduction}
    |normalized:{Introduction}
     {Introduction}
    {menu_entry_separator:::                   }
    *menu_entry_description C1
     *preformatted C1
      {LilyPond とは何なのか、なぜ LilyPond を使うのか、どうやって LilyPond を使うのか\\n}
   *@end C1 japanese_shift_jis.texi:l28
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
 *7 @node C1 japanese_shift_jis.texi:l30 {Preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |menu_directions:D[next->E9|up->E0]
 |node_directions:D[next->E9|prev->E0|up->E0]
 |normalized:{Preface}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Preface}
 *8 @chapter C5 japanese_shift_jis.texi:l31 {Preface}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[next->E10|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E10|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Preface}
  {empty_line:\\n}
  *paragraph C1
   {それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。\\n}
  {empty_line:\\n}
  {empty_line:\\n}
 *9 @node C1 japanese_shift_jis.texi:l36 {Introduction}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[prev->E7|up->E0]
 |node_directions:D[prev->E7|up->E0]
 |normalized:{Introduction}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Introduction}
 *10 @chapter C4 japanese_shift_jis.texi:l37 {Introduction}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[prev->E8|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E8|up->E1]
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
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'japanese_shift_jis'} = '\\input texinfo @c -*- coding: utf-8; mode: texinfo; -*-
@documentencoding shift_jis
@setfilename japanese_shift_jis.info
@settitle GNU LilyPond -- Manuel d\'initiation japanese

@documentlanguage ja

@node Top
@top GNU LilyPond --- 学習マニュアル

@copying
Copyright @copyright{} 1999--2008 著作者一同

@emph{The translation of the following copyright notice is provided
for courtesy to non-English speakers, but only the notice in English
legally counts.}

@emph{以下は英語を話さない人々のための著作権についての注意書きです。しかしながら、
英語で書かれた注意書きだけが法的に有効です。}
@end copying


これは GNU LilyPond バージョン 

@menu
* Preface::
* Introduction::                   LilyPond とは何なのか、なぜ LilyPond を使うのか、どうやって LilyPond を使うのか
@end menu

@node Preface
@chapter Preface

それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。


@node Introduction
@chapter Introduction

この章では読者に LilyPond とこのドキュメントについての紹介を行います。

@bye
';


$result_texts{'japanese_shift_jis'} = '

GNU LilyPond -- 学習マニュアル
******************************



これは GNU LilyPond バージョン 

* Preface::
* Introduction::                   LilyPond とは何なのか、なぜ LilyPond を使うのか、どうやって LilyPond を使うのか

1 Preface
*********

それは 1995 年のある日の EJE (Eindhoven Youth Orchestra) のリハーサル中のできごとでした − ある変わり者のバイオリン奏者であるジャンは同じく変わり者のフレンチホルン奏者のハン-ウェンに彼がかかわっている新しい大きなプロジェクトのことを話しました。それは音楽を出版するための自動化されたシステムです (正確には、それは MPP − MusiXTeX のプリプロセッサです)。それを聞いてハン-ウェンはすぐに楽譜からいくつかの部分をプリントアウトしたいと思い、彼はそのためのソフトウェアを探し始め、すぐにその虜になってしまいました。それが MPP の終わりを決定付けました。多くの哲学的考察を含み白熱した email の交換の後、ハン-ウェンは 1996 年に LilyPond の製作を開始しました。この時、ジャンはハン-ウェンの新しいプロジェクトに引きずり込まれました。


2 Introduction
**************

この章では読者に LilyPond とこのドキュメントについての紹介を行います。

';

$result_errors{'japanese_shift_jis'} = [
  {
    'error_line' => 'warning: encoding `shift_jis\' is not a canonical texinfo encoding
',
    'file_name' => 'japanese_shift_jis.texi',
    'line_nr' => 2,
    'text' => 'encoding `shift_jis\' is not a canonical texinfo encoding',
    'type' => 'warning'
  }
];


1;
