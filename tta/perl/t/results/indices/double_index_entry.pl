use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_index_entry'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *@node C10 l1 {Top}
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
  {empty_line:\\n}
  *index_entry_command@cindex C1 l3
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aaa}
  {empty_line:\\n}
  *paragraph C1
   {Text\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{Top}
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aaa}
  {empty_line:\\n}
  *@menu C3 l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap other node}
    |normalized:{chap-other-node}
     {chap other node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {menu}
  {empty_line:\\n}
 *@node C5 l13 {chap other node}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chap-other-node}
  *arguments_line C4
   *line_arg C1
    {chap other node}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l15
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap-other-node}
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {aaa}
  {empty_line:\\n}
  *@printindex C1 l17
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


$result_texis{'double_index_entry'} = '@node Top

@cindex aaa

Text

@cindex aaa

@menu
* chap other node::
@end menu

@node chap other node,,,Top

@cindex aaa

@printindex cp
';


$result_texts{'double_index_entry'} = '

Text


* chap other node::



';

$result_errors{'double_index_entry'} = [];


$result_nodes_list{'double_index_entry'} = '1|Top
 menus:
  chap other node
 node_directions:
  next->chap other node
2|chap other node
 node_directions:
  up->Top
';

$result_sections_list{'double_index_entry'} = '';

$result_sectioning_root{'double_index_entry'} = '';

$result_headings_list{'double_index_entry'} = '';

$result_indices_sort_strings{'double_index_entry'} = 'cp:
 aaa
 aaa
 aaa
';


$result_converted{'info'}->{'double_index_entry'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap other node,  Up: (dir)

Text

* Menu:

* chap other node::


File: ,  Node: chap other node,  Up: Top

 [index ]
* Menu:

* aaa:                                   Top.                   (line 3)
* aaa <1>:                               Top.                   (line 5)
* aaa <2>:                               chap other node.       (line 3)


Tag Table:
Node: Top27
Node: chap other node121

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_index_entry'} = 'Text

* Menu:

* aaa:                                   Top.                   (line 0)
* aaa <1>:                               Top.                   (line 1)
* aaa <2>:                               chap other node.       (line 2)

';


$result_converted{'html_text'}->{'double_index_entry'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap-other-node" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-aaa"></a>

<p>Text
</p>
<a class="index-entry-id" id="index-aaa-1"></a>


<hr>
<a class="node-id" id="chap-other-node"></a><div class="nav-panel">
<p>
[<a href="#chap-other-node" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap other node<a class="copiable-link" href="#chap-other-node"> &para;</a></span></h4>

<a class="index-entry-id" id="index-aaa-2"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap-other-node_cp_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa">aaa</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa-1">aaa</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-aaa-2">aaa</a></td><td class="printindex-index-section"><a href="#chap-other-node">chap other node</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
</div>
';


$result_converted{'xml'}->{'double_index_entry'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap other node</nodenext></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">aaa</indexterm></cindex>

<para>Text
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="2">aaa</indexterm></cindex>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap other node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-other-node" spaces=" "><nodename>chap other node</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup>Top</nodeup></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="3">aaa</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
