use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'setfilename_on_top_and_after_node'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C3 l2 {In top @setfilename very badly placed setfilename
}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C2
    {In top }
    *@setfilename C1 l2
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{very badly placed setfilename}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {very badly placed setfilename}
  {empty_line:\\n}
  *@setfilename C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{a bit too late}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a bit too late}
';


$result_texis{'setfilename_on_top_and_after_node'} = '@node Top
@top In top @setfilename very badly placed setfilename

@setfilename a bit too late
';


$result_texts{'setfilename_on_top_and_after_node'} = 'In top 
*******

';

$result_errors{'setfilename_on_top_and_after_node'} = [
  {
    'error_line' => 'warning: @setfilename should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@setfilename should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename should not appear on @top line
',
    'line_nr' => 2,
    'text' => '@setfilename should not appear on @top line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 2,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setfilename
',
    'line_nr' => 4,
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @setfilename after the first element
',
    'line_nr' => 4,
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'setfilename_on_top_and_after_node'} = 'In top 
*******

';


$result_converted{'html'}->{'setfilename_on_top_and_after_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>In top </title>

<meta name="description" content="In top ">
<meta name="keywords" content="In top ">
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

<body lang="">
<div class="top-level-extent" id="Top">
<h1 class="top" id="In-top-"><span>In top <a class="copiable-link" href="#In-top-"> &para;</a></span></h1>

</div>



</body>
</html>
';

1;
