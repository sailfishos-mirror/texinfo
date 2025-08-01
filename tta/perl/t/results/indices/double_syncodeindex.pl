use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'double_syncodeindex'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C3
   *@syncodeindex C1 l1
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{cp|fn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {cp fn}
   *@syncodeindex C1 l2
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |misc_args:A{cp|fn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {cp fn}
   {empty_line:\\n}
 *@node C1 l4 {Top}
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
 *@node C7 l5 {chap}
 |INFO
 |spaces_before_argument:
  |{spaces_before_argument: }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_number:{2}
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {chap}
  {empty_line:\\n}
  *index_entry_command@cindex C1 l7
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {cindex entry}
  *index_entry_command@findex C1 l8
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |element_node:{chap}
  |index_entry:I{fn,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {findex entry}
  {empty_line:\\n}
  *@printindex C1 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {fn}
  *@printindex C1 l11
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{spaces_after_argument:\\n}
    {cp}
';


$result_texis{'double_syncodeindex'} = '@syncodeindex cp fn
@syncodeindex cp fn

@node Top
@node chap

@cindex cindex entry
@findex findex entry

@printindex fn
@printindex cp
';


$result_texts{'double_syncodeindex'} = '


';

$result_errors{'double_syncodeindex'} = [
  {
    'error_line' => 'warning: printing an index `cp\' merged in another one, `fn\'
',
    'line_nr' => 11,
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 5,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices{'double_syncodeindex'} = 'cp C ->fn
fn C
ky C
pg C
tp C
vr C
';

$result_nodes_list{'double_syncodeindex'} = '1|Top
 node_directions:
  next->chap
2|chap
 node_directions:
  prev->Top
';

$result_sections_list{'double_syncodeindex'} = '';

$result_sectioning_root{'double_syncodeindex'} = '';

$result_headings_list{'double_syncodeindex'} = '';

$result_indices_sort_strings{'double_syncodeindex'} = 'fn:
 cindex entry
 findex entry
';


$result_converted{'info'}->{'double_syncodeindex'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 [index ]
* Menu:

* cindex entry:                          chap.                  (line 3)
* findex entry:                          chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'double_syncodeindex'} = '* Menu:

* cindex entry:                          chap.                  (line 0)
* findex entry:                          chap.                  (line 0)

';


$result_converted{'html_text'}->{'double_syncodeindex'} = '
<a class="node-id" id="Top"></a><div class="nav-panel">
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

<a class="index-entry-id" id="index-cindex-entry"></a>
<a class="index-entry-id" id="index-findex-entry"></a>

<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-cindex-entry"><code>cindex entry</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-F">F</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-findex-entry"><code>findex entry</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td colspan="2"><hr></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_fn_letter-F"><b>F</b></a>
 &nbsp; 
</td></tr></table>
</div>
';


$result_converted{'xml'}->{'double_syncodeindex'} = '<syncodeindex spaces=" " from="cp" to="fn" line="cp fn"></syncodeindex>
<syncodeindex spaces=" " from="cp" to="fn" line="cp fn"></syncodeindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1" incode="1" mergedindex="fn">cindex entry</indexterm></cindex>
<findex index="fn" spaces=" "><indexterm index="fn" number="1">findex entry</indexterm></findex>

<printindex spaces=" " value="fn" line="fn"></printindex>
<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
