use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'ignored_sort_char_empty_entries'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content C2
   *@set C2
   |INFO
   |arg_line:{ txiindexhyphenignore\\n}
    {rawline_arg:txiindexhyphenignore}
    {rawline_arg:}
   {empty_line:\\n}
 *0 @node C1 l3 {Top}
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
 *1 @top C2 l4
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
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C8 l6 {chap}
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
  *index_entry_command@findex C1 l8
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,1}
  |index_ignore_chars:{-}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {-}
  *index_entry_command@findex C1 l9
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,2}
  |index_ignore_chars:{-}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {--}
  *index_entry_command@findex C1 l10
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,3}
  |index_ignore_chars:{-}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {A}
  *index_entry_command@findex C1 l11
  |INFO
  |command_name:{findex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{fn,4}
  |index_ignore_chars:{-}
  |sortas:{--}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@sortas C1 l11
     *brace_arg C1
      {--}
    {spaces_after_close_brace: }
    {--}
  {empty_line:\\n}
  *@printindex C1 l13
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


$result_texis{'ignored_sort_char_empty_entries'} = '@set txiindexhyphenignore

@node Top
@top

@node chap

@findex -
@findex --
@findex A
@findex @sortas{--} --

@printindex fn
';


$result_texts{'ignored_sort_char_empty_entries'} = '



';

$result_errors{'ignored_sort_char_empty_entries'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 6,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'line_nr' => 8,
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty index key in @findex
',
    'line_nr' => 9,
    'text' => 'empty index key in @findex',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'ignored_sort_char_empty_entries'} = 'fn:
 --
 A
';


$result_converted{'info'}->{'ignored_sort_char_empty_entries'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 [index ]
* Menu:

* --:                                    chap.                  (line 3)
* A:                                     chap.                  (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'ignored_sort_char_empty_entries'} = '* Menu:

* --:                                    chap.                  (line 0)
* A:                                     chap.                  (line 0)

';


$result_converted{'html_text'}->{'ignored_sort_char_empty_entries'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-_002d"></a>
<a class="index-entry-id" id="index-_002d_002d"></a>
<a class="index-entry-id" id="index-A"></a>
<a class="index-entry-id" id="index-_002d_002d-1"></a>

<div class="printindex fn-printindex">
<table class="index-letters-header-printindex fn-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_symbol-1"><b>-</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_symbol-1">-</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-_002d_002d-1"><code>--</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-A">A</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-A"><code>A</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
<table class="index-letters-footer-printindex fn-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_fn_symbol-1"><b>-</b></a>
 &nbsp; 
<br>
<a class="summary-letter-printindex" href="#chap_fn_letter-A"><b>A</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';


$result_converted{'xml'}->{'ignored_sort_char_empty_entries'} = '<set name="txiindexhyphenignore" line=" txiindexhyphenignore"></set>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<findex index="fn" spaces=" "><indexterm index="fn" number="1">-</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="2">--</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="3">A</indexterm></findex>
<findex index="fn" spaces=" "><indexterm index="fn" number="4"><sortas>--</sortas> --</indexterm></findex>

<printindex spaces=" " value="fn" line="fn"></printindex>
';

1;
