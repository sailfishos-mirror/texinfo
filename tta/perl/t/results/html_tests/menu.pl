use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'menu'} = '*document_root C3
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C1 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->MISSING: (menu_entry_node)[C3]]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l3
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
  *2 @menu C10 l5
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{ggg}
     {(}
     {ggg}
     {)}
    {menu_entry_separator::: }
    *menu_entry_description C3
     *preformatted C1
      {description\\n}
     *3 @itemize C3 l7
     |EXTRA
     |command_as_argument:[E4]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *4 @bullet
        |INFO
        |inserted:{1}
      *@item C1 l8
      |EXTRA
      |item_number:{1}
       *preformatted C2
        {ignorable_spaces_after_command: }
        {idescr\\n}
      *@end C1 l9
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
     *preformatted C2
      *5 @html C3 l10
       *arguments_line C1
        *block_line_arg
        |INFO
        |spaces_after_argument:
         |{\\n}
       *rawpreformatted C1
        {in html\\n}
       *@end C1 l12
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |text_arg:{html}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {html}
      {AAA\\n}
   *menu_comment C4
    *preformatted C3
     {after_menu_description_line:\\n}
     {CCC\\n}
     {empty_line:\\n}
    *6 @itemize C3 l17
    |EXTRA
    |command_as_argument:[E7]
     *arguments_line C1
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *7 @bullet
       |INFO
       |inserted:{1}
     *@item C1 l18
     |EXTRA
     |item_number:{1}
      *preformatted C2
       {ignorable_spaces_after_command: }
       {iaa\\n}
     *@end C1 l19
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
    *preformatted C5
     {empty_line:\\n}
     *8 @html C3 l21
      *arguments_line C1
       *block_line_arg
       |INFO
       |spaces_after_argument:
        |{\\n}
      *rawpreformatted C1
       {in html title\\n}
      *@end C1 l23
      |INFO
      |spaces_before_argument:
       |{ }
      |EXTRA
      |text_arg:{html}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {html}
     {empty_line:\\n}
     {BBB\\n}
     {empty_line:\\n}
    *9 @itemize C3 l27
    |EXTRA
    |command_as_argument:[E10]
     *arguments_line C1
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       *10 @bullet
       |INFO
       |inserted:{1}
     *@item C1 l28
     |EXTRA
     |item_number:{1}
      *preformatted C2
       {ignorable_spaces_after_command: }
       {ibb\\n}
     *@end C1 l29
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
   *menu_entry C4 l30
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{manual}
     {(}
     {manual}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C3
     {after_menu_description_line:\\n}
     {comment\\n}
     {empty_line:\\n}
   *menu_entry C4 l34
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{after_comment}
     {(}
     {after_comment}
     {)}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C2
      {description\\n}
      {in description\\n}
   *menu_entry C4 l36
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{after_description}
     {(}
     {after_description}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *11 @detailmenu C9 l38
   |EXTRA
   |global_command_number:{1}
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 l39
     {menu_entry_leading_text:* }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{detailggg}
      {(}
      {detailggg}
      {)}
     {menu_entry_separator::: }
     *menu_entry_description C3
      *preformatted C1
       {detaildescription\\n}
      *12 @itemize C3 l40
      |EXTRA
      |command_as_argument:[E13]
       *arguments_line C1
        *block_line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         *13 @bullet
         |INFO
         |inserted:{1}
       *@item C1 l41
       |EXTRA
       |item_number:{1}
        *preformatted C2
         {ignorable_spaces_after_command: }
         {idetaildescr\\n}
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
      *preformatted C2
       *14 @html C3 l43
        *arguments_line C1
         *block_line_arg
         |INFO
         |spaces_after_argument:
          |{\\n}
        *rawpreformatted C1
         {detailin detailhtml\\n}
        *@end C1 l45
        |INFO
        |spaces_before_argument:
         |{ }
        |EXTRA
        |text_arg:{html}
         *line_arg C1
         |INFO
         |spaces_after_argument:
          |{\\n}
          {html}
       {detailAAA\\n}
    *menu_comment C4
     *preformatted C3
      {after_menu_description_line:\\n}
      {detailCCC\\n}
      {empty_line:\\n}
     *15 @itemize C3 l50
     |EXTRA
     |command_as_argument:[E16]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *16 @bullet
        |INFO
        |inserted:{1}
      *@item C1 l51
      |EXTRA
      |item_number:{1}
       *preformatted C2
        {ignorable_spaces_after_command: }
        {detailiaa\\n}
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
     *preformatted C5
      {empty_line:\\n}
      *17 @html C3 l54
       *arguments_line C1
        *block_line_arg
        |INFO
        |spaces_after_argument:
         |{\\n}
       *rawpreformatted C1
        {detailin html detailtitle\\n}
       *@end C1 l56
       |INFO
       |spaces_before_argument:
        |{ }
       |EXTRA
       |text_arg:{html}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {html}
      {empty_line:\\n}
      {detailBBB\\n}
      {empty_line:\\n}
     *18 @itemize C3 l60
     |EXTRA
     |command_as_argument:[E19]
      *arguments_line C1
       *block_line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        *19 @bullet
        |INFO
        |inserted:{1}
      *@item C1 l61
      |EXTRA
      |item_number:{1}
       *preformatted C2
        {ignorable_spaces_after_command: }
        {detailibb\\n}
      *@end C1 l62
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
    *menu_entry C4 l63
     {menu_entry_leading_text:* }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{detailmanual}
      {(}
      {detailmanual}
      {)}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *menu_comment C1
     *preformatted C3
      {after_menu_description_line:\\n}
      {detailcomment\\n}
      {empty_line:\\n}
    *menu_entry C4 l67
     {menu_entry_leading_text:* }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{detailafter_comment}
      {(}
      {detailafter_comment}
      {)}
     {menu_entry_separator::: }
     *menu_entry_description C1
      *preformatted C2
       {detaildescription\\n}
       {in detaildescription\\n}
    *menu_entry C4 l69
     {menu_entry_leading_text:* }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{detailafter_description}
      {(}
      {detailafter_description}
      {)}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *menu_comment C1
     *preformatted C1
      {after_menu_description_line:\\n}
    *@end C1 l71
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *@end C1 l72
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
';


$result_texis{'menu'} = '
@node Top
@top

@menu
* (ggg):: description
@itemize
@item idescr
@end itemize
@html
in html
@end html
AAA

CCC

@itemize
@item iaa
@end itemize

@html
in html title
@end html

BBB

@itemize
@item ibb
@end itemize
* (manual)::

comment

* (after_comment):: description
in description
* (after_description)::

@detailmenu
* (detailggg):: detaildescription
@itemize
@item idetaildescr
@end itemize
@html
detailin detailhtml
@end html
detailAAA

detailCCC

@itemize
@item detailiaa
@end itemize

@html
detailin html detailtitle
@end html

detailBBB

@itemize
@item detailibb
@end itemize
* (detailmanual)::

detailcomment

* (detailafter_comment):: detaildescription
in detaildescription
* (detailafter_description)::

@end detailmenu
@end menu
';


$result_texts{'menu'} = '

* (ggg):: description
idescr
in html
AAA

CCC

iaa

in html title

BBB

ibb
* (manual)::

comment

* (after_comment):: description
in description
* (after_description)::

* (detailggg):: detaildescription
idetaildescr
detailin detailhtml
detailAAA

detailCCC

detailiaa

detailin html detailtitle

detailBBB

detailibb
* (detailmanual)::

detailcomment

* (detailafter_comment):: detaildescription
in detaildescription
* (detailafter_description)::

';

$result_sectioning{'menu'} = {
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
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'menu'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'menu'};

$result_nodes{'menu'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'menu_entry_node'
        }
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'menu'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  }
];

$result_errors{'menu'} = [];


$result_floats{'menu'} = {};



$result_converted{'info'}->{'menu'} = 'This is , produced from .


File: ,  Node: Top,  Next: (ggg),  Up: (dir)

* Menu:

* (ggg):: description
   • idescr
AAA

CCC

   • iaa


BBB

   • ibb
* (manual)::

comment

* (after_comment):: description
in description
* (after_description)::

* (detailggg):: detaildescription
   • idetaildescr
detailAAA

detailCCC

   • detailiaa


detailBBB

   • detailibb
* (detailmanual)::

detailcomment

* (detailafter_comment):: detaildescription
in detaildescription
* (detailafter_description)::


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'menu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
pre.menu-comment-preformatted {font-family: serif}
pre.menu-preformatted {font-family: serif}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
ul.mark-bullet {list-style-type: disc}
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<a class="top" id="SEC_Top"></a>
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="ggg.html#Top" accesskey="1">(ggg)</a>:</td><td class="menu-entry-description">description
<ul class="itemize mark-bullet">
<li><pre class="menu-preformatted">idescr
</pre></li></ul>
in html
AAA
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

CCC

</pre><ul class="itemize mark-bullet">
<li><pre class="menu-comment-preformatted">iaa
</pre></li></ul>
<pre class="menu-comment-preformatted">

in html title

BBB

</pre><ul class="itemize mark-bullet">
<li><pre class="menu-comment-preformatted">ibb
</pre></li></ul>
</th></tr><tr><td class="menu-entry-destination">&bull; <a href="manual.html#Top" accesskey="2">(manual)</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

comment

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="after_comment.html#Top" accesskey="3">(after_comment)</a>:</td><td class="menu-entry-description">description
in description
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="after_description.html#Top" accesskey="4">(after_description)</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="detailggg.html#Top" accesskey="5">(detailggg)</a>:</td><td class="menu-entry-description">detaildescription
<ul class="itemize mark-bullet">
<li><pre class="menu-preformatted">idetaildescr
</pre></li></ul>
detailin detailhtml
detailAAA
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

detailCCC

</pre><ul class="itemize mark-bullet">
<li><pre class="menu-comment-preformatted">detailiaa
</pre></li></ul>
<pre class="menu-comment-preformatted">

detailin html detailtitle

detailBBB

</pre><ul class="itemize mark-bullet">
<li><pre class="menu-comment-preformatted">detailibb
</pre></li></ul>
</th></tr><tr><td class="menu-entry-destination">&bull; <a href="detailmanual.html#Top" accesskey="6">(detailmanual)</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

detailcomment

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="detailafter_comment.html#Top" accesskey="7">(detailafter_comment)</a>:</td><td class="menu-entry-description">detaildescription
in detaildescription
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="detailafter_description.html#Top" accesskey="8">(detailafter_description)</a>:</td><td class="menu-entry-description">
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr></table>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
