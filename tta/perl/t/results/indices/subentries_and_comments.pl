use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'subentries_and_comments'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *@node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {Top}
 *@top C2 l2
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l4 {chapter one}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chapter-one}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chapter one}
 *@chapter C6 l5 {one}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {one}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-one}
  |index_entry:I{cp,1}
   *line_arg C3
    {aa}
    {ignorable_spaces_before_command: }
    *@subentry C1 l7
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |comment_at_end:
      |*@c C1
      ||INFO
      ||spaces_before_argument:
       ||{spaces_before_argument: }
       |*line_arg C1
       ||INFO
       ||spaces_after_argument:
        ||{spaces_after_argument:\\n}
        |{rawline_text:comment}
      {bb}
  *index_entry_command@cindex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chapter-one}
  |index_entry:I{cp,2}
   *line_arg C3
    {ab}
    {ignorable_spaces_before_command: }
    *@subentry C1 l8
    |INFO
    |spaces_before_argument:
     |{spaces_before_argument: }
     *line_arg C1
     |INFO
     |comment_at_end:
      |*@comment C1
      ||INFO
      ||spaces_before_argument:
       ||{spaces_before_argument: }
       |*line_arg C1
       ||INFO
       ||spaces_after_argument:
        ||{spaces_after_argument:\\n}
        |{rawline_text:comment}
     |spaces_after_argument:
      |{spaces_after_argument: }
      {cc}
  {empty_line:\\n}
  *@printindex C1 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {cp}
';


$result_texis{'subentries_and_comments'} = '@node Top
@top

@node chapter one
@chapter one

@cindex aa @subentry bb@c comment
@cindex ab @subentry cc @comment comment

@printindex cp
';


$result_texts{'subentries_and_comments'} = '
1 one
*****


';

$result_errors{'subentries_and_comments'} = [];


$result_nodes_list{'subentries_and_comments'} = '1|Top
 associated_section
 associated_title_command
 node_directions:
  next->chapter one
2|chapter one
 associated_section: 1 one
 associated_title_command: 1 one
 node_directions:
  prev->Top
  up->Top
';

$result_sections_list{'subentries_and_comments'} = '1
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->one
 section_children:
  1|one
2|one
 associated_anchor_command: chapter one
 associated_node: chapter one
 section_directions:
  up->
 toplevel_directions:
  prev->
  up->
';

$result_sectioning_root{'subentries_and_comments'} = 'level: -1
list:
 1|
';

$result_headings_list{'subentries_and_comments'} = '';

$result_indices_sort_strings{'subentries_and_comments'} = 'cp:
 aa, bb
 ab, cc
';


$result_converted{'info'}->{'subentries_and_comments'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter one,  Up: (dir)

* Menu:

* chapter one::


File: ,  Node: chapter one,  Prev: Top,  Up: Top

1 one
*****

 [index ]
* Menu:

* aa, bb:                                chapter one.           (line 6)
* ab, cc:                                chapter one.           (line 6)


Tag Table:
Node: Top27
Node: chapter one107

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'subentries_and_comments'} = '1 one
*****

* Menu:

* aa, bb:                                chapter one.           (line 3)
* ab, cc:                                chapter one.           (line 3)

';


$result_converted{'html_text'}->{'subentries_and_comments'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chapter-one" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chapter-one">one</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-one">
<div class="nav-panel">
<p>
[<a href="#chapter-one" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="one"><span>1 one<a class="copiable-link" href="#one"> &para;</a></span></h2>

<a class="index-entry-id" id="index-aa-bb"></a>
<a class="index-entry-id" id="index-ab-cc"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chapter-one_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry">aa</td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-aa-bb">bb</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td class="printindex-index-entry">ab</td><td></td></tr>
<tr><td class="printindex-index-subentry-level-1"><a href="#index-ab-cc">cc</a></td><td class="printindex-index-section"><a href="#chapter-one">chapter one</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'subentries_and_comments'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter one</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chapter-one" spaces=" "><nodename>chapter one</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>one</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aa <subentry spaces=" ">bb</subentry><!-- c comment -->
</indexterm></cindex><cindex index="cp" spaces=" "><indexterm index="cp" number="2">ab <subentry spaces=" ">cc </subentry><!-- comment comment -->
</indexterm></cindex>
<printindex spaces=" " value="cp" line="cp"></printindex>
</chapter>
';

1;
