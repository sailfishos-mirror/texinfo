use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_accents_sc_default'} = '*document_root C5
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


$result_texis{'test_accents_sc_default'} = '\\input texinfo

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


$result_texts{'test_accents_sc_default'} = 'top section
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

$result_sectioning{'test_accents_sc_default'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'node-chap'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0];
$result_sectioning{'test_accents_sc_default'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'test_accents_sc_default'};

$result_nodes{'test_accents_sc_default'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node-chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'test_accents_sc_default'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'test_accents_sc_default'}[0];
$result_nodes{'test_accents_sc_default'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'test_accents_sc_default'}[0];
$result_nodes{'test_accents_sc_default'}[1] = $result_nodes{'test_accents_sc_default'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'test_accents_sc_default'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'node-chap'
    }
  }
];

$result_errors{'test_accents_sc_default'} = [];


$result_floats{'test_accents_sc_default'} = {};



$result_converted{'html_text'}->{'test_accents_sc_default'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top-section"><span>top section<a class="copiable-link" href="#top-section"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#node-chap" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="node-chap">
<h2 class="chapter" id="chapter"><span>1 chapter<a class="copiable-link" href="#chapter"> &para;</a></span></h2>

<p>&ldquo;in double q&rdquo;. &lsquo;in simple q&rsquo;.
</p>
<p>&eacute;, &mdash; <em class="dfn">def</em> &ndash; <code class="code">in code</code>. &lsquo;<samp class="samp">in samp</samp>&rsquo; aé. , &iexcl;. &hellip;
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
