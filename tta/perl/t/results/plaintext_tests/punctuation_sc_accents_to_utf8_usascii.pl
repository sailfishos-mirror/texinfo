use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'punctuation_sc_accents_to_utf8_usascii'} = '*document_root C5
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
   *@\' C1 punctuation_small_case_accents_us_ascii.texi:l13
    *following_arg C1
     {e}
   {, --- }
   *@dfn C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {def}
   { -- }
   *@code C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {in code}
   {. }
   *@samp C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {in samp}
   { a}
   *@\' C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container C1
     {e}
   {. }
   *@comma C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   { }
   *@exclamdown C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   {. }
   *@dots C1 punctuation_small_case_accents_us_ascii.texi:l13
    *brace_container
   {\\n}
  {empty_line:\\n}
  *paragraph C26
   *@geq C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *@enddots C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *@AA C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   { }
   *@\' C1 punctuation_small_case_accents_us_ascii.texi:l15
    *following_arg C1
     {e}
   { }
   *@dotaccent C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container C1
     {A}
   { }
   *@l C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {. }
   *@copyright C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {. }
   *@error C1 punctuation_small_case_accents_us_ascii.texi:l15
    *brace_container
   {.\\n}
   *@quotedblleft C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   { in quotes }
   *@quotedblright C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   {. }
   *@expansion C1 punctuation_small_case_accents_us_ascii.texi:l16
    *brace_container
   {\\n}
   *@minus C1 punctuation_small_case_accents_us_ascii.texi:l17
    *brace_container
   { }
   *@registeredsymbol C1 punctuation_small_case_accents_us_ascii.texi:l17
    *brace_container
   {\\n}
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C26
   *@u C1 punctuation_small_case_accents_us_ascii.texi:l20
    *brace_container C1
     {--a}
   {\\n}
   *@^ C1 punctuation_small_case_accents_us_ascii.texi:l21
    *brace_container C1
     {--a}
   {\\n}
   *@aa C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container
   { }
   *@AA C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container
   { }
   *@^ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *following_arg C1
     {e}
   { }
   *@^ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *following_arg C1
     {E}
   { }
   *@~ C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *@dotless C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       {i}
   { }
   *@dotless C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     {i}
   { }
   *@udotaccent C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     {r}
   { }
   *@v C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *@\' C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       {r}
   { }
   *@= C1 punctuation_small_case_accents_us_ascii.texi:l22
    *brace_container C1
     *@, C1 punctuation_small_case_accents_us_ascii.texi:l22
      *brace_container C1
       *@~ C1 punctuation_small_case_accents_us_ascii.texi:l22
        *brace_container C1
         {n}
   {.\\n}
   *@equiv C1 punctuation_small_case_accents_us_ascii.texi:l23
    *brace_container
   {\\n}
   *@sc C1 punctuation_small_case_accents_us_ascii.texi:l24
    *brace_container C17
     *@aa C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container
     { }
     *@AA C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container
     { }
     *@^ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *following_arg C1
       {e}
     { é }
     *@^ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *following_arg C1
       {E}
     { }
     *@~ C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *@dotless C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         {i}
     { }
     *@dotless C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       {i}
     { }
     *@udotaccent C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       {r}
     { }
     *@v C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *@\' C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         {r}
     { }
     *@= C1 punctuation_small_case_accents_us_ascii.texi:l24
      *brace_container C1
       *@, C1 punctuation_small_case_accents_us_ascii.texi:l24
        *brace_container C1
         *@~ C1 punctuation_small_case_accents_us_ascii.texi:l24
          *brace_container C1
           {n}
   {.\\n}
  {empty_line:\\n}
';


$result_texis{'punctuation_sc_accents_to_utf8_usascii'} = '\\input texinfo

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


$result_texts{'punctuation_sc_accents_to_utf8_usascii'} = '
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

$result_errors{'punctuation_sc_accents_to_utf8_usascii'} = [];


1;
