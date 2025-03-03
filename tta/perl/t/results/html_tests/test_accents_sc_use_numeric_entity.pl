use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_accents_sc_use_numeric_entity'} = '*document_root C5
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 punctuation_small_case_accents_utf8.texi:l3 {top}
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
    {top}
 *1 @top C2 punctuation_small_case_accents_utf8.texi:l4 {top section}
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
    {top section}
  {empty_line:\\n}
 *2 @node C1 punctuation_small_case_accents_utf8.texi:l6 {node chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{node-chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node chap}
 *3 @chapter C11 punctuation_small_case_accents_utf8.texi:l7 {chapter}
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
    {chapter}
  {empty_line:\\n}
  *paragraph C1
   {``in double q\'\'. `in simple q\'.\\n}
  {empty_line:\\n}
  *paragraph C14
   *4 @\' C1 punctuation_small_case_accents_utf8.texi:l11
    *following_arg C1
     {e}
   {, --- }
   *5 @dfn C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container C1
     {def}
   { -- }
   *6 @code C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container C1
     {in code}
   {. }
   *7 @samp C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container C1
     {in samp}
   { aé. }
   *8 @comma C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container
   { }
   *9 @exclamdown C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container
   {. }
   *10 @dots C1 punctuation_small_case_accents_utf8.texi:l11
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C26
   *11 @geq C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   { }
   *12 @enddots C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   { }
   *13 @AA C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   { }
   *14 @\' C1 punctuation_small_case_accents_utf8.texi:l13
    *following_arg C1
     {e}
   { }
   *15 @dotaccent C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container C1
     {A}
   { }
   *16 @l C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   {. }
   *17 @copyright C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   {. }
   *18 @error C1 punctuation_small_case_accents_utf8.texi:l13
    *brace_container
   {.\\n}
   *19 @quotedblleft C1 punctuation_small_case_accents_utf8.texi:l14
    *brace_container
   { in quotes }
   *20 @quotedblright C1 punctuation_small_case_accents_utf8.texi:l14
    *brace_container
   {. }
   *21 @expansion C1 punctuation_small_case_accents_utf8.texi:l14
    *brace_container
   {\\n}
   *22 @minus C1 punctuation_small_case_accents_utf8.texi:l15
    *brace_container
   { }
   *23 @registeredsymbol C1 punctuation_small_case_accents_utf8.texi:l15
    *brace_container
   {\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C26
   *24 @u C1 punctuation_small_case_accents_utf8.texi:l18
    *brace_container C1
     {--a}
   {\\n}
   *25 @^ C1 punctuation_small_case_accents_utf8.texi:l19
    *brace_container C1
     {--a}
   {\\n}
   *26 @aa C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container
   { }
   *27 @AA C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container
   { }
   *28 @^ C1 punctuation_small_case_accents_utf8.texi:l20
    *following_arg C1
     {e}
   { }
   *29 @^ C1 punctuation_small_case_accents_utf8.texi:l20
    *following_arg C1
     {E}
   { }
   *30 @~ C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container C1
     *31 @dotless C1 punctuation_small_case_accents_utf8.texi:l20
      *brace_container C1
       {i}
   { }
   *32 @dotless C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container C1
     {i}
   { }
   *33 @udotaccent C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container C1
     {r}
   { }
   *34 @v C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container C1
     *35 @\' C1 punctuation_small_case_accents_utf8.texi:l20
      *brace_container C1
       {r}
   { }
   *36 @= C1 punctuation_small_case_accents_utf8.texi:l20
    *brace_container C1
     *37 @, C1 punctuation_small_case_accents_utf8.texi:l20
      *brace_container C1
       *38 @~ C1 punctuation_small_case_accents_utf8.texi:l20
        *brace_container C1
         {n}
   {.\\n}
   *39 @equiv C1 punctuation_small_case_accents_utf8.texi:l21
    *brace_container
   {\\n}
   *40 @sc C1 punctuation_small_case_accents_utf8.texi:l22
    *brace_container C17
     *41 @aa C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container
     { }
     *42 @AA C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container
     { }
     *43 @^ C1 punctuation_small_case_accents_utf8.texi:l22
      *following_arg C1
       {e}
     { é }
     *44 @^ C1 punctuation_small_case_accents_utf8.texi:l22
      *following_arg C1
       {E}
     { }
     *45 @~ C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container C1
       *46 @dotless C1 punctuation_small_case_accents_utf8.texi:l22
        *brace_container C1
         {i}
     { }
     *47 @dotless C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container C1
       {i}
     { }
     *48 @udotaccent C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container C1
       {r}
     { }
     *49 @v C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container C1
       *50 @\' C1 punctuation_small_case_accents_utf8.texi:l22
        *brace_container C1
         {r}
     { }
     *51 @= C1 punctuation_small_case_accents_utf8.texi:l22
      *brace_container C1
       *52 @, C1 punctuation_small_case_accents_utf8.texi:l22
        *brace_container C1
         *53 @~ C1 punctuation_small_case_accents_utf8.texi:l22
          *brace_container C1
           {n}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'test_accents_sc_use_numeric_entity'} = '\\input texinfo

@node top
@top top section

@node node chap
@chapter chapter

``in double q\'\'. `in simple q\'.

@\'e, --- @dfn{def} -- @code{in code}. @samp{in samp} aé. @comma{} @exclamdown{}. @dots{}

@geq{} @enddots{} @AA{} @\'e @dotaccent{A} @l{}. @copyright{}. @error{}.
@quotedblleft{} in quotes @quotedblright{}. @expansion{}
@minus{} @registeredsymbol{}


@u{--a}
@^{--a}
@aa{} @AA{} @^e @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}.
@equiv{}
@sc{@aa{} @AA{} @^e é @^E @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

';


$result_texts{'test_accents_sc_use_numeric_entity'} = 'top section
***********

1 chapter
*********

"in double q". `in simple q\'.

e\', -- def - in code. in samp aé. , !. ...

>= ... AA e\' A. /l. (C). error-->.
" in quotes ". ==>
- (R)


-a(
-a^
aa AA e^ E^ i~ i .r r\'< n~,=.
==
AA AA E^ É E^ I~ I .R R\'< N~,=.

';

$result_errors{'test_accents_sc_use_numeric_entity'} = [];



$result_converted{'html_text'}->{'test_accents_sc_use_numeric_entity'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &#182;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-chap" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &#182;</a></span></h2>

<p>&#8220;in double q&#8221;. &#8216;in simple q&#8217;.
</p>
<p>&#233;, &#8212; <em class="dfn">def</em> &#8211; <code class="code">in code</code>. &#8216;<samp class="samp">in samp</samp>&#8217; aé. &#44; &#161;. &#8230;
</p>
<p>&#8805; <small class="enddots">...</small> &#197; &#233; &#550; &#322;. &#169;. error&#8594;.
&#8220; in quotes &#8221;. &#8614;
&#8722; &#174;
</p>

<p>&#8211;a&#774;
&#8211;a&#770;
&#229; &#197; &#234; &#202; &#297; &#305; &#7771; &#341;&#780; &#241;&#807;&#772;.
&#8801;
<small class="sc">&#197; &#197; &#202; É &#202; &#296; I &#7770; &#340;&#780; &#209;&#807;&#772;</small>.
</p>
</div>
</div>
';

1;
