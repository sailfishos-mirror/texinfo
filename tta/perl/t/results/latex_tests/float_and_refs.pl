use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'float_and_refs'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E3|E13|E29]
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
 *2 @node C1 l4 {chapter}
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
 *3 @chapter C8 l5 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_directions:D[next->E13|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E13|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *4 @float C7 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E5]
  |float_number:{1.1}
  |float_section:[E3]
  |float_type:{}
  |global_command_number:{1}
  |is_target:{1}
  |normalized:{no-type}
  |shortcaption:[E6]
   *arguments_line C2
    *block_line_arg
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {no type}
   *paragraph C1
    {no type\\n}
   *5 @caption C1 l9
   |EXTRA
   |float:[E4]
    *brace_command_context C1
     *paragraph C1
      {no type float}
   {spaces_after_close_brace:\\n}
   *6 @shortcaption C1 l10
   |EXTRA
   |float:[E4]
    *brace_command_context C1
     *paragraph C1
      {short no type float}
   {spaces_after_close_brace:\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *7 @float C7 l13
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E8]
  |float_number:{1.1}
  |float_section:[E3]
  |float_type:{Thing}
  |global_command_number:{2}
  |is_target:{1}
  |normalized:{with-type}
  |shortcaption:[E9]
   *arguments_line C2
    *block_line_arg C1
     {Thing}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {with type}
   *paragraph C1
    {Something with\\n}
   *8 @caption C1 l15
   |EXTRA
   |float:[E7]
    *brace_command_context C1
     *paragraph C1
      {with type float}
   {spaces_after_close_brace:\\n}
   *9 @shortcaption C1 l16
   |EXTRA
   |float:[E7]
    *brace_command_context C1
     *paragraph C1
      {short with type float}
   {spaces_after_close_brace:\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
  *10 @float C7 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |caption:[E11]
  |float_number:{1.1}
  |float_section:[E3]
  |float_type:{Figure}
  |global_command_number:{3}
  |is_target:{1}
  |normalized:{my-figure}
  |shortcaption:[E12]
   *arguments_line C2
    *block_line_arg C1
     {Figure}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
    |spaces_before_argument:
     |{ }
     {my figure}
   *paragraph C1
    {In figure\\n}
   *11 @caption C1 l21
   |EXTRA
   |float:[E10]
    *brace_command_context C1
     *paragraph C1
      {caption for figure}
   {spaces_after_close_brace:\\n}
   *12 @shortcaption C1 l22
   |EXTRA
   |float:[E10]
    *brace_command_context C1
     *paragraph C1
      {short caption for figure}
   {spaces_after_close_brace:\\n}
   *@end C1 l23
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float}
  {empty_line:\\n}
 *13 @chapter C8 l25 {refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E29|prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E29|prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {refs}
  {empty_line:\\n}
  *paragraph C10
   *14 @xref C1 l27
    *brace_arg C1
    |EXTRA
    |node_content:{no type}
    |normalized:{no-type}
     {no type}
   {.\\n}
   *15 @xref C2 l28
    *brace_arg C1
    |EXTRA
    |node_content:{no type}
    |normalized:{no-type}
     {no type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
   {.\\n}
   *16 @xref C3 l29
    *brace_arg C1
    |EXTRA
    |node_content:{no type}
    |normalized:{no-type}
     {no type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
   {.\\n}
   *17 @xref C4 l30
    *brace_arg C1
    |EXTRA
    |node_content:{no type}
     {no type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
   {.\\n}
   *18 @xref C5 l31
    *brace_arg C1
    |EXTRA
    |node_content:{no type}
     {no type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {five}
   {.\\n}
  {empty_line:\\n}
  *paragraph C10
   *19 @xref C1 l33
    *brace_arg C1
    |EXTRA
    |node_content:{with type}
    |normalized:{with-type}
     {with type}
   {.\\n}
   *20 @xref C2 l34
    *brace_arg C1
    |EXTRA
    |node_content:{with type}
    |normalized:{with-type}
     {with type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
   {.\\n}
   *21 @xref C3 l35
    *brace_arg C1
    |EXTRA
    |node_content:{with type}
    |normalized:{with-type}
     {with type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
   {.\\n}
   *22 @xref C4 l36
    *brace_arg C1
    |EXTRA
    |node_content:{with type}
     {with type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
   {.\\n}
   *23 @xref C5 l37
    *brace_arg C1
    |EXTRA
    |node_content:{with type}
     {with type}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {five}
   {.\\n}
  {empty_line:\\n}
  *paragraph C10
   *24 @xref C1 l39
    *brace_arg C1
    |EXTRA
    |node_content:{my figure}
    |normalized:{my-figure}
     {my figure}
   {.\\n}
   *25 @xref C2 l40
    *brace_arg C1
    |EXTRA
    |node_content:{my figure}
    |normalized:{my-figure}
     {my figure}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
   {.\\n}
   *26 @xref C3 l41
    *brace_arg C1
    |EXTRA
    |node_content:{my figure}
    |normalized:{my-figure}
     {my figure}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
   {.\\n}
   *27 @xref C4 l42
    *brace_arg C1
    |EXTRA
    |node_content:{my figure}
     {my figure}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
   {.\\n}
   *28 @xref C5 l43
    *brace_arg C1
    |EXTRA
    |node_content:{my figure}
     {my figure}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {two}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {three}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {four}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {five}
   {.\\n}
  {empty_line:\\n}
 *29 @chapter C6 l45 {lists}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E13|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[prev->E13|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {lists}
  {empty_line:\\n}
  *@listoffloats C1 l47
  |EXTRA
  |float_type:{}
  |global_command_number:{1}
   *line_arg
   |INFO
   |spaces_after_argument:
    |{ \\n}
  *@listoffloats C1 l48
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Figure}
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Figure}
  *@listoffloats C1 l49
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Thing}
  |global_command_number:{3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Thing}
  {empty_line:\\n}
';


$result_texis{'float_and_refs'} = '@node Top
@top top

@node chapter
@chapter chapter

@float , no type
no type
@caption{no type float}
@shortcaption{short no type float}
@end float

@float Thing, with type
Something with
@caption{with type float}
@shortcaption{short with type float}
@end float

@float Figure, my figure
In figure
@caption{caption for figure}
@shortcaption{short caption for figure}
@end float

@chapter refs

@xref{no type}.
@xref{no type, two}.
@xref{no type, two, three}.
@xref{no type, two, three, four}.
@xref{no type, two, three, four, five}.

@xref{with type}.
@xref{with type, two}.
@xref{with type, two, three}.
@xref{with type, two, three, four}.
@xref{with type, two, three, four, five}.

@xref{my figure}.
@xref{my figure, two}.
@xref{my figure, two, three}.
@xref{my figure, two, three, four}.
@xref{my figure, two, three, four, five}.

@chapter lists

@listoffloats 
@listoffloats Figure
@listoffloats Thing

';


$result_texts{'float_and_refs'} = 'top
***

1 chapter
*********

no type
no type

Thing, with type
Something with

Figure, my figure
In figure

2 refs
******

no type.
no type.
no type.
no type.
no type.

with type.
with type.
with type.
with type.
with type.

my figure.
my figure.
my figure.
my figure.
my figure.

3 lists
*******


';

$result_errors{'float_and_refs'} = [];


$result_floats{'float_and_refs'} = ': 1
 F1.1: {no-type}
  S: short no type float
  C: no type float
Figure: 1
 F1.1: {my-figure}
  S: short caption for figure
  C: caption for figure
Thing: 1
 F1.1: {with-type}
  S: short with type float
  C: with type float
';


$result_converted{'latex_text'}->{'float_and_refs'} = '\\begin{document}
\\label{anchor:Top}%
\\chapter{{chapter}}
\\label{anchor:chapter}%

\\begin{TexinfoFloat}
no type
\\caption[short no type float]{no type float}
\\label{anchor:no-type}%
\\end{TexinfoFloat}

\\begin{TexinfoFloatThing}
Something with
\\caption[short with type float]{with type float}
\\label{anchor:with-type}%
\\end{TexinfoFloatThing}

\\begin{figure}
In figure
\\caption[short caption for figure]{caption for figure}
\\label{anchor:my-figure}%
\\end{figure}

\\chapter{{refs}}

See \\hyperref[anchor:no-type]{\\ref*{anchor:no-type}}.
See \\hyperref[anchor:no-type]{\\ref*{anchor:no-type}}.
See \\hyperref[anchor:no-type]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textsl{five}.

See \\hyperref[anchor:with-type]{Thing~\\ref*{anchor:with-type}}.
See \\hyperref[anchor:with-type]{Thing~\\ref*{anchor:with-type}}.
See \\hyperref[anchor:with-type]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textsl{five}.

See \\hyperref[anchor:my-figure]{Figure~\\ref*{anchor:my-figure}}.
See \\hyperref[anchor:my-figure]{Figure~\\ref*{anchor:my-figure}}.
See \\hyperref[anchor:my-figure]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textsl{five}.

\\chapter{{lists}}

\\listof{TexinfoFloat}{}
\\listoffigures
\\listof{TexinfoFloatThing}{}

';

1;
