use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple_documentlanguage'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content C2
   *@documentlanguage C1 l1
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
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E1]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @node C3 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[prev->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *@defivar C2 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l6
   |EXTRA
   |def_command:{defivar}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{BBB}
     |{ de }
     |*def_class C1
      |*def_line_arg C1
       |{AAA}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{BBB}
     |{ of }
     |*def_class C1
      |*def_line_arg C1
       |{AAA}
   |documentlanguage:{fr}
   |element_node:[E1]
   |index_entry:I{vr,1}
   |original_def_cmdname:{defivar}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *untranslated_def_line_arg C1
      |EXTRA
      |documentlanguage:{fr}
      |translation_context:{category of instance variables in object-oriented programming for @defivar}
       {untranslated:Instance Variable}
     (i){spaces: }
     *def_class C1
      *def_line_arg C1
       {AAA}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {BBB}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {CCC}
   *@end C1 l7
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defivar}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defivar}
';


$result_texis{'simple_documentlanguage'} = '@documentlanguage fr

@node Top
@node chap

@defivar AAA BBB CCC
@end defivar
';


$result_texts{'simple_documentlanguage'} = '

Variable d\'instance de AAA: BBB CCC
';

$result_errors{'simple_documentlanguage'} = [
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 4,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'simple_documentlanguage'} = 'vr:
 BBB de AAA
';


$result_converted{'plaintext'}->{'simple_documentlanguage'} = ' -- Variable d\'instance de AAA : BBB CCC
';

1;
