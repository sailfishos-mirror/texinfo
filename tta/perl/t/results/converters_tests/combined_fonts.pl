use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'combined_fonts'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@setfilename C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{combined_fonts.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {combined_fonts.info}
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
 *1 @top C2 l4 {top section}
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
 *2 @node C1 l6 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C15 l7 {chapter}
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
  *paragraph C12
   *4 @code C1 l9
    *brace_container C1
     {c--ode}
   {, }
   *5 @dfn C1 l9
    *brace_container C1
     {d--fn}
   {, }
   *6 @var C1 l9
    *brace_container C1
     {v--ar}
   {, }
   *7 @strong C1 l9
    *brace_container C1
     {s--trong}
   {, }
   *8 @kbd C1 l9
    *brace_container C1
     {k--bd}
   {, }
   *9 @samp C1 l9
    *brace_container C1
     {s--amp}
   {.\\n}
  {empty_line:\\n}
  *paragraph C12
   *10 @code C1 l11
    *brace_container C1
     *11 @dfn C1 l11
      *brace_container C1
       {d--fn in code}
   {\\n}
   *12 @var C1 l12
    *brace_container C1
     *13 @code C1 l12
      *brace_container C1
       {c--ode in var}
   {\\n}
   *14 @code C1 l13
    *brace_container C1
     *15 @var C1 l13
      *brace_container C1
       {v--ar in code}
   {\\n}
   *16 @strong C1 l14
    *brace_container C1
     *17 @kbd C1 l14
      *brace_container C1
       {k--bd in strong}
   {\\n}
   *18 @samp C1 l15
    *brace_container C1
     *19 @strong C1 l15
      *brace_container C1
       {s--trong in samp}
   {\\n}
   *20 @strong C1 l16
    *brace_container C1
     *21 @samp C1 l16
      *brace_container C1
       {s--amp in strong}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *22 @cite C1 l18
    *brace_container C1
     {c--ite}
   {\\n}
  {empty_line:\\n}
  *paragraph C4
   *23 @code C1 l20
    *brace_container C1
     *24 @cite C1 l20
      *brace_container C1
       {c--ite in code}
   {\\n}
   *25 @cite C1 l21
    *brace_container C1
     *26 @code C1 l21
      *brace_container C1
       {c--ode in cite}
   {\\n}
  {empty_line:\\n}
  *paragraph C8
   *27 @code C1 l23
    *brace_container C1
     {c--ode}
   { }
   *28 @slanted C1 l23
    *brace_container C1
     {s--lanted}
   { }
   *29 @b C1 l23
    *brace_container C1
     {b--}
   { }
   *30 @t C1 l23
    *brace_container C1
     {t--}
   {\\n}
  {empty_line:\\n}
  *paragraph C16
   *31 @code C1 l25
    *brace_container C1
     *32 @slanted C1 l25
      *brace_container C1
       {s--lanted in code}
   {\\n}
   *33 @slanted C1 l26
    *brace_container C1
     *34 @code C1 l26
      *brace_container C1
       {c--ode in slanted}
   {\\n}
   *35 @b C1 l27
    *brace_container C1
     *36 @slanted C1 l27
      *brace_container C1
       {s--lanted in b}
   {\\n}
   *37 @slanted C1 l28
    *brace_container C1
     *38 @b C1 l28
      *brace_container C1
       {b-- in slanted}
   {\\n}
   *39 @t C1 l29
    *brace_container C1
     *40 @slanted C1 l29
      *brace_container C1
       {s--lanted in t}
   {\\n}
   *41 @slanted C1 l30
    *brace_container C1
     *42 @t C1 l30
      *brace_container C1
       {t-- in slanted}
   {\\n}
   *43 @t C1 l31
    *brace_container C1
     *44 @var C1 l31
      *brace_container C1
       {v--ar in t}
   {\\n}
   *45 @var C1 l32
    *brace_container C1
     *46 @t C1 l32
      *brace_container C1
       {t-- in var}
   {\\n}
  {empty_line:\\n}
  *47 @example C3 l34
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C4
    *48 @var C1 l35
     *brace_container C1
      {v--ar in example}
    {\\n}
    *49 @cite C1 l36
     *brace_container C1
      {c--ite in example}
    {\\n}
   *@end C1 l37
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
';


$result_texis{'combined_fonts'} = '@setfilename combined_fonts.info

@node Top
@top top section

@node chapter
@chapter chapter

@code{c--ode}, @dfn{d--fn}, @var{v--ar}, @strong{s--trong}, @kbd{k--bd}, @samp{s--amp}.

@code{@dfn{d--fn in code}}
@var{@code{c--ode in var}}
@code{@var{v--ar in code}}
@strong{@kbd{k--bd in strong}}
@samp{@strong{s--trong in samp}}
@strong{@samp{s--amp in strong}}

@cite{c--ite}

@code{@cite{c--ite in code}}
@cite{@code{c--ode in cite}}

@code{c--ode} @slanted{s--lanted} @b{b--} @t{t--}

@code{@slanted{s--lanted in code}}
@slanted{@code{c--ode in slanted}}
@b{@slanted{s--lanted in b}}
@slanted{@b{b-- in slanted}}
@t{@slanted{s--lanted in t}}
@slanted{@t{t-- in slanted}}
@t{@var{v--ar in t}}
@var{@t{t-- in var}}

@example
@var{v--ar in example}
@cite{c--ite in example}
@end example
';


$result_texts{'combined_fonts'} = '
top section
***********

1 chapter
*********

c--ode, d-fn, v-ar, s-trong, k--bd, s--amp.

d--fn in code
c--ode in var
v--ar in code
k--bd in strong
s--trong in samp
s--amp in strong

c-ite

c--ite in code
c--ode in cite

c--ode s-lanted b- t--

s--lanted in code
c--ode in slanted
s-lanted in b
b- in slanted
s--lanted in t
t-- in slanted
v--ar in t
t-- in var

v--ar in example
c--ite in example
';

$result_errors{'combined_fonts'} = [];


1;
