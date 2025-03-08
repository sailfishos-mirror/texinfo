use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'commands_in_var'} = '*document_root C5
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
 *1 @top C2 l2 {commands in var}
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
    {commands in var}
  {empty_line:\\n}
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C3 l5 {chap}
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
  *paragraph C1
   *4 @var C1 l7
    *brace_container C38
     {a }
     *5 @~ C1 l7
      *following_arg C1
       {n}
     { }
     *6 @aa C1 l7
      *brace_container
     { }
     *7 @TeX C1 l7
      *brace_container
     { }
     *8 @image C1 l7
     |EXTRA
     |input_encoding_name:{utf-8}
      *brace_arg C1
       {myimage}
     { }
     *9 @ref C1 l7
      *brace_arg C1
      |EXTRA
      |node_content:{chap}
      |normalized:{chap}
       {chap}
     { }
     *10 @xref C1 l7
      *brace_arg C4
      |EXTRA
      |manual_content:{f}
      |node_content:{node}
       {(}
       {f}
       {)}
       {node}
     {\\n}
     *11 @ref C4 l8
      *brace_arg C1
      |EXTRA
      |node_content:{ext}
       {ext}
      *brace_arg
      *brace_arg C1
       {name}
      *brace_arg C1
       {argf}
     { }
     *12 @inlinefmtifelse C3 l8
     |EXTRA
     |expand_index:{2}
     |format:{latex}
      *brace_arg C1
       {latex}
      *elided_brace_command_arg C1
       {raw:}
      *brace_arg C1
       *13 @verb C1 l8
       |INFO
       |delimiter:{!}
        *brace_container C1
         {raw:inverb}
     { }
     *14 @anchor C1 l8
     |EXTRA
     |is_target:{1}
     |normalized:{inanchor}
      *brace_arg C1
       {inanchor}
     {spaces_after_close_brace: }
     *15 @hyphenation C1 l8
     |EXTRA
     |global_command_number:{1}
      *brace_arg C1
       {hyphena-te}
     {spaces_after_close_brace:\\n}
     *16 @U C1 l9
      *brace_arg C1
       {00ff}
     { }
     *17 @math C1 l9
      *brace_command_context C1
       {ma+th}
     { }
     *18 @footnote C1 l9
     |EXTRA
     |global_command_number:{1}
      *brace_command_context C1
       *paragraph C1
        {infootnote}
     { }
     *19 @url C1 l9
      *brace_arg C1
       {la}
     { }
     *20 @url C2 l9
      *brace_arg C1
       {a}
      *brace_arg C1
       {b}
     { }
     *21 @url C2 l9
      *brace_arg
      |INFO
      |spaces_before_argument:
       |{ }
      *brace_arg C1
       {lb}
     {\\n}
     *22 @url C3 l10
      *brace_arg
      *brace_arg
      *brace_arg C1
       {c}
     { }
     *23 @email C2 l10
      *brace_arg C3
       {a}
       *@@
       {c}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {e}
     { }
     *24 @abbr C2 l10
      *brace_arg C1
       {ab}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {d}
';


$result_texis{'commands_in_var'} = '@node Top
@top commands in var

@node chap
@chapter chap

@var{a @~n @aa{} @TeX{} @image{myimage} @ref{chap} @xref{(f)node}
@ref{ext,,name,argf} @inlinefmtifelse{latex,,@verb{!inverb!}} @anchor{inanchor} @hyphenation{hyphena-te}
@U{00ff} @math{ma+th} @footnote{infootnote} @url{la} @url{a,b} @url{ ,lb}
@url{,,c} @email{a@@c, e} @abbr{ab, d}}';


$result_texts{'commands_in_var'} = 'commands in var
***************

1 chap
******

a n~ aa TeX myimage chap (f)node
ext inverb 00ff ma+th  la a (b)  (lb)
c e ab (d)';

$result_errors{'commands_in_var'} = [];



$result_converted{'plaintext'}->{'commands_in_var'} = 'commands in var
***************

1 chap
******

A Ñ Å TeX [myimage] chap SEE (f)node NAME: (argf)ext inverb ÿ MA+TH (1) <la> B
(a) LB c E <a@c> AB (D)

   ---------- Footnotes ----------

   (1) infootnote

';

$result_converted_errors{'plaintext'}->{'commands_in_var'} = [
  {
    'error_line' => 'warning: could not find @image file `myimage.txt\' nor alternate text
',
    'line_nr' => 7,
    'text' => 'could not find @image file `myimage.txt\' nor alternate text',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'commands_in_var'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="commands-in-var"><span>commands in var<a class="copiable-link" href="#commands-in-var"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chap</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="chap-1"><span>1 chap<a class="copiable-link" href="#chap-1"> &para;</a></span></h2>

<p><var class="var">a &ntilde; &aring; TeX <img class="image" src="myimage.jpg" alt="myimage"> <a class="ref" href="#chap">chap</a> See <a data-manual="f" href="f.html#node">(f)node</a>
<a data-manual="argf" href="argf.html#ext">name</a> <code class="verb">inverb</code> <a class="anchor" id="inanchor"></a>&#x00ff; <em class="math">ma+th</em> <a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a> <a class="url" href="la">la</a> <a class="url" href="a">b</a> lb
c <a class="email" href="mailto:a@c">e</a> <abbr class="abbr" title="d">ab</abbr> (d)</var></p></div>
</div>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>infootnote</p>
</div>
';

$result_converted_errors{'html_text'}->{'commands_in_var'} = [
  {
    'error_line' => 'warning: @image file `myimage\' (for HTML) not found, using `myimage.jpg\'
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' (for HTML) not found, using `myimage.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'commands_in_var'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>commands in var</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap</sectiontitle>

<para><var>a <accent type="tilde" bracketed="off">n</accent> &aring; &tex; <image where="inline"><imagefile>myimage</imagefile></image> <ref label="chap"><xrefnodename>chap</xrefnodename></ref> <xref label="node" manual="f"><xrefnodename>(f)node</xrefnodename></xref>
<ref label="ext" manual="argf"><xrefnodename>ext</xrefnodename><xrefprinteddesc>name</xrefprinteddesc><xrefinfofile>argf</xrefinfofile></ref> <inlinefmtifelse><inlinefmtifelseformat>latex</inlinefmtifelseformat><inlinefmtifelsecontentelse><verb delimiter="!">inverb</verb></inlinefmtifelsecontentelse></inlinefmtifelse> <anchor identifier="inanchor">inanchor</anchor> <hyphenation>hyphena-te</hyphenation>
<U>00ff</U> <math>ma+th</math> <footnote><para>infootnote</para></footnote> <url><urefurl>la</urefurl></url> <url><urefurl>a</urefurl><urefdesc>b</urefdesc></url> <url><urefurl spaces=" "></urefurl><urefdesc>lb</urefdesc></url>
<url><urefreplacement>c</urefreplacement></url> <email><emailaddress>a&arobase;c</emailaddress><emailname spaces=" ">e</emailname></email> <abbr><abbrword>ab</abbrword><abbrdesc spaces=" ">d</abbrdesc></abbr></var></para></chapter>
';


$result_converted{'docbook'}->{'commands_in_var'} = '<chapter label="1" id="chap">
<title>chap</title>

<para><replaceable>a &#241; &#229; &tex; <inlinemediaobject><imageobject><imagedata fileref="myimage.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject> <link linkend="chap">chap</link> See <link>(f)node</link>
section &#8220;name&#8221; in <filename>argf</filename> <literal>inverb</literal> <anchor id="inanchor"/>&#x00ff; <inlineequation><mathphrase>ma+th</mathphrase></inlineequation> <footnote><para>infootnote</para></footnote> <ulink url="la">la</ulink> <ulink url="a">b</ulink> <ulink url="">lb</ulink>
<ulink url="">c</ulink> <ulink url="mailto:a@c">e</ulink> <abbrev>ab</abbrev> (d)</replaceable></para></chapter>
';

$result_converted_errors{'docbook'}->{'commands_in_var'} = [
  {
    'error_line' => 'warning: @image file `myimage\' not found, using `myimage.jpg\'
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' not found, using `myimage.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'commands_in_var'} = '\\label{anchor:Top}%
\\chapter{{chap}}
\\label{anchor:chap}%

\\Texinfocommandstyletextvar{a \\~{n} \\aa{} \\TeX{} \\includegraphics{myimage} \\hyperref[anchor:chap]{\\chaptername~\\ref*{anchor:chap} [chap], page~\\pageref*{anchor:chap}} See (f)node
Section ``name\'\' in \\texttt{argf}  \\label{anchor:inanchor}%
\\hyphenation{hyphena-te}ÿ $ma+th$ \\footnote{infootnote} \\url{la} \\href{a}{b (\\nolinkurl{a})} lb
c \\href{mailto:a@c}{e} ab (d)}';

$result_converted_errors{'latex_text'}->{'commands_in_var'} = [
  {
    'error_line' => 'warning: @image file `myimage\' (for LaTeX) not found
',
    'line_nr' => 7,
    'text' => '@image file `myimage\' (for LaTeX) not found',
    'type' => 'warning'
  }
];


1;
