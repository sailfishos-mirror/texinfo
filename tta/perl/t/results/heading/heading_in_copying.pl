use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'heading_in_copying'} = '*document_root C3
 *before_node_section C2
  *0 @copying C7 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {empty_line:\\n}
   *1 @heading C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
    *line_arg C4
    |INFO
    |spaces_after_argument:
     |{\\n}
     {in copying }
     *@@
     { }
     *2 @emph C1 l3
      *brace_container C1
       {heading}
   *3 index_entry_command@cindex C1 l4
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_region:{copying}
   |index_entry:I{cp,1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cindex copying}
   {empty_line:\\n}
   *4 @subheading C1 l6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
    *line_arg C4
    |INFO
    |spaces_after_argument:
     |{\\n}
     {second in copying }
     *@@
     { }
     *5 @emph C1 l6
      *brace_container C1
       {subheading}
   *@end C1 l7
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
 *6 @node C1 l9 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E7]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *7 @node C3 l10 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E6]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@insertcopying C1 l12
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
';


$result_texis{'heading_in_copying'} = '@copying

@heading in copying @@ @emph{heading}
@cindex cindex copying

@subheading second in copying @@ @emph{subheading}
@end copying

@node Top
@node chap

@insertcopying
';


$result_texts{'heading_in_copying'} = '

';

$result_nodes{'heading_in_copying'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'heading_in_copying'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'heading_in_copying'}[0];
$result_nodes{'heading_in_copying'}[1] = $result_nodes{'heading_in_copying'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'heading_in_copying'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'heading_in_copying'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'heading_in_copying'} = {};


$result_indices_sort_strings{'heading_in_copying'} = {
  'cp' => [
    'cindex copying'
  ]
};



$result_converted{'plaintext'}->{'heading_in_copying'} = 'in copying @ _heading_
======================

second in copying @ _subheading_
--------------------------------

';


$result_converted{'html'}->{'heading_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 
in copying @ heading
====================

second in copying @ subheading
- -->
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
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

<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
Next: <a href="#chap" accesskey="n" rel="next">chap</a> &nbsp; </p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">Top</a> &nbsp; </p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>


<h3 class="heading" id="in-copying-_0040-heading"><span>in copying @ <em class="emph">heading</em><a class="copiable-link" href="#in-copying-_0040-heading"> &para;</a></span></h3>
<a class="index-entry-id" id="index-copying-cindex-copying"></a>

<h4 class="subheading" id="second-in-copying-_0040-subheading"><span>second in copying @ <em class="emph">subheading</em><a class="copiable-link" href="#second-in-copying-_0040-subheading"> &para;</a></span></h4>



</body>
</html>
';

$result_converted_errors{'html'}->{'heading_in_copying'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
