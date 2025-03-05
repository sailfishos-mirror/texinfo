use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'default_cp_index_and_one_letter_syncodeindex'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C8 l2 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@syncodeindex C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{cp|fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp fn}
  {empty_line:\\n}
  *2 index_entry_command@cindex C1 l6
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E1]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {--cindex}
  *3 index_entry_command@cpindex C1 l7
  |INFO
  |command_name:{cpindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E1]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {--cpindex}
  {empty_line:\\n}
  *@printindex C1 l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'default_cp_index_and_one_letter_syncodeindex'} = '@node Top
@node chap

@syncodeindex cp fn

@cindex --cindex
@cpindex --cpindex

@printindex fn
';


$result_texts{'default_cp_index_and_one_letter_syncodeindex'} = '


';

$result_errors{'default_cp_index_and_one_letter_syncodeindex'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 2,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'default_cp_index_and_one_letter_syncodeindex'} = 'cp C ->fn
fn C
ky C
pg C
tp C
vr C
';

$result_indices_sort_strings{'default_cp_index_and_one_letter_syncodeindex'} = {
  'fn' => [
    '--cindex',
    '--cpindex'
  ]
};



$result_converted{'info'}->{'default_cp_index_and_one_letter_syncodeindex'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 [index ]
* Menu:

* --cindex:                              chap.                  (line 3)
* --cpindex:                             chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'default_cp_index_and_one_letter_syncodeindex'} = '* Menu:

* --cindex:                              chap.                  (line 0)
* --cpindex:                             chap.                  (line 0)

';


$result_converted{'html_text'}->{'default_cp_index_and_one_letter_syncodeindex'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>


<a class="index-entry-id" id="index-_002d_002dcindex"></a>
<a class="index-entry-id" id="index-_002d_002dcpindex"></a>

<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_symbol-1">-</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002dcindex"><code>--cindex</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002dcpindex"><code>--cpindex</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>
';


$result_converted{'xml'}->{'default_cp_index_and_one_letter_syncodeindex'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<syncodeindex spaces=" " from="cp" to="fn" line="cp fn"></syncodeindex>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1" incode="1" mergedindex="fn">--cindex</indexterm></cindex>
<cpindex index="cp" spaces=" "><indexterm index="cp" number="2" incode="1" mergedindex="fn">--cpindex</indexterm></cpindex>

<printindex spaces=" " value="fn" line="fn"></printindex>
';

1;
