use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentation_examples'} = '*document_root C11
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C4
   *@settitle C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *0 @email C2 l2
      *brace_arg C3
       {someone}
       *@@
       {example.com}
      *brace_arg C1
      |INFO
      |spaces_before_argument:
       |{ }
       {me}
     { }
     *1 @sansserif C1 l2
      *brace_container C1
       {in--title}
     { }
     *2 @error C1 l2
      *brace_container
     { }
     *3 @equiv C1 l2
      *brace_container
   {empty_line:\\n}
   *@contents C1 l4
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *4 @node C1 l6 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[next->E6]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *5 @top C2 l7 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_childs:EC[E7|E38|E42|E44]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E5]
  ||section_level:{-1}
 |toplevel_directions:D[next->E7]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *6 @node C1 l9 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |node_directions:D[next->E37|prev->E4|up->E4]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *7 @chapter C28 l10 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[next->E38|up->E5]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E38|prev->E5|up->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C11
   *8 @sansserif C1 l12
    *brace_container C1
     {in--text}
   { }
   *@-
   { p--n. }
   *9 @error C1 l12
    *brace_container
   { }
   *10 @equiv C1 l12
    *brace_container
   {\\n}
   *11 @xref C1 l13
    *brace_arg C1
    |EXTRA
    |node_content:{my node}
    |normalized:{my-node}
     {my node}
   *12 @footnote C1 l13
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {in footnote}
   {.\\n}
  *13 @titlefont C1 l14
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {in titlefont}
  {\\n}
  *paragraph C6
   *14 @email C2 l15
    *brace_arg C3
     {a}
     *@@
     {b.c}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {someone}
   {\\n}
   *15 @sc C1 l16
    *brace_container C1
     {in Sc}
   {\\n}
   *16 @var C1 l17
    *brace_container C1
     {in var}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *17 @math C1 l19
    *brace_command_context C7
     *18 @sansserif C1 l19
      *brace_container C1
       {in--math}
     { }
     *@-
     { a=b }
     *19 @error C1 l19
      *brace_container
     { }
     *20 @equiv C1 l19
      *brace_container
   {\\n}
  {empty_line:\\n}
  *21 @indentedblock C3 l21
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *22 @example C3 l22
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C10
     *23 @sansserif C1 l23
      *brace_container C1
       {in--example}
     { }
     *@-
     { c. }
     *24 @error C1 l23
      *brace_container
     { }
     *25 @equiv C1 l23
      *brace_container
     {\\n}
     *26 @email C1 l24
      *brace_arg C3
       {a}
       *@@
       {example}
     {\\n}
    *@end C1 l25
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
   *@end C1 l26
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{indentedblock}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {indentedblock}
  {empty_line:\\n}
  *27 @display C3 l28
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    *28 @email C1 l29
     *brace_arg C3
      {a}
      *@@
      {display}
    {\\n}
   *@end C1 l30
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{display}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {display}
  {empty_line:\\n}
  *29 @displaymath C9 l32
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   {\\frac}
   *balanced_braces C1 l33
    {{h}}
   *balanced_braces C3 l33
    {{j}
    *30 @sup C1 l33
     *brace_container C1
      {2}
    {}}
   { \\dv[n]}
   *balanced_braces C1 l33
    {{f}}
   *balanced_braces C1 l33
    {{x}}
   {\\n}
   *@end C1 l34
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{displaymath}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {displaymath}
  {empty_line:\\n}
  *31 index_entry_command@cindex C1 l36
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E6]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *32 @file C1 l36
     *brace_container C1
      {e1}
  *33 index_entry_command@cindex C1 l37
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E6]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {i2}
  {empty_line:\\n}
  *34 index_entry_command@vindex C1 l39
  |INFO
  |command_name:{vindex}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{    \\n}
  {empty_line:\\n}
  *@documentlanguage C1 l41
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |text_arg:{fr}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr}
  {empty_line:\\n}
  *paragraph C2
   *35 @error C1 l43
    *brace_container
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *36 @equiv C1 l45
    *brace_container
   {\\n}
  {empty_line:\\n}
  *@contents C1 l47
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *37 @node C1 l49 {my node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E38]
 |associated_title_command:[E38]
 |is_target:{1}
 |node_directions:D[next->E41|prev->E6|up->E4]
 |normalized:{my-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {my node}
 *38 @chapter C8 l50 {New node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E37]
 |associated_node:[E37]
 |section_directions:D[next->E42|prev->E7|up->E5]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E42|prev->E7|up->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {New node}
  {empty_line:\\n}
  *@documentlanguage C1 l52
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{pl}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {pl}
  {empty_line:\\n}
  *paragraph C2
   *39 @error C1 l54
    *brace_container
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *40 @equiv C1 l56
    *brace_container
   {\\n}
  {empty_line:\\n}
 *41 @node C1 l58 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E42]
 |associated_title_command:[E42]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E43|prev->E37|up->E4]
 |normalized:{Index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
 *42 @appendix C4 l59 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E41]
 |associated_node:[E41]
 |section_directions:D[next->E44|prev->E38|up->E5]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[next->E44|prev->E38|up->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
  {empty_line:\\n}
  *@printindex C1 l61
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
  {empty_line:\\n}
 *43 @node C1 l63 {Second appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E44]
 |associated_title_command:[E44]
 |is_target:{1}
 |node_directions:D[prev->E41|up->E4]
 |normalized:{Second-appendix}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second appendix}
 *44 @appendix C2 l64 {Second appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E43]
 |associated_node:[E43]
 |section_directions:D[prev->E42|up->E5]
 |section_level:{1}
 |section_number:{B}
 |toplevel_directions:D[prev->E42|up->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second appendix}
  {empty_line:\\n}
';


$result_texis{'documentation_examples'} = '
@settitle @email{someone@@example.com, me} @sansserif{in--title} @error{} @equiv{}

@contents

@node Top
@top top

@node chapter
@chapter Chapter

@sansserif{in--text} @- p--n. @error{} @equiv{}
@xref{my node}@footnote{in footnote}.
@titlefont{in titlefont}
@email{a@@b.c, someone}
@sc{in Sc}
@var{in var}

@math{@sansserif{in--math} @- a=b @error{} @equiv{}}

@indentedblock
@example
@sansserif{in--example} @- c. @error{} @equiv{}
@email{a@@example}
@end example
@end indentedblock

@display
@email{a@@display}
@end display

@displaymath
\\frac{h}{j@sup{2}} \\dv[n]{f}{x}
@end displaymath

@cindex @file{e1}
@cindex i2

@vindex    

@documentlanguage fr

@error{}.

@equiv{}

@contents

@node my node
@chapter New node

@documentlanguage pl

@error{}.

@equiv{}

@node Index
@appendix Index

@printindex cp

@node Second appendix
@appendix Second appendix

';


$result_texts{'documentation_examples'} = '

top
***

1 Chapter
*********

in-text  p-n. error-> ==
my node.
in titlefont
someone
IN SC
in var

in--math  a=b error-> ==

in--example  c. error-> ==
a@example

a@display

\\frac{h}{j2} \\dv[n]{f}{x}




error->.

==


2 New node
**********


error->.

==

Appendix A Index
****************


Appendix B Second appendix
**************************

';

$result_errors{'documentation_examples'} = [
  {
    'error_line' => 'warning: @vindex missing argument
',
    'line_nr' => 39,
    'text' => '@vindex missing argument',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'documentation_examples'} = 'cp:
 e1
 i2
';

1;
