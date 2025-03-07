use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'in_menu_only_special_spaces_node_menu'} = '*document_root C16
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 in_menu_only_special_spaces_node.texi:l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 in_menu_only_special_spaces_node.texi:l3 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6|E8|E10|E12|E14]
 |section_level:{0}
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
    {top}
  {empty_line:\\n}
  *2 @menu C8 in_menu_only_special_spaces_node.texi:l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{   }
    |normalized:{_2002_2003_2002}
     {   }
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l7
    {menu_entry_leading_text:* \\t\\f}
    *menu_entry_node
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l8
    {menu_entry_leading_text:* '."\r".'}
    *menu_entry_node
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{  }
    |normalized:{_0085_00a0_1680}
     {  }
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{᠎ }
    |normalized:{_180e_2003}
     {᠎ }
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_spaces_node.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{         　}
    |normalized:{_2004_2005_2006_2007_2008_2009_200a_202f_205f_3000}
     {         　}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C2
      {\\n}
      *@c C1
       {rawline_arg: *   ::\\n}
   *@end C1 in_menu_only_special_spaces_node.texi:l13
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
  {empty_line:\\n}
 *3 @node C1 in_menu_only_special_spaces_node.texi:l16 {   }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E9|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{_2002_2003_2002}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {   }
 *4 @chapter C2 in_menu_only_special_spaces_node.texi:l17 {EN QUAD| | EM QUAD| | EN SPACE| |}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {EN QUAD| | EM QUAD| | EN SPACE| |}
  {empty_line:\\n}
 *5 @node C1 in_menu_only_special_spaces_node.texi:l19
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ \\t\\f\\n}
 *6 @chapter C2 in_menu_only_special_spaces_node.texi:l20 {CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CHARACTER TABULATION|\\t| FORM FEED|\\f| LINE TABULATION||}
  {empty_line:\\n}
 *7 @node C1 in_menu_only_special_spaces_node.texi:l22
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ '."\r".'\\n}
 *8 @chapter C2 in_menu_only_special_spaces_node.texi:l23 {CARRIAGE RETURN|'."\r".'|}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CARRIAGE RETURN|'."\r".'|}
  {empty_line:\\n}
 *9 @node C1 in_menu_only_special_spaces_node.texi:l25 {  }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[next->E11|prev->E3|up->E0]
 |node_directions:D[next->E11|prev->E7|up->E0]
 |normalized:{_0085_00a0_1680}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {  }
 *10 @chapter C2 in_menu_only_special_spaces_node.texi:l26 {NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |}
  {empty_line:\\n}
 *11 @node C1 in_menu_only_special_spaces_node.texi:l28 {᠎ }
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E9|up->E0]
 |node_directions:D[next->E13|prev->E9|up->E0]
 |normalized:{_180e_2003}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {᠎ }
 *12 @chapter C2 in_menu_only_special_spaces_node.texi:l29 {MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[next->E14|prev->E10|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E14|prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |}
  {empty_line:\\n}
 *13 @node C1 in_menu_only_special_spaces_node.texi:l31 {         　}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |associated_title_command:[E14]
 |is_target:{1}
 |menu_directions:D[prev->E11|up->E0]
 |node_directions:D[prev->E11|up->E0]
 |normalized:{_2004_2005_2006_2007_2008_2009_200a_202f_205f_3000}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {         　}
 *14 @chapter C6 in_menu_only_special_spaces_node.texi:l32 {THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E13]
 |associated_node:[E13]
 |section_directions:D[prev->E12|up->E1]
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[prev->E12|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: Perl and XS code give different width.\\n}
  *@c C1
   {rawline_arg: @node   \\n}
  *@c C1
   {rawline_arg: @chapter LINE SEPARATOR| | PARAGRAPH SEPARATOR| |\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'in_menu_only_special_spaces_node_menu'} = '
@node Top
@top top

@menu
*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*          　::
@c *   ::
@end menu


@node    
@chapter EN QUAD| | EM QUAD| | EN SPACE| |

@node 	
@chapter CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node   
@chapter NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |

@node ᠎ 
@chapter MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |

@node          　
@chapter THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|

@c Perl and XS code give different width.
@c @node   
@c @chapter LINE SEPARATOR| | PARAGRAPH SEPARATOR| |

@bye
';


$result_texts{'in_menu_only_special_spaces_node_menu'} = 'top
***

*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*          　::


1 EN QUAD| | EM QUAD| | EN SPACE| |
***********************************

2 CHARACTER TABULATION|	| FORM FEED|| LINE TABULATION||
******************************************************

3 CARRIAGE RETURN|'."\r".'|
*******************

4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |
*********************************************************

5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |
*****************************************

6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|
*************************************************************************************************************************************************************************************************************


';

$result_errors{'in_menu_only_special_spaces_node_menu'} = [
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 7,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 8,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 19,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 22,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => "warning: node next pointer for `\x{2000}\x{2001}\x{2002}' is `' but next is `\x{85}\x{a0}\x{1680}' in menu
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 16,
    'text' => "node next pointer for `\x{2000}\x{2001}\x{2002}' is `' but next is `\x{85}\x{a0}\x{1680}' in menu",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: node prev pointer for `\x{85}\x{a0}\x{1680}' is `' but prev is `\x{2000}\x{2001}\x{2002}' in menu
",
    'file_name' => 'in_menu_only_special_spaces_node.texi',
    'line_nr' => 25,
    'text' => "node prev pointer for `\x{85}\x{a0}\x{1680}' is `' but prev is `\x{2000}\x{2001}\x{2002}' in menu",
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'in_menu_only_special_spaces_node_menu'} = 'This is , produced from in_menu_only_special_spaces_node.texi.


File: ,  Node: Top,  Next:    ,  Up: (dir)

top
***

* Menu:

*    ::
* 	::
* '."\r".'::
*   ::
* ᠎ ::
*          　::


File: ,  Node:    ,  Next: ,  Prev: Top,  Up: Top

1 EN QUAD| | EM QUAD| | EN SPACE| |
***********************************

2 CHARACTER TABULATION| | FORM FEED| | LINE TABULATION| |
*********************************************************

3 CARRIAGE RETURN| |
********************


File: ,  Node:   ,  Next: ᠎ ,  Prev: ,  Up: Top

4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |
*********************************************************


File: ,  Node: ᠎ ,  Next:          　,  Prev:   ,  Up: Top

5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |
*****************************************


File: ,  Node:          　,  Prev: ᠎ ,  Up: Top

6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|
*************************************************************************************************************************************************************************************************************


Tag Table:
Node: Top64
Node:    181
Node:   467
Node: ᠎ 637
Node:          　785

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'in_menu_only_special_spaces_node_menu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#g_t_2002_2003_2002" accesskey="n" rel="next">EN QUAD| | EM QUAD| | EN SPACE| |</a> &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#g_t_2002_2003_2002" accesskey="1">   </a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; :</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; :</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#g_t_0085_00a0_1680" accesskey="4">  </a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#g_t_180e_2003" accesskey="5">᠎ </a>:</td><td class="menu-entry-description">
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#g_t_2004_2005_2006_2007_2008_2009_200a_202f_205f_3000" accesskey="6">         　</a>:</td><td class="menu-entry-description">
</td></tr>
</table>


<hr>
<div class="chapter-level-extent" id="g_t_2002_2003_2002">
<div class="nav-panel">
<p>
Next: CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c"><span>1 EN QUAD| | EM QUAD| | EN SPACE| |<a class="copiable-link" href="#EN-QUAD_007c-_007c-EM-QUAD_007c-_007c-EN-SPACE_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent">
<h2 class="chapter" id="CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c"><span>2 CHARACTER TABULATION|	| FORM FEED|&#12;| LINE TABULATION||<a class="copiable-link" href="#CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c-LINE-TABULATION_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent">
<h2 class="chapter" id="CARRIAGE-RETURN_007c-_007c"><span>3 CARRIAGE RETURN|'."\r".'|<a class="copiable-link" href="#CARRIAGE-RETURN_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="g_t_0085_00a0_1680">
<div class="nav-panel">
<p>
Next: <a href="#g_t_180e_2003" accesskey="n" rel="next">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</a>, Previous: CARRIAGE RETURN|'."\r".'|, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="NEXT-LINE-_0028NEL_0029_007c_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"><span>4 NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |<a class="copiable-link" href="#NEXT-LINE-_0028NEL_0029_007c_007c-NO_002dBREAK-SPACE_007c-_007c-OGHAM-SPACE-MARK_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="g_t_180e_2003">
<div class="nav-panel">
<p>
Next: <a href="#g_t_2004_2005_2006_2007_2008_2009_200a_202f_205f_3000" accesskey="n" rel="next">THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|</a>, Previous: <a href="#g_t_0085_00a0_1680" accesskey="p" rel="prev">NEXT LINE (NEL)|| NO-BREAK SPACE| | OGHAM SPACE MARK| |</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="MONGOLIAN-VOWEL-SEPARATOR_007c_007c-EM-SPACE_007c-_007c"><span>5 MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |<a class="copiable-link" href="#MONGOLIAN-VOWEL-SEPARATOR_007c_007c-EM-SPACE_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent" id="g_t_2004_2005_2006_2007_2008_2009_200a_202f_205f_3000">
<div class="nav-panel">
<p>
Previous: <a href="#g_t_180e_2003" accesskey="p" rel="prev">MONGOLIAN VOWEL SEPARATOR|᠎| EM SPACE| |</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c-FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c-HAIR-SPACE_007c-_007c-NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c_005b_003f_005d_007c-IDEOGRAPHIC-SPACE_007c-_007c"><span>6 THREE-PER-EM SPACE| | FOUR-PER-EM SPACE| | SIX-PER-EM SPACE| | FIGURE SPACE| | PUNCTUATION SPACE| | THIN SPACE| | HAIR SPACE| | NARROW NO-BREAK SPACE| | MEDIUM MATHEMATICAL SPACE| | IDEOGRAPHIC SPACE|　|<a class="copiable-link" href="#THREE_002dPER_002dEM-SPACE_007c-_007c-FOUR_002dPER_002dEM-SPACE_007c-_007c-SIX_002dPER_002dEM-SPACE_007c-_007c-FIGURE-SPACE_007c-_007c-PUNCTUATION-SPACE_007c-_007c-THIN-SPACE_007c-_007c-HAIR-SPACE_007c-_007c-NARROW-NO_002dBREAK-SPACE_007c-_007c-MEDIUM-MATHEMATICAL-SPACE_007c_005b_003f_005d_007c-IDEOGRAPHIC-SPACE_007c-_007c"> &para;</a></span></h2>


</div>
</div>



</body>
</html>
';

1;
