use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlineraw_in_menu_description'} = '*document_root C3
 *before_node_section
 *0 @node C1 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
 *1 @top C3 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{manual}
     {(}
     {manual}
     {)}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C3
      {\\n}
      *3 @inlineraw C2 l6
      |EXTRA
      |expand_index:{1}
      |format:{html}
       *brace_arg C1
        {html}
       *brace_arg C3
       |INFO
       |spaces_before_argument:
        |{ }
        {in inline raw\\n}
        {empty_line:\\n}
        {end inlineraw}
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
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
';


$result_texis{'inlineraw_in_menu_description'} = '@node first
@top top

@menu
* (manual)::
@inlineraw{html, in inline raw

end inlineraw}

@end menu
';


$result_texts{'inlineraw_in_menu_description'} = 'top
***

* (manual)::
in inline raw

end inlineraw

';

$result_sectioning{'inlineraw_in_menu_description'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'first'
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
$result_sectioning{'inlineraw_in_menu_description'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'inlineraw_in_menu_description'};

$result_nodes{'inlineraw_in_menu_description'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'first'
    }
  }
];

$result_menus{'inlineraw_in_menu_description'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'first'
    }
  }
];

$result_errors{'inlineraw_in_menu_description'} = [];


$result_floats{'inlineraw_in_menu_description'} = {};



$result_converted{'plaintext'}->{'inlineraw_in_menu_description'} = 'top
***

* Menu:

* (manual)::


';


$result_converted{'html'}->{'inlineraw_in_menu_description'} = '<!DOCTYPE html>
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

<link href="#first" rel="start" title="first">
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
<div class="top-level-extent" id="first">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="manual.html#Top" accesskey="1">(manual)</a>:</td><td class="menu-entry-description">
in inline raw

end inlineraw
</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr></table>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'inlineraw_in_menu_description'} = '<node identifier="first" spaces=" "><nodename>first</nodename></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>(manual)</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
<inlineraw><inlinerawformat>html</inlinerawformat><inlinerawcontent spaces=" ">in inline raw

end inlineraw</inlinerawcontent></inlineraw>
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment></menu>
</top>
';

1;
