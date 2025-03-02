use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'equivalent_labels'} = '*document_root C2
 *before_node_section
 *0 @node C8 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E4]
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *1 @anchor C1 l3
  |EXTRA
  |is_target:{1}
  |menu_directions:D[next->E3|up->E0]
  |normalized:{anch}
   *brace_arg C1
    *2 @samp C1 l3
     *brace_container C1
      {anch}
  *paragraph C1
   {.\\n}
  {empty_line:\\n}
  *3 @float C3 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_number:{1}
  |float_type:{truc}
  |global_command_number:{1}
  |is_target:{1}
  |menu_directions:D[prev->E1|up->E0]
  |normalized:{floa}
   *arguments_line C2
    *block_line_arg C1
     {truc}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {floa}
   *paragraph C1
    {In float\\n}
   *@end C1 l7
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
  *4 @menu C4 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{anch}
    |normalized:{anch}
     {anch}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@code{floa}}
    |normalized:{floa}
     *5 @code C1 l11
      *brace_container C1
       {floa}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l12
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


$result_texis{'equivalent_labels'} = '@node first

@anchor{@samp{anch}}.

@float truc, floa
In float
@end float

@menu
* anch::
* @code{floa}::
@end menu
';


$result_texts{'equivalent_labels'} = '
.

truc, floa
In float

* anch::
* floa::
';

$result_errors{'equivalent_labels'} = [
  {
    'error_line' => 'warning: @menu entry node name `anch\' different from anchor name `@samp{anch}\'
',
    'line_nr' => 10,
    'text' => '@menu entry node name `anch\' different from anchor name `@samp{anch}\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `@code{floa}\' different from float name `floa\'
',
    'line_nr' => 11,
    'text' => '@menu entry node name `@code{floa}\' different from float name `floa\'',
    'type' => 'warning'
  }
];


$result_floats{'equivalent_labels'} = {
  'truc' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'float_number' => '1',
        'float_type' => 'truc',
        'normalized' => 'floa'
      }
    }
  ]
};



$result_converted{'info'}->{'equivalent_labels'} = 'This is , produced from .


File: ,  Node: first

.

In float

truc 1
* Menu:

* anch::
* floa::


Tag Table:
Node: first27
Ref: anch51
Ref: floa54

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'equivalent_labels'} = [
  {
    'error_line' => 'warning: document without Top node
',
    'text' => 'document without Top node',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'equivalent_labels'} = '<!DOCTYPE html>
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

<link href="#first" rel="start" title="first">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<h4 class="node" id="first"><span>first<a class="copiable-link" href="#first"> &para;</a></span></h4>

<a class="anchor" id="anch"></a><p>.
</p>
<div class="float" id="floa">
<p>In float
</p><div class="type-number-float"><p><strong class="strong">truc 1</strong></p></div></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'equivalent_labels'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
