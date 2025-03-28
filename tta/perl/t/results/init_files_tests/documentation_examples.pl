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
     *@email C2 l2
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
     *@sansserif C1 l2
      *brace_container C1
       {in--title}
     { }
     *@error C1 l2
      *brace_container
     { }
     *@equiv C1 l2
      *brace_container
   {empty_line:\\n}
   *@contents C1 l4
   |EXTRA
   |global_command_number:{1}
    {rawline_arg:\\n}
   {empty_line:\\n}
 *0 @node C1 l6 {Top}
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
 *1 @top C2 l7 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E5|E7|E9]
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
 *2 @node C1 l9 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C28 l10 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C11
   *@sansserif C1 l12
    *brace_container C1
     {in--text}
   { }
   *@-
   { p--n. }
   *@error C1 l12
    *brace_container
   { }
   *@equiv C1 l12
    *brace_container
   {\\n}
   *@xref C1 l13
    *brace_arg C1
    |EXTRA
    |node_content:{my node}
    |normalized:{my-node}
     {my node}
   *@footnote C1 l13
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {in footnote}
   {.\\n}
  *@titlefont C1 l14
  |EXTRA
  |global_command_number:{1}
   *brace_container C1
    {in titlefont}
  {\\n}
  *paragraph C6
   *@email C2 l15
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
   *@sc C1 l16
    *brace_container C1
     {in Sc}
   {\\n}
   *@var C1 l17
    *brace_container C1
     {in var}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *@math C1 l19
    *brace_command_context C7
     *@sansserif C1 l19
      *brace_container C1
       {in--math}
     { }
     *@-
     { a=b }
     *@error C1 l19
      *brace_container
     { }
     *@equiv C1 l19
      *brace_container
   {\\n}
  {empty_line:\\n}
  *@indentedblock C3 l21
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@example C3 l22
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *preformatted C10
     *@sansserif C1 l23
      *brace_container C1
       {in--example}
     { }
     *@-
     { c. }
     *@error C1 l23
      *brace_container
     { }
     *@equiv C1 l23
      *brace_container
     {\\n}
     *@email C1 l24
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
  *@display C3 l28
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C2
    *@email C1 l29
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
  *@displaymath C9 l32
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
    *@sup C1 l33
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
  *index_entry_command@cindex C1 l36
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@file C1 l36
     *brace_container C1
      {e1}
  *index_entry_command@cindex C1 l37
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {i2}
  {empty_line:\\n}
  *index_entry_command@vindex C1 l39
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
   *@error C1 l43
    *brace_container
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *@equiv C1 l45
    *brace_container
   {\\n}
  {empty_line:\\n}
  *@contents C1 l47
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *4 @node C1 l49 {my node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |associated_title_command:[E5]
 |is_target:{1}
 |node_directions:D[next->E6|prev->E2|up->E0]
 |normalized:{my-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {my node}
 *5 @chapter C8 l50 {New node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E4]
 |associated_node:[E4]
 |section_directions:D[next->E7|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E7|prev->E3|up->E1]
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
   *@error C1 l54
    *brace_container
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *@equiv C1 l56
    *brace_container
   {\\n}
  {empty_line:\\n}
 *6 @node C1 l58 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[next->E8|prev->E4|up->E0]
 |normalized:{Index}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Index}
 *7 @appendix C4 l59 {Index}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[next->E9|prev->E5|up->E1]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[next->E9|prev->E5|up->E1]
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
 *8 @node C1 l63 {Second appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |associated_title_command:[E9]
 |is_target:{1}
 |node_directions:D[prev->E6|up->E0]
 |normalized:{Second-appendix}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Second appendix}
 *9 @appendix C2 l64 {Second appendix}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E8]
 |associated_node:[E8]
 |section_directions:D[prev->E7|up->E1]
 |section_level:{1}
 |section_number:{B}
 |toplevel_directions:D[prev->E7|up->E1]
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

$result_converted_errors{'file_html'}->{'documentation_examples'} = [
  {
    'error_line' => 'warning: @node `Index\' file index.html for redirection exists
',
    'line_nr' => 58,
    'text' => '@node `Index\' file index.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with Top file
',
    'text' => 'conflict with Top file',
    'type' => 'warning'
  }
];


1;
