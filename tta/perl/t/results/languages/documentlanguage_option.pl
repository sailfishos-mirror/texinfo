use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentlanguage_option'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C21
   *@c C1
    {rawline_arg: this document is setup to detect when the documentlanguage was not\\n}
   *@c C1
    {rawline_arg: set according to command line, but according to document.  This\\n}
   *@c C1
    {rawline_arg: is important to test that in the Parser, as converters initialized with\\n}
   *@c C1
    {rawline_arg: Texinfo::Convert::Converter converter() and with values accessed by\\n}
   *@c C1
    {rawline_arg: get_conf() will use the command line.\\n}
   *@c C1
    {rawline_arg: This is tricky to demonstrate, as documentlanguage is not used much\\n}
   *@c C1
    {rawline_arg: in Parser.  It is used in two places to set the documentlanguage extra\\n}
   *@c C1
    {rawline_arg: value, \\n}
   *@c C1
    {rawline_arg: 1) for the untranslated type, for the prefix of @def* and \\n}
   *@c C1
    {rawline_arg: 2) for the @def* line commands with added index entries that need to \\n}
   *@c C1
    {rawline_arg:    be translated, like \'{name} of {class}\'.\\n}
   *@c C1
    {rawline_arg: The untranslated type is in general translated in the converters\\n}
   *@c C1
    {rawline_arg: without using the extra documentlanguage key value, so getting it \\n}
   *@c C1
    {rawline_arg: wrong does not have any consequence.\\n}
   *@c C1
    {rawline_arg: The @def* translated added indices are translated relatively early,\\n}
   *@c C1
    {rawline_arg: before the converter, and the extra documentlanguage key is used to\\n}
   *@c C1
    {rawline_arg: get the language, so if the wrong language is set, it will show up\\n}
   *@c C1
    {rawline_arg: in the index generated by @printindex.\\n}
   {empty_line:\\n}
   *@documentlanguage C1 documentlanguage.texi:l22
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{pt}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {pt}
   {empty_line:\\n}
 *0 @node C1 documentlanguage.texi:l24 {Top}
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
 *1 @top C2 documentlanguage.texi:l25 {top section}
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
 *2 @node C1 documentlanguage.texi:l27 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *3 @chapter C8 documentlanguage.texi:l28 {Chapter}
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
    {Chapter}
  {empty_line:\\n}
  *paragraph C2
   *4 @xref C1 documentlanguage.texi:l30
    *brace_arg C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
   {.\\n}
  {empty_line:\\n}
  *5 @deftypemethod C3 documentlanguage.texi:l32
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 documentlanguage.texi:l32
   |EXTRA
   |def_command:{deftypemethod}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{name}
     |{ de }
     |*def_class C1
      |*def_line_arg C1
       |{class}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{name}
     |{ on }
     |*def_class C1
      |*def_line_arg C1
       |{class}
   |documentlanguage:{fr}
   |element_node:[E2]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypemethod}
    *block_line_arg C9
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *untranslated_def_line_arg C1
      |EXTRA
      |documentlanguage:{fr}
      |translation_context:{category of methods with data type in object-oriented programming for @deftypemethod}
       {untranslated:Method}
     (i){spaces: }
     *def_class C1
      *def_line_arg C1
       {class}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {data-type}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {arguments}
   *def_item C1
    *paragraph C1
     {Some text.\\n}
   *@end C1 documentlanguage.texi:l34
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypemethod}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypemethod}
  {empty_line:\\n}
  *@printindex C1 documentlanguage.texi:l36
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'documentlanguage_option'} = '\\input texinfo @c -*-texinfo-*-

@c this document is setup to detect when the documentlanguage was not
@c set according to command line, but according to document.  This
@c is important to test that in the Parser, as converters initialized with
@c Texinfo::Convert::Converter converter() and with values accessed by
@c get_conf() will use the command line.
@c This is tricky to demonstrate, as documentlanguage is not used much
@c in Parser.  It is used in two places to set the documentlanguage extra
@c value, 
@c 1) for the untranslated type, for the prefix of @def* and 
@c 2) for the @def* line commands with added index entries that need to 
@c    be translated, like \'{name} of {class}\'.
@c The untranslated type is in general translated in the converters
@c without using the extra documentlanguage key value, so getting it 
@c wrong does not have any consequence.
@c The @def* translated added indices are translated relatively early,
@c before the converter, and the extra documentlanguage key is used to
@c get the language, so if the wrong language is set, it will show up
@c in the index generated by @printindex.

@documentlanguage pt

@node Top
@top top section

@node chapter
@chapter Chapter

@xref{chapter}.

@deftypemethod class data-type name arguments
Some text.
@end deftypemethod

@printindex fn

@bye
';


$result_texts{'documentlanguage_option'} = '

top section
***********

1 Chapter
*********

chapter.

Me\'thode de class: data-type name arguments
Some text.


';

$result_errors{'documentlanguage_option'} = [];


$result_indices_sort_strings{'documentlanguage_option'} = 'fn:
 name de class
';

1;
