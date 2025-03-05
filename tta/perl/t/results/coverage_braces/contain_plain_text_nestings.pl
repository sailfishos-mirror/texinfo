use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'contain_plain_text_nestings'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
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
 *3 @chapter C8 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
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
    {Chap}
  {empty_line:\\n}
  *paragraph C8
   {Text }
   *4 @w C1 l7
    *brace_container C2
     *5 @code C1 l7
      *brace_container C1
       {code in w}
     { text}
   {.\\n}
   *6 @hyphenation C1 l8
   |EXTRA
   |global_command_number:{1}
    *brace_arg C2
     *7 @code C1 l8
      *brace_container C1
       {code in hyphenation}
     { text}
   {spaces_after_close_brace:\\n}
   *8 @key C1 l9
    *brace_container C2
     *9 @code C1 l9
      *brace_container C1
       {code in key}
     { text}
   {\\n}
   *10 index_entry_command@cindex C1 l10
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E2]
   |index_entry:I{cp,1}
   |sortas:{ text}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ii}
     {spaces_at_end: }
     *11 @sortas C1 l10
      *brace_arg C2
       *12 @code C1 l10
        *brace_container C1
         {code in sortas}
       { text}
  {empty_line:\\n}
  *@c C1
   {rawline_arg: no warning for @ref in @w\\n}
  *paragraph C8
   {Text }
   *13 @w C1 l13
    *brace_container C2
     *14 @ref C2 l13
      *brace_arg C1
      |EXTRA
      |node_content:{Top}
      |normalized:{Top}
       {Top}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {cross in w}
     { text}
   {.\\n}
   *15 @hyphenation C1 l14
   |EXTRA
   |global_command_number:{2}
    *brace_arg C2
     *16 @ref C2 l14
      *brace_arg C1
      |EXTRA
      |node_content:{Top}
      |normalized:{Top}
       {Top}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {cross in hyphenation}
     { text}
   {spaces_after_close_brace:\\n}
   *17 @key C1 l15
    *brace_container C2
     *18 @ref C2 l15
      *brace_arg C1
      |EXTRA
      |node_content:{Top}
      |normalized:{Top}
       {Top}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {cross in key}
     { text}
   {\\n}
   *19 index_entry_command@cindex C1 l16
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |element_node:[E2]
   |index_entry:I{cp,2}
   |sortas:{ text}
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ii}
     {spaces_at_end: }
     *20 @sortas C1 l16
      *brace_arg C2
       *21 @ref C2 l16
        *brace_arg C1
        |EXTRA
        |node_content:{Top}
        |normalized:{Top}
         {Top}
        *brace_arg C1
        |INFO
        |spaces_before_argument:
         |{ }
         {cross in sortas}
       { text}
  {empty_line:\\n}
  *@printindex C1 l18
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
';


$result_texis{'contain_plain_text_nestings'} = '@node Top
@top top

@node chap
@chapter Chap

Text @w{@code{code in w} text}.
@hyphenation{@code{code in hyphenation} text}
@key{@code{code in key} text}
@cindex ii @sortas{@code{code in sortas} text}

@c no warning for @ref in @w
Text @w{@ref{Top, cross in w} text}.
@hyphenation{@ref{Top, cross in hyphenation} text}
@key{@ref{Top, cross in key} text}
@cindex ii @sortas{@ref{Top, cross in sortas} text}

@printindex cp
';


$result_texts{'contain_plain_text_nestings'} = 'top
***

1 Chap
******

Text code in w text.
code in key text

Text Top text.
Top text

';

$result_errors{'contain_plain_text_nestings'} = [
  {
    'error_line' => 'warning: @code should not appear in @hyphenation
',
    'line_nr' => 8,
    'text' => '@code should not appear in @hyphenation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @code should not appear in @key
',
    'line_nr' => 9,
    'text' => '@code should not appear in @key',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @code should not appear in @sortas
',
    'line_nr' => 10,
    'text' => '@code should not appear in @sortas',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear anywhere inside @w
',
    'line_nr' => 13,
    'text' => '@ref should not appear anywhere inside @w',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear in @hyphenation
',
    'line_nr' => 14,
    'text' => '@ref should not appear in @hyphenation',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear in @key
',
    'line_nr' => 15,
    'text' => '@ref should not appear in @key',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear in @sortas
',
    'line_nr' => 16,
    'text' => '@ref should not appear in @sortas',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref should not appear on @cindex line
',
    'line_nr' => 16,
    'text' => '@ref should not appear on @cindex line',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'contain_plain_text_nestings'} = 'cp:
  text
  text
';


$result_converted{'plaintext'}->{'contain_plain_text_nestings'} = 'top
***

1 Chap
******

Text ‘code in w’ text.  <‘code in key’ text>

   Text cross in w: Top text.  <cross in key: Top text>

* Menu:

* ii:                                    chap.                  (line 6)
* ii <1>:                                chap.                  (line 8)

';


$result_converted{'html_text'}->{'contain_plain_text_nestings'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chap"><span>1 Chap<a class="copiable-link" href="#Chap"> &para;</a></span></h2>

<p>Text <code class="code">code&nbsp;in&nbsp;w</code>&nbsp;text<!-- /@w -->.
<kbd class="key"><code class="code">code in key</code> text</kbd>
<a class="index-entry-id" id="index-ii"></a>
</p>
<p>Text <a class="ref" href="#Top">cross&nbsp;in&nbsp;w</a>&nbsp;text<!-- /@w -->.
<kbd class="key"><a class="ref" href="#Top">cross in key</a> text</kbd>
<a class="index-entry-id" id="index-ii-1"></a>
</p>
<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_symbol-1"> </th></tr>
<tr><td class="printindex-index-entry"><a href="#index-ii">ii</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-ii-1">ii</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'latex_text'}->{'contain_plain_text_nestings'} = '\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:chap}%

Text \\hbox{\\texttt{code in w} text}.
\\hyphenation{\\texttt{code in hyphenation} text}\\texttt{\\texttt{code in key}\\ text}
\\index[cp]{ text@ii}%

Text \\hbox{\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}} text}.
\\hyphenation{\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}} text}\\texttt{\\hyperref[anchor:Top]{\\chaptername~\\ref*{anchor:Top} [Top], page~\\pageref*{anchor:Top}}\\ text}
\\index[cp]{ text@ii}%

\\printindex[cp]
';


$result_converted{'docbook'}->{'contain_plain_text_nestings'} = '<chapter label="1" id="chap">
<title>Chap</title>

<para>Text <literal>code&amp;#160;in&amp;#160;w</literal>&amp;#160;text<!-- /@w -->.
<keycap><literal>code in key</literal> text</keycap>
<indexterm role="cp"><primary>ii</primary></indexterm>
</para>
<!-- no warning for @ref in @w -->
<para>Text <link linkend="Top">cross&amp;#160;in&amp;#160;w</link>&amp;#160;text<!-- /@w -->.
<keycap><link linkend="Top">cross in key</link> text</keycap>
<indexterm role="cp"><primary>ii</primary></indexterm>
</para>
<index role="cp"></index>
</chapter>
';

1;
