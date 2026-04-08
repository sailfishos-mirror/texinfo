use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'documentlanguage_selection_region_unicode'} = '*document_root C3
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentlanguage C1 l2
   |EXTRA
   |global_command_number:{1}
   |text_arg:{fr_M让}
    *line_arg C3
     {spaces_before_argument: }
     {fr_M让}
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
 *@top C4 l5 {top}
 |EXTRA
 |section_level:{0}
 |section_number:{1}
  *arguments_line C1
   *line_arg C3
    {spaces_before_argument: }
    {top}
    {spaces_after_argument:\\n}
  {empty_line:\\n}
  *@defivar C2 l7
   *def_line C1 l7
   |EXTRA
   |def_command:{defivar}
   |def_index_element:
    |* C3
     |* C1
      |*def_line_arg C1
       |{Language}
     |{ de }
     |* C1
      |*def_line_arg C1
       |{Which}
   |def_index_ref_element:
    |* C3
     |* C1
      |*def_line_arg C1
       |{Language}
     |{ of }
     |* C1
      |*def_line_arg C1
       |{Which}
   |documentlanguage:{fr_M让}
   |element_node:{Top}
   |index_entry:I{vr,1}
   |original_def_cmdname:{defivar}
    *block_line_arg C9
     (i){spaces_before_argument: }
     *def_category C1
     |INFO
     |inserted:{1}
      *untranslated_def_line_arg C1
      |EXTRA
      |documentlanguage:{fr_M让}
      |translation_context:{category of instance variables in object-oriented programming for @defivar}
       {untranslated:Instance Variable}
     {spaces: }
     *def_class C1
      *def_line_arg C1
       {Which}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {Language}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {Selected?}
     {spaces_after_argument:\\n}
   *@end C1 l8
   |EXTRA
   |text_arg:{defivar}
    *line_arg C3
     {spaces_before_argument: }
     {defivar}
     {spaces_after_argument:\\n}
  {empty_line:\\n}
';


$result_texis{'documentlanguage_selection_region_unicode'} = '
@documentlanguage fr_M让

@node Top
@top top

@defivar Which Language Selected?
@end defivar

';


$result_texts{'documentlanguage_selection_region_unicode'} = '
top
***

Variable d\'instance de Which: Language Selected?

';

$result_errors{'documentlanguage_selection_region_unicode'} = '* W l2|fr_M让 is not a valid language code
 warning: fr_M让 is not a valid language code

';

$result_nodes_list{'documentlanguage_selection_region_unicode'} = '1|Top
 associated_section: top
 associated_title_command: top
';

$result_sections_list{'documentlanguage_selection_region_unicode'} = '1|top
 associated_anchor_command: Top
 associated_node: Top
';

$result_sectioning_root{'documentlanguage_selection_region_unicode'} = 'level: -1
list:
 1|top
';

$result_headings_list{'documentlanguage_selection_region_unicode'} = '';

$result_indices_sort_strings{'documentlanguage_selection_region_unicode'} = 'vr:
 Language de Which
';


$result_converted{'plaintext'}->{'documentlanguage_selection_region_unicode'} = 'top
***

 -- Variable d\'instance de Which : Language Selected?

';

1;
