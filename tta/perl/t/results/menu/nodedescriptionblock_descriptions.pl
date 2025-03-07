use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodedescriptionblock_descriptions'} = '*document_root C13
 *before_node_section
 *0 @node C1 l1 {Top}
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
 *1 @top C4 l2 {test of nodedescriptionblock used in menu}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E12|E15|E19|E23]
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
    {test of nodedescriptionblock used in menu}
  {empty_line:\\n}
  *2 @menu C8 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{toto}
    |normalized:{toto}
     {toto}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{titi}
    |normalized:{titi}
     {titi}
    {menu_entry_separator:::  }
    *menu_entry_description C1
     *preformatted C1
      {desc of titi\\n}
   *menu_entry C6 l7
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {name of other}
    {menu_entry_separator:: }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other}
    |normalized:{other}
     {other}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{a somewhat long node without description nor following space}
    |normalized:{a-somewhat-long-node-without-description-nor-following-space}
     {a somewhat long node without description nor following space}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node double nodedescriptionblock}
    |normalized:{node-double-nodedescriptionblock}
     {node double nodedescriptionblock}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l11
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
 *3 @node C1 l13 {toto}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E11|up->E0]
 |node_description:[E5]
 |node_directions:D[next->E11|prev->E0|up->E0]
 |node_long_description:[E10]
 |normalized:{toto}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto}
 *4 @chapter C6 l14 {Toto}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E12|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E12|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Toto}
  {empty_line:\\n}
  *5 @nodedescription C1 l16
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto is there:: and the }
    *6 @emph C1 l16
     *brace_container C1
      {is a description}
    *7 @w C1 l16
     *brace_container C1
      {slightly long}
    { and }
    *8 @verb C1 l16
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:vv somewhat}
    { }
    *9 @ringaccent C1 l16
    |INFO
    |spaces_after_cmd_before_arg:
     |{ }
     *following_arg C1
      {a}
    {nexpected}
  {empty_line:\\n}
  *10 @nodedescriptionblock C3 l18
  |EXTRA
  |element_node:[E3]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {Block along line node description for toto\\n}
   *@end C1 l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *11 @node C1 l22 {titi}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |associated_title_command:[E12]
 |is_target:{1}
 |menu_directions:D[next->E14|prev->E3|up->E0]
 |node_description:[E13]
 |node_directions:D[next->E14|prev->E3|up->E0]
 |node_long_description:[E13]
 |normalized:{titi}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {titi}
 *12 @chapter C4 l23 {Titi}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E11]
 |associated_node:[E11]
 |section_directions:D[next->E15|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E15|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Titi}
  {empty_line:\\n}
  *13 @nodedescriptionblock C3 l25
  |EXTRA
  |element_node:[E11]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {description of titi in block\\n}
   *@end C1 l27
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *14 @node C1 l29 {other}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |associated_title_command:[E15]
 |is_target:{1}
 |menu_directions:D[next->E18|prev->E11|up->E0]
 |node_description:[E16]
 |node_directions:D[next->E18|prev->E11|up->E0]
 |node_long_description:[E16]
 |normalized:{other}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other}
 *15 @chapter C4 l30 {Other}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E14]
 |associated_node:[E14]
 |section_directions:D[next->E19|prev->E12|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E19|prev->E12|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other}
  {empty_line:\\n}
  *16 @nodedescriptionblock C7 l32
  |EXTRA
  |element_node:[E14]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {Long description of other\\n}
   {empty_line:\\n}
   *paragraph C1
    {Para2\\n}
   {empty_line:\\n}
   *17 @quotation C3 l37
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {a quotation in description\\n}
    *@end C1 l39
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{quotation}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {quotation}
   *@end C1 l40
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
 *18 @node C1 l42 {a somewhat long node without description nor following space}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E19]
 |associated_title_command:[E19]
 |is_target:{1}
 |menu_directions:D[next->E22|prev->E14|up->E0]
 |node_description:[E21]
 |node_directions:D[next->E22|prev->E14|up->E0]
 |node_long_description:[E20]
 |normalized:{a-somewhat-long-node-without-description-nor-following-space}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a somewhat long node without description nor following space}
 *19 @chapter C6 l43 {Somewhat long}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E18]
 |associated_node:[E18]
 |section_directions:D[next->E23|prev->E15|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E23|prev->E15|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Somewhat long}
  {empty_line:\\n}
  *20 @nodedescriptionblock C3 l45
  |EXTRA
  |element_node:[E18]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {Block description before, not as long as the node\\n}
   *@end C1 l47
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
  *21 @nodedescription C1 l49
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E18]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {not as long as the node}
  {empty_line:\\n}
 *22 @node C1 l51 {node double nodedescriptionblock}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E23]
 |associated_title_command:[E23]
 |is_target:{1}
 |menu_directions:D[prev->E18|up->E0]
 |node_description:[E24]
 |node_directions:D[prev->E18|up->E0]
 |node_long_description:[E24]
 |normalized:{node-double-nodedescriptionblock}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node double nodedescriptionblock}
 *23 @chapter C6 l52 {test double}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E22]
 |associated_node:[E22]
 |section_directions:D[prev->E19|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[prev->E19|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {test double}
  {empty_line:\\n}
  *24 @nodedescriptionblock C3 l54
  |EXTRA
  |element_node:[E22]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {block desc 1\\n}
   *@end C1 l56
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
  *25 @nodedescriptionblock C3 l58
  |EXTRA
  |element_node:[E22]
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *paragraph C1
    {block desc 2\\n}
   *@end C1 l60
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{nodedescriptionblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {nodedescriptionblock}
  {empty_line:\\n}
';


$result_texis{'nodedescriptionblock_descriptions'} = '@node Top
@top test of nodedescriptionblock used in menu

@menu
* toto::
* titi::  desc of titi
* name of other: other.

* a somewhat long node without description nor following space::
* node double nodedescriptionblock::
@end menu

@node toto
@chapter Toto

@nodedescription toto is there:: and the @emph{is a description}@w{slightly long} and @verb{:vv somewhat:} @ringaccent anexpected

@nodedescriptionblock
Block along line node description for toto
@end nodedescriptionblock

@node titi
@chapter Titi

@nodedescriptionblock
description of titi in block
@end nodedescriptionblock

@node other
@chapter Other

@nodedescriptionblock
Long description of other

Para2

@quotation
a quotation in description
@end quotation
@end nodedescriptionblock

@node a somewhat long node without description nor following space
@chapter Somewhat long

@nodedescriptionblock
Block description before, not as long as the node
@end nodedescriptionblock

@nodedescription not as long as the node

@node node double nodedescriptionblock
@chapter test double

@nodedescriptionblock
block desc 1
@end nodedescriptionblock

@nodedescriptionblock
block desc 2
@end nodedescriptionblock

';


$result_texts{'nodedescriptionblock_descriptions'} = 'test of nodedescriptionblock used in menu
*****************************************

* toto::
* titi::  desc of titi
* name of other: other.

* a somewhat long node without description nor following space::
* node double nodedescriptionblock::

1 Toto
******



2 Titi
******


3 Other
*******


4 Somewhat long
***************



5 test double
*************



';

$result_errors{'nodedescriptionblock_descriptions'} = [
  {
    'error_line' => 'warning: @verb should not appear on @nodedescription line
',
    'line_nr' => 16,
    'text' => '@verb should not appear on @nodedescription line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple node @nodedescriptionblock
',
    'line_nr' => 58,
    'text' => 'multiple node @nodedescriptionblock',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'nodedescriptionblock_descriptions'} = 'test of nodedescriptionblock used in menu
*****************************************

* Menu:

* toto::                       toto is there:: and the _is a
                               description_slightly long and vv somewhat
                               ånexpected
* titi::  desc of titi
* name of other: other.        Long description of other

                               Para2

                                   a quotation in description

* a somewhat long node without description nor following space::  not as long
                               as the node
* node double nodedescriptionblock::  block desc 1

1 Toto
******

2 Titi
******

3 Other
*******

4 Somewhat long
***************

5 test double
*************

';


$result_converted{'html'}->{'nodedescriptionblock_descriptions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test of nodedescriptionblock used in menu</title>

<meta name="description" content="test of nodedescriptionblock used in menu">
<meta name="keywords" content="test of nodedescriptionblock used in menu">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#toto" accesskey="n" rel="next">Toto</a> &nbsp; </p>
</div>
<h1 class="top" id="test-of-nodedescriptionblock-used-in-menu"><span>test of nodedescriptionblock used in menu<a class="copiable-link" href="#test-of-nodedescriptionblock-used-in-menu"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#toto" accesskey="1">toto</a>:</td><td class="menu-entry-description">toto is there:: and the <em class="emph">is a description</em>slightly&nbsp;long<!-- /@w --> and <code class="verb">vv&nbsp;somewhat</code> &aring;nexpected</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#titi" accesskey="2">titi</a>:</td><td class="menu-entry-description">desc of titi
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#other" accesskey="3">name of other</a>:</td><td class="menu-entry-description">Long description of other

<p>Para2
</p>
<blockquote class="quotation">
<p>a quotation in description
</p></blockquote>
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="4">a somewhat long node without description nor following space</a>:</td><td class="menu-entry-description">not as long as the node</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#node-double-nodedescriptionblock" accesskey="5">node double nodedescriptionblock</a>:</td><td class="menu-entry-description">block desc 1
</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="toto">
<div class="nav-panel">
<p>
Next: <a href="#titi" accesskey="n" rel="next">Titi</a>, Previous: <a href="#Top" accesskey="p" rel="prev">test of nodedescriptionblock used in menu</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescriptionblock used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Toto"><span>1 Toto<a class="copiable-link" href="#Toto"> &para;</a></span></h2>



<hr>
</div>
<div class="chapter-level-extent" id="titi">
<div class="nav-panel">
<p>
Next: <a href="#other" accesskey="n" rel="next">Other</a>, Previous: <a href="#toto" accesskey="p" rel="prev">Toto</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescriptionblock used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Titi"><span>2 Titi<a class="copiable-link" href="#Titi"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="other">
<div class="nav-panel">
<p>
Next: <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="n" rel="next">Somewhat long</a>, Previous: <a href="#titi" accesskey="p" rel="prev">Titi</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescriptionblock used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Other"><span>3 Other<a class="copiable-link" href="#Other"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="a-somewhat-long-node-without-description-nor-following-space">
<div class="nav-panel">
<p>
Next: <a href="#node-double-nodedescriptionblock" accesskey="n" rel="next">test double</a>, Previous: <a href="#other" accesskey="p" rel="prev">Other</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescriptionblock used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Somewhat-long"><span>4 Somewhat long<a class="copiable-link" href="#Somewhat-long"> &para;</a></span></h2>



<hr>
</div>
<div class="chapter-level-extent" id="node-double-nodedescriptionblock">
<div class="nav-panel">
<p>
Previous: <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="p" rel="prev">Somewhat long</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescriptionblock used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="test-double"><span>5 test double<a class="copiable-link" href="#test-double"> &para;</a></span></h2>



</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'nodedescriptionblock_descriptions'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">toto</nodenext></node>
<top spaces=" "><sectiontitle>test of nodedescriptionblock used in menu</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>toto</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>titi</menunode><menuseparator>::  </menuseparator><menudescription><pre xml:space="preserve">desc of titi
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>name of other</menutitle><menuseparator>: </menuseparator><menunode>other</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menunode>a somewhat long node without description nor following space</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>node double nodedescriptionblock</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="toto" spaces=" "><nodename>toto</nodename><nodenext automatic="on">titi</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Toto</sectiontitle>

<nodedescription spaces=" ">toto is there:: and the <emph>is a description</emph><w>slightly long</w> and <verb delimiter=":">vv somewhat</verb> <accent type="ring" spacesaftercmd=" " bracketed="off">a</accent>nexpected</nodedescription>

<nodedescriptionblock endspaces=" ">
<para>Block along line node description for toto
</para></nodedescriptionblock>

</chapter>
<node identifier="titi" spaces=" "><nodename>titi</nodename><nodenext automatic="on">other</nodenext><nodeprev automatic="on">toto</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Titi</sectiontitle>

<nodedescriptionblock endspaces=" ">
<para>description of titi in block
</para></nodedescriptionblock>

</chapter>
<node identifier="other" spaces=" "><nodename>other</nodename><nodenext automatic="on">a somewhat long node without description nor following space</nodenext><nodeprev automatic="on">titi</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Other</sectiontitle>

<nodedescriptionblock endspaces=" ">
<para>Long description of other
</para>
<para>Para2
</para>
<quotation endspaces=" ">
<para>a quotation in description
</para></quotation>
</nodedescriptionblock>

</chapter>
<node identifier="a-somewhat-long-node-without-description-nor-following-space" spaces=" "><nodename>a somewhat long node without description nor following space</nodename><nodenext automatic="on">node double nodedescriptionblock</nodenext><nodeprev automatic="on">other</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Somewhat long</sectiontitle>

<nodedescriptionblock endspaces=" ">
<para>Block description before, not as long as the node
</para></nodedescriptionblock>

<nodedescription spaces=" ">not as long as the node</nodedescription>

</chapter>
<node identifier="node-double-nodedescriptionblock" spaces=" "><nodename>node double nodedescriptionblock</nodename><nodeprev automatic="on">a somewhat long node without description nor following space</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>test double</sectiontitle>

<nodedescriptionblock endspaces=" ">
<para>block desc 1
</para></nodedescriptionblock>

<nodedescriptionblock endspaces=" ">
<para>block desc 2
</para></nodedescriptionblock>

</chapter>
';

1;
