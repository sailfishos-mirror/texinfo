use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_accents_sc_enable_encoding_usascii'} = '*document_root C5
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 punctuation_small_case_accents_us_ascii.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{us-ascii}
   |text_arg:{US-ASCII}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {US-ASCII}
   {empty_line:\\n}
 *0 @node C1 punctuation_small_case_accents_us_ascii.texi:l5 {top}
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
    {top}
 *1 @top C2 punctuation_small_case_accents_us_ascii.texi:l6 {top section}
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
    {top section}
  {empty_line:\\n}
 *2 @node C1 punctuation_small_case_accents_us_ascii.texi:l8 {node chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{node-chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node chap}
 *3 @chapter C11 punctuation_small_case_accents_us_ascii.texi:l9 {chapter}
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
    {chapter}
  {empty_line:\\n}
  *paragraph C1
   {``in double q\'\'. `in simple q\'.\\n}
  {empty_line:\\n}
  *paragraph C16
   *4 @\' C1 punctuation_small_case_accents_us_ascii.texi:l13
    *following_arg C1
     {e}
   {, --- }
   *5 @dfn C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {def}
   { -- }
   *6 @code C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {in code}
   {. }
   *7 @samp C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {in samp}
   { a}
   *8 @\' C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {e}
   {. }
   *9 @comma C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   { }
   *10 @exclamdown C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   {. }
   *11 @dots C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C26
   *12 @geq C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *13 @enddots C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *14 @AA C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *15 @\' C1 punctuation_small_case_accents_us_ascii.texi:l15
    *following_arg C1
     {e}
   { }
   *16 @dotaccent C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container C1
     {A}
   { }
   *17 @l C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {. }
   *18 @copyright C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {. }
   *19 @error C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {.\\n}
   *20 @quotedblleft C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   { in quotes }
   *21 @quotedblright C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   {. }
   *22 @expansion C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   {\\n}
   *23 @minus C1 punctuation_small_case_accents_us_ascii.texi:l17
    *brace_container
   { }
   *24 @registeredsymbol C1 punctuation_small_case_accents_us_ascii.texi:l17
    *brace_container
   {\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C26
   *25 @u C1 punctuation_small_case_accents_us_ascii.texi:l20
    *brace_container C1
     {--a}
   {\\n}
   *26 @^ C1 punctuation_small_case_accents_us_ascii.texi:l21
    *brace_container C1
     {--a}
   {\\n}
   *27 @aa C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container
   { }
   *28 @AA C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container
   { }
   *29 @^ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *following_arg C1
     {e}
   { }
   *30 @^ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *following_arg C1
     {E}
   { }
   *31 @~ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *32 @dotless C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       {i}
   { }
   *33 @dotless C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     {i}
   { }
   *34 @udotaccent C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     {r}
   { }
   *35 @v C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *36 @\' C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       {r}
   { }
   *37 @= C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *38 @, C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       *39 @~ C1 punctuation_small_case_accents_us_ascii.texi:l22
        *brace_container C1
         {n}
   {.\\n}
   *40 @equiv C1 punctuation_small_case_accents_us_ascii.texi:l23
    *brace_container
   {\\n}
   *41 @sc C1 punctuation_small_case_accents_us_ascii.texi:l24
    *brace_container C17
     *42 @aa C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container
     { }
     *43 @AA C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container
     { }
     *44 @^ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *following_arg C1
       {e}
     { é }
     *45 @^ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *following_arg C1
       {E}
     { }
     *46 @~ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *47 @dotless C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         {i}
     { }
     *48 @dotless C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       {i}
     { }
     *49 @udotaccent C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       {r}
     { }
     *50 @v C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *51 @\' C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         {r}
     { }
     *52 @= C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *53 @, C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         *54 @~ C1 punctuation_small_case_accents_us_ascii.texi:l24
          *brace_container C1
           {n}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'test_accents_sc_enable_encoding_usascii'} = '\\input texinfo

@documentencoding US-ASCII

@node top
@top top section

@node node chap
@chapter chapter

``in double q\'\'. `in simple q\'.

@\'e, --- @dfn{def} -- @code{in code}. @samp{in samp} a@\'{e}. @comma{} @exclamdown{}. @dots{}

@geq{} @enddots{} @AA{} @\'e @dotaccent{A} @l{}. @copyright{}. @error{}.
@quotedblleft{} in quotes @quotedblright{}. @expansion{}
@minus{} @registeredsymbol{}


@u{--a}
@^{--a}
@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}.
@equiv{}
@sc{@aa{} @AA{} @^e é @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

';


$result_texts{'test_accents_sc_enable_encoding_usascii'} = '
top section
***********

1 chapter
*********

"in double q". `in simple q\'.

e\', -- def - in code. in samp ae\'. , !. ...

>= ... AA e\' A. /l. (C). error->.
" in quotes ". ==>
- (R)


-a(
-a^
aa AA e^ E^ i~ i .r r\'< n~,=.
==
AA AA E^ É E^ I~ I .R R\'< N~,=.

';

$result_errors{'test_accents_sc_enable_encoding_usascii'} = [];



$result_converted{'html_text'}->{'test_accents_sc_enable_encoding_usascii'} = '
<div class="top-level-extent" id="Top">
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-chap" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<p>&ldquo;in double q&rdquo;. &lsquo;in simple q&rsquo;.
</p>
<p>&eacute;, &mdash; <em class="dfn">def</em> &ndash; <code class="code">in code</code>. &lsquo;<samp class="samp">in samp</samp>&rsquo; a&eacute;. , &iexcl;. &hellip;
</p>
<p>&ge; <small class="enddots">...</small> &Aring; &eacute; &#550; &#322;. &copy;. error&rarr;.
&ldquo; in quotes &rdquo;. &rarr;
&minus; &reg;
</p>

<p>&ndash;a&#774;
&ndash;a&#770;
&aring; &Aring; &ecirc; &Ecirc; &#297; &inodot; &#7771; &#341;&#780; &ntilde;&#807;&#772;.
&equiv;
<small class="sc">&Aring; &Aring; &Ecirc; É &Ecirc; &#296; I &#7770; &#340;&#780; &Ntilde;&#807;&#772;</small>.
</p>
</div>
</div>
';

1;
