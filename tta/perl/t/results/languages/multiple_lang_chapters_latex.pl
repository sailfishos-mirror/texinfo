use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'multiple_lang_chapters_latex'} = '*document_root C13
 *before_node_section C2
  *preamble_before_beginning C1
   {text_before_beginning:\\n}
  *preamble_before_content C5
   *@documentencoding C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{utf-8}
   |text_arg:{utf-8}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {utf-8}
   {empty_line:\\n}
   *@c C1
   >SOURCEMARKS
   >ignored_conditional_block<1>
    >*@iftex C3 l5
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
     >{raw:@documentlanguage ja\\n}
     >*@end C1 l7
     >|INFO
     >|spaces_before_argument:
      >|{ }
     >|EXTRA
     >|text_arg:{iftex}
      >*line_arg C1
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
       >{iftex}
   >expanded_conditional_command<start;1>
    >*@iflatex C1 l8
     >*arguments_line C1
      >*block_line_arg
      >|INFO
      >|spaces_after_argument:
       >|{\\n}
    {rawline_arg: @node Top is ignored in TeX and LaTeX, so switch here\\n}
   *@documentlanguage C1 l9
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |text_arg:{ja}
   >SOURCEMARKS
   >expanded_conditional_command<end;1>
    >*@end C1 l10
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{iflatex}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{iflatex}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ja}
   {empty_line:\\n}
 *0 @node C1 l12 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l13 {Multi language file}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E8|E12|E15|E17]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Multi language file}
  {empty_line:\\n}
  *2 @menu C7 l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter ja}
    |normalized:{chapter-ja}
     {chapter ja}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter en}
    |normalized:{chapter-en}
     {chapter en}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l18
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter fr_FR}
    |normalized:{chapter-fr_005fFR}
     {chapter fr_FR}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l19
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter de}
    |normalized:{chapter-de}
     {chapter de}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l20
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter pt_BR}
    |normalized:{chapter-pt_005fBR}
     {chapter pt_BR}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
  *@documentlanguage C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |text_arg:{ja}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ja}
 *3 @node C1 l24 {chapter ja}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{chapter-ja}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter ja}
 *4 @chapter C6 l25 {ja}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ja}
  {empty_line:\\n}
  *paragraph C3
   {In japanese. }
   *5 @xref C1 l27
    *brace_arg C1
    |EXTRA
    |node_content:{chapter ja}
    |normalized:{chapter-ja}
     {chapter ja}
   {.\\n}
  *6 @defivar C2 l28
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l28
   |EXTRA
   |def_command:{defivar}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{BBB}
     |{ of }
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
   |documentlanguage:{ja}
   |element_node:[E3]
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
      |documentlanguage:{ja}
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
   *@end C1 l29
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
  {empty_line:\\n}
  *@documentlanguage C1 l31
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |text_arg:{en}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {en}
 *7 @node C1 l32 {chapter en}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[next->E11|prev->E3|up->E0]
 |node_directions:D[next->E11|prev->E3|up->E0]
 |normalized:{chapter-en}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter en}
 *8 @chapter C6 l33 {en}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[next->E12|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E12|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {en}
  {empty_line:\\n}
  *paragraph C3
   {In english. }
   *9 @xref C1 l35
    *brace_arg C1
    |EXTRA
    |node_content:{chapter ja}
    |normalized:{chapter-ja}
     {chapter ja}
   {.\\n}
  *10 @defivar C2 l36
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l36
   |EXTRA
   |def_command:{defivar}
   |def_index_element:
    |* C3
     |*def_name C1
      |*def_line_arg C1
       |{BBB}
     |{ of }
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
   |documentlanguage:{en}
   |element_node:[E7]
   |index_entry:I{vr,2}
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
      |documentlanguage:{en}
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
   *@end C1 l37
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
  {empty_line:\\n}
  *@documentlanguage C1 l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |text_arg:{fr_FR}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr_FR}
 *11 @node C1 l40 {chapter fr_FR}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |menu_directions:D[next->E14|prev->E7|up->E0]
 |node_directions:D[next->E14|prev->E7|up->E0]
 |normalized:{chapter-fr_005fFR}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter fr_FR}
 *12 @chapter C5 l41 {fr_FR}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[next->E15|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E15|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fr_FR}
  {empty_line:\\n}
  *13 @defivar C2 l43
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l43
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
   |documentlanguage:{fr_FR}
   |element_node:[E11]
   |index_entry:I{vr,3}
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
      |documentlanguage:{fr_FR}
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
   *@end C1 l44
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
  {empty_line:\\n}
  *@documentlanguage C1 l46
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |text_arg:{de}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {de}
 *14 @node C1 l47 {chapter de}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[next->E16|prev->E11|up->E0]
 |node_directions:D[next->E16|prev->E11|up->E0]
 |normalized:{chapter-de}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter de}
 *15 @chapter C3 l48 {de}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[next->E17|prev->E12|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E17|prev->E12|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {de}
  {empty_line:\\n}
  *@documentlanguage C1 l50
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{6}
  |text_arg:{pt_BR}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {pt_BR}
 *16 @node C1 l51 {chapter pt_BR}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |menu_directions:D[prev->E14|up->E0]
 |node_directions:D[prev->E14|up->E0]
 |normalized:{chapter-pt_005fBR}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter pt_BR}
 *17 @chapter C3 l52 {pt_bR}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[prev->E15|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[prev->E15|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {pt_bR}
  {empty_line:\\n}
  *paragraph C3
   {In brazilian. }
   *18 @xref C1 l54
    *brace_arg C1
    |EXTRA
    |node_content:{chapter ja}
    |normalized:{chapter-ja}
     {chapter ja}
   {.\\n}
';


$result_texis{'multiple_lang_chapters_latex'} = '
@documentencoding utf-8

@c @node Top is ignored in TeX and LaTeX, so switch here
@documentlanguage ja

@node Top
@top Multi language file

@menu
* chapter ja::
* chapter en::
* chapter fr_FR::
* chapter de::
* chapter pt_BR::
@end menu

@documentlanguage ja
@node chapter ja
@chapter ja

In japanese. @xref{chapter ja}.
@defivar AAA BBB CCC
@end defivar

@documentlanguage en
@node chapter en
@chapter en

In english. @xref{chapter ja}.
@defivar AAA BBB CCC
@end defivar

@documentlanguage fr_FR
@node chapter fr_FR
@chapter fr_FR

@defivar AAA BBB CCC
@end defivar

@documentlanguage de
@node chapter de
@chapter de

@documentlanguage pt_BR
@node chapter pt_BR
@chapter pt_bR

In brazilian. @xref{chapter ja}.
';


$result_texts{'multiple_lang_chapters_latex'} = '

Multi language file
*******************

* chapter ja::
* chapter en::
* chapter fr_FR::
* chapter de::
* chapter pt_BR::

1 ja
****

In japanese. chapter ja.
Instance Variable of AAA: BBB CCC

2 en
****

In english. chapter ja.
Instance Variable of AAA: BBB CCC

3 fr_FR
*******

Variable d\'instance de AAA: BBB CCC

4 de
****

5 pt_bR
*******

In brazilian. chapter ja.
';

$result_sectioning{'multiple_lang_chapters_latex'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-ja'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-en'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-fr_005fFR'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-de'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '4',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chapter-pt_005fBR'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '5',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0];
$result_sectioning{'multiple_lang_chapters_latex'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'multiple_lang_chapters_latex'};

$result_nodes{'multiple_lang_chapters_latex'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'next' => {
                            'cmdname' => 'node',
                            'extra' => {
                              'associated_section' => {
                                'cmdname' => 'chapter',
                                'extra' => {
                                  'section_number' => '4'
                                }
                              },
                              'node_directions' => {
                                'next' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'associated_section' => {
                                      'cmdname' => 'chapter',
                                      'extra' => {
                                        'section_number' => '5'
                                      }
                                    },
                                    'node_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'chapter-pt_005fBR'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'chapter-de'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'chapter-fr_005fFR'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-en'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-ja'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {}
];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'multiple_lang_chapters_latex'}[0];
$result_nodes{'multiple_lang_chapters_latex'}[1] = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[2] = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[3] = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[4] = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'multiple_lang_chapters_latex'}[5] = $result_nodes{'multiple_lang_chapters_latex'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'multiple_lang_chapters_latex'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'next' => {
                            'extra' => {
                              'menu_directions' => {
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'chapter-pt_005fBR'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'chapter-de'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chapter-fr_005fFR'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-en'
          }
        },
        'up' => {}
      },
      'normalized' => 'chapter-ja'
    }
  },
  {},
  {},
  {},
  {}
];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_lang_chapters_latex'}[0];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_lang_chapters_latex'}[0];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_lang_chapters_latex'}[0];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'multiple_lang_chapters_latex'}[1];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_lang_chapters_latex'}[0];
$result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'multiple_lang_chapters_latex'}[0];
$result_menus{'multiple_lang_chapters_latex'}[2] = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[3] = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[4] = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'multiple_lang_chapters_latex'}[5] = $result_menus{'multiple_lang_chapters_latex'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'multiple_lang_chapters_latex'} = [];


$result_floats{'multiple_lang_chapters_latex'} = {};


$result_indices_sort_strings{'multiple_lang_chapters_latex'} = {
  'vr' => [
    'BBB de AAA',
    'BBB of AAA',
    'BBB of AAA'
  ]
};


1;
