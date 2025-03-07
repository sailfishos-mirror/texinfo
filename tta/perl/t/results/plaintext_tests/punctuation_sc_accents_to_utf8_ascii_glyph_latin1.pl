use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_sc_accents_to_utf8_ascii_glyph_latin1'} = '*document_root C5
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 punctuation_small_case_accents_latin1.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-1}
   |text_arg:{ISO-8859-1}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-1}
   {empty_line:\\n}
 *0 @node C1 punctuation_small_case_accents_latin1.texi:l5 {top}
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
 *1 @top C2 punctuation_small_case_accents_latin1.texi:l6 {top section}
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
 *2 @node C1 punctuation_small_case_accents_latin1.texi:l8 {node chap}
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
 *3 @chapter C11 punctuation_small_case_accents_latin1.texi:l9 {chapter}
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
  *paragraph C14
   *4 @\' C1 punctuation_small_case_accents_latin1.texi:l13
    *following_arg C1
     {e}
   {, --- }
   *5 @dfn C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container C1
     {def}
   { -- }
   *6 @code C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container C1
     {in code}
   {. }
   *7 @samp C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container C1
     {in samp}
   { aé. }
   *8 @comma C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container
   { }
   *9 @exclamdown C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container
   {. }
   *10 @dots C1 punctuation_small_case_accents_latin1.texi:l13
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C26
   *11 @geq C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   { }
   *12 @enddots C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   { }
   *13 @AA C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   { }
   *14 @\' C1 punctuation_small_case_accents_latin1.texi:l15
    *following_arg C1
     {e}
   { }
   *15 @dotaccent C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container C1
     {A}
   { }
   *16 @l C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   {. }
   *17 @copyright C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   {. }
   *18 @error C1 punctuation_small_case_accents_latin1.texi:l15
    *brace_container
   {.\\n}
   *19 @quotedblleft C1 punctuation_small_case_accents_latin1.texi:l16
    *brace_container
   { in quotes }
   *20 @quotedblright C1 punctuation_small_case_accents_latin1.texi:l16
    *brace_container
   {. }
   *21 @expansion C1 punctuation_small_case_accents_latin1.texi:l16
    *brace_container
   {\\n}
   *22 @minus C1 punctuation_small_case_accents_latin1.texi:l17
    *brace_container
   { }
   *23 @registeredsymbol C1 punctuation_small_case_accents_latin1.texi:l17
    *brace_container
   {\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C26
   *24 @u C1 punctuation_small_case_accents_latin1.texi:l20
    *brace_container C1
     {--a}
   {\\n}
   *25 @^ C1 punctuation_small_case_accents_latin1.texi:l21
    *brace_container C1
     {--a}
   {\\n}
   *26 @aa C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container
   { }
   *27 @AA C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container
   { }
   *28 @^ C1 punctuation_small_case_accents_latin1.texi:l22
    *following_arg C1
     {e}
   { }
   *29 @^ C1 punctuation_small_case_accents_latin1.texi:l22
    *following_arg C1
     {E}
   { }
   *30 @~ C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container C1
     *31 @dotless C1 punctuation_small_case_accents_latin1.texi:l22
      *brace_container C1
       {i}
   { }
   *32 @dotless C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container C1
     {i}
   { }
   *33 @udotaccent C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container C1
     {r}
   { }
   *34 @v C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container C1
     *35 @\' C1 punctuation_small_case_accents_latin1.texi:l22
      *brace_container C1
       {r}
   { }
   *36 @= C1 punctuation_small_case_accents_latin1.texi:l22
    *brace_container C1
     *37 @, C1 punctuation_small_case_accents_latin1.texi:l22
      *brace_container C1
       *38 @~ C1 punctuation_small_case_accents_latin1.texi:l22
        *brace_container C1
         {n}
   {.\\n}
   *39 @equiv C1 punctuation_small_case_accents_latin1.texi:l23
    *brace_container
   {\\n}
   *40 @sc C1 punctuation_small_case_accents_latin1.texi:l24
    *brace_container C17
     *41 @aa C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container
     { }
     *42 @AA C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container
     { }
     *43 @^ C1 punctuation_small_case_accents_latin1.texi:l24
      *following_arg C1
       {e}
     { }
     *44 @^ C1 punctuation_small_case_accents_latin1.texi:l24
      *following_arg C1
       {E}
     { é }
     *45 @~ C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container C1
       *46 @dotless C1 punctuation_small_case_accents_latin1.texi:l24
        *brace_container C1
         {i}
     { }
     *47 @dotless C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container C1
       {i}
     { }
     *48 @udotaccent C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container C1
       {r}
     { }
     *49 @v C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container C1
       *50 @\' C1 punctuation_small_case_accents_latin1.texi:l24
        *brace_container C1
         {r}
     { }
     *51 @= C1 punctuation_small_case_accents_latin1.texi:l24
      *brace_container C1
       *52 @, C1 punctuation_small_case_accents_latin1.texi:l24
        *brace_container C1
         *53 @~ C1 punctuation_small_case_accents_latin1.texi:l24
          *brace_container C1
           {n}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'punctuation_sc_accents_to_utf8_ascii_glyph_latin1'} = '\\input texinfo

@documentencoding ISO-8859-1

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
@sc{@aa{} @AA{} @^e @^E é @~{@dotless{i}} @dotless{i} @udotaccent{r} @v{@\'{r}} @={@,{@~{n}}}}.

';


$result_texts{'punctuation_sc_accents_to_utf8_ascii_glyph_latin1'} = '
top section
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
AA AA E^ E^ É I~ I .R R\'< N~,=.

';

$result_errors{'punctuation_sc_accents_to_utf8_ascii_glyph_latin1'} = [];


1;
