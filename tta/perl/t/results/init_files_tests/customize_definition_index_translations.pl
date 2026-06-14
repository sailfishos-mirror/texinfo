use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'customize_definition_index_translations'} = '*document_root C15
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@syncodeindex C1 l2
   |EXTRA
   |misc_args:A{vr|fn}
    *line_arg C3
     {spaces_before_argument: }
     {vr fn}
     {spaces_after_argument:\\n}
   {empty_line:\\n}
 *@node C1 l4 {Top}
 |EXTRA
 |identifier:{Top}
 |is_target:{1}
 |node_number:{1}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Top}
    {spaces_after_argument:\\n}
 *@top C2 l5 {top}
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {top}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l7 {Chapter}
 |EXTRA
 |identifier:{Chapter}
 |is_target:{1}
 |node_number:{2}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Chapter}
    {spaces_after_argument:\\n}
 *@chapter C7 l8 {chap}
 |EXTRA
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chap}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defcv C2 l10
   *def_line C1 l10
   |EXTRA
   |def_command:{defcv}
   |element_node:{Chapter}
   |index_entry:I{vr,1}
   |original_def_cmdname:{defcv}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {cvdefault}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l10
       {cv class default}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l10
       {default}
     {spaces_after_argument:\\n}
   *@end C1 l11
   |EXTRA
   |text_arg:{defcv}
    *line_arg C3
     {spaces_before_argument: }
     {defcv}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defop C2 l13
   *def_line C1 l13
   |EXTRA
   |def_command:{defop}
   |element_node:{Chapter}
   |index_entry:I{fn,1}
   |original_def_cmdname:{defop}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {opdefault}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l13
       {op class default}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l13
       {default}
     {spaces_after_argument:\\n}
   *@end C1 l14
   |EXTRA
   |text_arg:{defop}
    *line_arg C3
     {spaces_before_argument: }
     {defop}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@documentlanguage C1 l16
  |EXTRA
  |global_command_number:{1}
  |text_arg:{fr}
   *line_arg C3
    {spaces_before_argument: }
    {fr}
    {spaces_after_argument:\\n}
 *@node C1 l17 {Chapter fr}
 |EXTRA
 |identifier:{Chapter-fr}
 |is_target:{1}
 |node_number:{3}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Chapter fr}
    {spaces_after_argument:\\n}
 *@chapter C6 l18 {chap fr}
 |EXTRA
 |section_heading_number:{2}
 |section_level:{1}
 |section_number:{3}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chap fr}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defcv C2 l20
   *def_line C1 l20
   |EXTRA
   |def_command:{defcv}
   |documentlanguage:{fr}
   |element_node:{Chapter-fr}
   |index_entry:I{vr,2}
   |original_def_cmdname:{defcv}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {cvfr}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l20
       {cv class fr}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l20
       {fr}
     {spaces_after_argument:\\n}
   *@end C1 l21
   |EXTRA
   |text_arg:{defcv}
    *line_arg C3
     {spaces_before_argument: }
     {defcv}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defop C2 l23
   *def_line C1 l23
   |EXTRA
   |def_command:{defop}
   |documentlanguage:{fr}
   |element_node:{Chapter-fr}
   |index_entry:I{fn,2}
   |original_def_cmdname:{defop}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {opfr}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l23
       {op class fr}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l23
       {fr}
     {spaces_after_argument:\\n}
   *@end C1 l24
   |EXTRA
   |text_arg:{defop}
    *line_arg C3
     {spaces_before_argument: }
     {defop}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l26 {section fr}
 |EXTRA
 |identifier:{section-fr}
 |is_target:{1}
 |node_number:{4}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {section fr}
    {spaces_after_argument:\\n}
 *@section C3 l27 {sec fr}
 |EXTRA
 |section_heading_number:{2.1}
 |section_level:{2}
 |section_number:{4}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {sec fr}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@documentlanguage C1 l29
  |EXTRA
  |global_command_number:{2}
  |text_arg:{de}
   *line_arg C3
    {spaces_before_argument: }
    {de}
    {spaces_after_argument:\\n}
 *@node C1 l30 {Chapter de}
 |EXTRA
 |identifier:{Chapter-de}
 |is_target:{1}
 |node_number:{5}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Chapter de}
    {spaces_after_argument:\\n}
 *@chapter C7 l31 {chap de}
 |EXTRA
 |section_heading_number:{3}
 |section_level:{1}
 |section_number:{5}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chap de}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defcv C2 l33
   *def_line C1 l33
   |EXTRA
   |def_command:{defcv}
   |documentlanguage:{de}
   |element_node:{Chapter-de}
   |index_entry:I{vr,3}
   |original_def_cmdname:{defcv}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {cvde}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l33
       {cv class de}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l33
       {de}
     {spaces_after_argument:\\n}
   *@end C1 l34
   |EXTRA
   |text_arg:{defcv}
    *line_arg C3
     {spaces_before_argument: }
     {defcv}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defop C2 l36
   *def_line C1 l36
   |EXTRA
   |def_command:{defop}
   |documentlanguage:{de}
   |element_node:{Chapter-de}
   |index_entry:I{fn,3}
   |original_def_cmdname:{defop}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {opde}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l36
       {op class de}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l36
       {de}
     {spaces_after_argument:\\n}
   *@end C1 l37
   |EXTRA
   |text_arg:{defop}
    *line_arg C3
     {spaces_before_argument: }
     {defop}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@documentlanguage C1 l39
  |EXTRA
  |global_command_number:{3}
  |text_arg:{de_AT}
   *line_arg C3
    {spaces_before_argument: }
    {de_AT}
    {spaces_after_argument:\\n}
 *@node C1 l40 {Chapter de_AT}
 |EXTRA
 |identifier:{Chapter-de_005fAT}
 |is_target:{1}
 |node_number:{6}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Chapter de_AT}
    {spaces_after_argument:\\n}
 *@chapter C6 l41 {chap de_AT}
 |EXTRA
 |section_heading_number:{4}
 |section_level:{1}
 |section_number:{6}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {chap de_AT}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defcv C2 l43
   *def_line C1 l43
   |EXTRA
   |def_command:{defcv}
   |documentlanguage:{de_AT}
   |element_node:{Chapter-de_005fAT}
   |index_entry:I{vr,4}
   |original_def_cmdname:{defcv}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {cvdeAT}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l43
       {cv class deAT}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l43
       {deAT}
     {spaces_after_argument:\\n}
   *@end C1 l44
   |EXTRA
   |text_arg:{defcv}
    *line_arg C3
     {spaces_before_argument: }
     {defcv}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defop C2 l46
   *def_line C1 l46
   |EXTRA
   |def_command:{defop}
   |documentlanguage:{de_AT}
   |element_node:{Chapter-de_005fAT}
   |index_entry:I{fn,4}
   |original_def_cmdname:{defop}
    *block_line_arg C7
     {spaces_before_argument: }
     *def_category C1
      *def_line_arg C1
       {opdeAT}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l46
       {op class deAT}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l46
       {deAT}
     {spaces_after_argument:\\n}
   *@end C1 l47
   |EXTRA
   |text_arg:{defop}
    *line_arg C3
     {spaces_before_argument: }
     {defop}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
 *@node C1 l49 {Last chapter}
 |EXTRA
 |identifier:{Last-chapter}
 |is_target:{1}
 |isindex:{1}
 |node_number:{7}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Last chapter}
    {spaces_after_argument:\\n}
 *@chapter C3 l50 {Last Chapter}
 |EXTRA
 |section_heading_number:{5}
 |section_level:{1}
 |section_number:{7}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {Last Chapter}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@printindex C1 l52
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C3
    {spaces_before_argument: }
    {fn}
    {spaces_after_argument:\\n}
';


$result_texis{'customize_definition_index_translations'} = '
@syncodeindex vr fn

@node Top
@top top

@node Chapter
@chapter chap

@defcv cvdefault {cv class default} {default}
@end defcv

@defop opdefault {op class default} {default}
@end defop

@documentlanguage fr
@node Chapter fr
@chapter chap fr

@defcv cvfr {cv class fr} {fr}
@end defcv

@defop opfr {op class fr} {fr}
@end defop

@node section fr
@section sec fr

@documentlanguage de
@node Chapter de
@chapter chap de

@defcv cvde {cv class de} {de}
@end defcv

@defop opde {op class de} {de}
@end defop

@documentlanguage de_AT
@node Chapter de_AT
@chapter chap de_AT

@defcv cvdeAT {cv class deAT} {deAT}
@end defcv

@defop opdeAT {op class deAT} {deAT}
@end defop

@node Last chapter
@chapter Last Chapter

@printindex fn
';


$result_texts{'customize_definition_index_translations'} = '
top
***

1 chap
******

cvdefault of cv class default: default

opdefault on op class default: default

2 chap fr
*********

cvfr de cv class fr: fr

opfr de op class fr: fr

2.1 sec fr
==========

3 chap de
*********

cvde of cv class de: de

opde on op class de: de

4 chap de_AT
************

cvdeAT of cv class deAT: deAT

opdeAT on op class deAT: deAT

5 Last Chapter
**************

';

$result_errors{'customize_definition_index_translations'} = '';

$result_indices{'customize_definition_index_translations'} = 'cp
fn C
ky C
pg C
tp C
vr C ->fn
';

$result_nodes_list{'customize_definition_index_translations'} = '1|Top
 associated_section: top
 associated_title_command: top
 node_directions:
  next->Chapter
2|Chapter
 associated_section: 1 chap
 associated_title_command: 1 chap
 node_directions:
  next->Chapter fr
  prev->Top
  up->Top
3|Chapter fr
 associated_section: 2 chap fr
 associated_title_command: 2 chap fr
 node_directions:
  next->Chapter de
  prev->Chapter
  up->Top
4|section fr
 associated_section: 2.1 sec fr
 associated_title_command: 2.1 sec fr
 node_directions:
  up->Chapter fr
5|Chapter de
 associated_section: 3 chap de
 associated_title_command: 3 chap de
 node_directions:
  next->Chapter de_AT
  prev->Chapter fr
  up->Top
6|Chapter de_AT
 associated_section: 4 chap de_AT
 associated_title_command: 4 chap de_AT
 node_directions:
  next->Last chapter
  prev->Chapter de
  up->Top
7|Last chapter
 associated_section: 5 Last Chapter
 associated_title_command: 5 Last Chapter
 node_directions:
  prev->Chapter de_AT
  up->Top
';

$result_sections_list{'customize_definition_index_translations'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
 toplevel_directions:
  next->chap
 section_children:
  1|chap
  2|chap fr
  3|chap de
  4|chap de_AT
  5|Last Chapter
2|chap
 associated_anchor_command: Chapter
 associated_node: Chapter
 section_directions:
  next->chap fr
  up->top
 toplevel_directions:
  next->chap fr
  prev->top
  up->top
3|chap fr
 associated_anchor_command: Chapter fr
 associated_node: Chapter fr
 section_directions:
  next->chap de
  prev->chap
  up->top
 toplevel_directions:
  next->chap de
  prev->chap
  up->top
 section_children:
  1|sec fr
4|sec fr
 associated_anchor_command: section fr
 associated_node: section fr
 section_directions:
  up->chap fr
5|chap de
 associated_anchor_command: Chapter de
 associated_node: Chapter de
 section_directions:
  next->chap de_AT
  prev->chap fr
  up->top
 toplevel_directions:
  next->chap de_AT
  prev->chap fr
  up->top
6|chap de_AT
 associated_anchor_command: Chapter de_AT
 associated_node: Chapter de_AT
 section_directions:
  next->Last Chapter
  prev->chap de
  up->top
 toplevel_directions:
  next->Last Chapter
  prev->chap de
  up->top
7|Last Chapter
 associated_anchor_command: Last chapter
 associated_node: Last chapter
 section_directions:
  prev->chap de_AT
  up->top
 toplevel_directions:
  prev->chap de_AT
  up->top
';

$result_sectioning_root{'customize_definition_index_translations'} = 'level: -1
list:
 1|top
';

$result_headings_list{'customize_definition_index_translations'} = '';

$result_indices_sort_strings{'customize_definition_index_translations'} = 'fn:
 de in op class de
 de von cv class de
 deAT in op class deAT
 deAT von cv class deAT
 default of cv class default
 default on op class default
 fr de cv class fr
 fr de op class fr
';

1;
