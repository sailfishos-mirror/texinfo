use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'in_menu_only_special_ascii_spaces_node'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 in_menu_only_special_ascii_spaces_node.texi:l1 {Top}
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
 *1 @top C4 in_menu_only_special_ascii_spaces_node.texi:l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6]
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
  *2 @menu C4 in_menu_only_special_ascii_spaces_node.texi:l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 in_menu_only_special_ascii_spaces_node.texi:l5
    {menu_entry_leading_text:* '."\r".'}
    *menu_entry_node
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 in_menu_only_special_ascii_spaces_node.texi:l6
    {menu_entry_leading_text:* \\t\\f}
    *menu_entry_node
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 in_menu_only_special_ascii_spaces_node.texi:l7
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
 *3 @node C1 in_menu_only_special_ascii_spaces_node.texi:l9
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ '."\r".'\\n}
 *4 @chapter C2 in_menu_only_special_ascii_spaces_node.texi:l10 {CARRIAGE RETURN|'."\r".'|}
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
    {CARRIAGE RETURN|'."\r".'|}
  {empty_line:\\n}
 *5 @node C1 in_menu_only_special_ascii_spaces_node.texi:l12
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ \\t\\f\\n}
 *6 @chapter C2 in_menu_only_special_ascii_spaces_node.texi:l13 {CHARACTER TABULATION|	| FORM FEED||}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {CHARACTER TABULATION|\\t| FORM FEED|\\f|}
  {empty_line:\\n}
';


$result_texis{'in_menu_only_special_ascii_spaces_node'} = '@node Top
@top top

@menu
* '."\r".'::
* 	::
@end menu

@node '."\r".'
@chapter CARRIAGE RETURN|'."\r".'|

@node 	
@chapter CHARACTER TABULATION|	| FORM FEED||

';


$result_texts{'in_menu_only_special_ascii_spaces_node'} = 'top
***

* '."\r".'::
* 	::

1 CARRIAGE RETURN|'."\r".'|
*******************

2 CHARACTER TABULATION|	| FORM FEED||
************************************

';

$result_errors{'in_menu_only_special_ascii_spaces_node'} = [
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 5,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name in menu entry
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 6,
    'text' => 'empty node name in menu entry',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 9,
    'text' => 'empty argument in @node',
    'type' => 'error'
  },
  {
    'error_line' => 'empty argument in @node
',
    'file_name' => 'in_menu_only_special_ascii_spaces_node.texi',
    'line_nr' => 12,
    'text' => 'empty argument in @node',
    'type' => 'error'
  }
];



$result_converted{'info'}->{'in_menu_only_special_ascii_spaces_node'} = 'This is , produced from in_menu_only_special_ascii_spaces_node.texi.


File: ,  Node: Top,  Next: ,  Up: (dir)

top
***

* Menu:

* '."\r".'::
* 	::

1 CARRIAGE RETURN| |
********************

2 CHARACTER TABULATION| | FORM FEED| |
**************************************


Tag Table:
Node: Top70

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'in_menu_only_special_ascii_spaces_node'} = '<!DOCTYPE html>
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
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: CARRIAGE RETURN|'."\r".'| &nbsp; </p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>


<ul class="mini-toc">
<li>CARRIAGE RETURN|'."\r".'|</li>
<li>CHARACTER TABULATION|	| FORM FEED|&#12;|</li>
</ul>
<hr>
<div class="chapter-level-extent">
<h2 class="chapter" id="CARRIAGE-RETURN_007c-_007c"><span>1 CARRIAGE RETURN|'."\r".'|<a class="copiable-link" href="#CARRIAGE-RETURN_007c-_007c"> &para;</a></span></h2>

<hr>
</div>
<div class="chapter-level-extent">
<h2 class="chapter" id="CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c"><span>2 CHARACTER TABULATION|	| FORM FEED|&#12;|<a class="copiable-link" href="#CHARACTER-TABULATION_007c-_007c-FORM-FEED_007c-_007c"> &para;</a></span></h2>

</div>
</div>



</body>
</html>
';

1;
