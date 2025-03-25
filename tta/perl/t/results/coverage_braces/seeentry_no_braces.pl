use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'seeentry_no_braces'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
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
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
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
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C5 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@printindex C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C3
    {aa}
    {spaces_at_end: }
    *4 @seeentry l9
';


$result_texis{'seeentry_no_braces'} = '@node Top
@top top

@node chap
@chapter chap

@printindex cp

@cindex aa @seeentry';


$result_texts{'seeentry_no_braces'} = 'top
***

1 chap
******


';

$result_errors{'seeentry_no_braces'} = [
  {
    'error_line' => '@seeentry expected braces
',
    'line_nr' => 9,
    'text' => '@seeentry expected braces',
    'type' => 'error'
  }
];


$result_indices_sort_strings{'seeentry_no_braces'} = 'cp:
 aa
';


$result_converted{'plaintext'}->{'seeentry_no_braces'} = 'top
***

1 chap
******

* Menu:

* aa:                                    chap.                  (line 0)

';


$result_converted{'html_text'}->{'seeentry_no_braces'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="chap-1"><span>1 chap<a class="copiable-link" href="#chap-1"> &para;</a></span></h2>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aa">aa</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>

<a class="index-entry-id" id="index-aa"></a>
</div>
</div>
';


$result_converted{'latex_text'}->{'seeentry_no_braces'} = '\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

\\printindex[cp]

\\index[cp]{aa@aa}%
';


$result_converted{'docbook'}->{'seeentry_no_braces'} = '<chapter label="1" id="chap">
<title>chap</title>

<index role="cp"></index>

<indexterm role="cp"><primary>aa</primary></indexterm></chapter>
';

1;
