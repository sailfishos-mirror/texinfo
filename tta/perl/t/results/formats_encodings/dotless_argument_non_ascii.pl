use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'dotless_argument_non_ascii'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
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
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C2 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  *paragraph C4
   *@dotless C1 l6
    *brace_container C1
     {ê}
   {\\n}
   *@dotless C1 l7
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
    *following_arg C1
     {ê}
   {\\n}
';


$result_texis{'dotless_argument_non_ascii'} = '@node Top
@top top

@node chap
@chapter Chapter
@dotless{ê}
@dotless ê
';


$result_texts{'dotless_argument_non_ascii'} = 'top
***

1 Chapter
*********
ê
ê
';

$result_errors{'dotless_argument_non_ascii'} = [
  {
    'error_line' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'
",
    'line_nr' => 6,
    'text' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'",
    'type' => 'error'
  },
  {
    'error_line' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'
",
    'line_nr' => 7,
    'text' => "\@dotless expects `i' or `j' as argument, not `\x{ea}'",
    'type' => 'error'
  }
];


$result_nodes_list{'dotless_argument_non_ascii'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->chap
2|chap
 associated_section: 1 Chapter
 associated_title_command: 1 Chapter
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'dotless_argument_non_ascii'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->Chapter
2|Chapter
 associated_anchor_command: chap
 associated_node: chap
 section_directions:
  up->top
 toplevel_directions:
  prev->top
  up->top
';

$result_headings_list{'dotless_argument_non_ascii'} = '';


$result_converted{'plaintext'}->{'dotless_argument_non_ascii'} = 'top
***

1 Chapter
*********

ê ê
';


$result_converted{'html_text'}->{'dotless_argument_non_ascii'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
<p>ê
ê
</p></div>
</div>
';


$result_converted{'xml'}->{'dotless_argument_non_ascii'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>
<para><dotless>ê</dotless>
<dotless spacesaftercmd=" ">ê</dotless>
</para></chapter>
';


$result_converted{'docbook'}->{'dotless_argument_non_ascii'} = '<chapter label="1" id="chap">
<title>Chapter</title>
<para>ê
ê
</para></chapter>
';


$result_converted{'latex_text'}->{'dotless_argument_non_ascii'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%
ê
ê
';

1;
