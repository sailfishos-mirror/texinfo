use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'char_us_ascii_latin1_in_refs'} = '*document_root C14
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 char_us_ascii_latin1_in_refs.texi:l3
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
 *0 @node C1 char_us_ascii_latin1_in_refs.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C6 char_us_ascii_latin1_in_refs.texi:l6 {accented char in latin1 in refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E6|E8|E10|E12]
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
    {accented char in latin1 in refs}
  {empty_line:\\n}
  *@printindex C1 char_us_ascii_latin1_in_refs.texi:l8
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
  *2 @menu C7 char_us_ascii_latin1_in_refs.texi:l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 char_us_ascii_latin1_in_refs.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
     {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_us_ascii_latin1_in_refs.texi:l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{é}
    |normalized:{_00e9}
     {é}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_us_ascii_latin1_in_refs.texi:l13
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{à è ù}
    |normalized:{_00e0-_00e8-_00f9}
     {à è ù}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_us_ascii_latin1_in_refs.texi:l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{â ê î ô û Â Ê Î Ô Û}
    |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
     {â ê î ô û Â Ê Î Ô Û}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 char_us_ascii_latin1_in_refs.texi:l15
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{ç}
    |normalized:{_00e7}
     {ç}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 char_us_ascii_latin1_in_refs.texi:l16
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
 *3 @node C1 char_us_ascii_latin1_in_refs.texi:l18 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 *4 @chapter C2 char_us_ascii_latin1_in_refs.texi:l19 {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
  {empty_line:\\n}
 *5 @node C1 char_us_ascii_latin1_in_refs.texi:l21 {é}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |menu_directions:D[next->E7|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |normalized:{_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {é}
 *6 @chapter C2 char_us_ascii_latin1_in_refs.texi:l22 {é}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {é}
  {empty_line:\\n}
 *7 @node C1 char_us_ascii_latin1_in_refs.texi:l24 {à è ù}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E5|up->E0]
 |node_directions:D[next->E9|prev->E5|up->E0]
 |normalized:{_00e0-_00e8-_00f9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {à è ù}
 *8 @chapter C2 char_us_ascii_latin1_in_refs.texi:l25 {à è ù}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {à è ù}
  {empty_line:\\n}
 *9 @node C1 char_us_ascii_latin1_in_refs.texi:l27 {â ê î ô û Â Ê Î Ô Û}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |menu_directions:D[next->E11|prev->E7|up->E0]
 |node_directions:D[next->E11|prev->E7|up->E0]
 |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
 *10 @chapter C2 char_us_ascii_latin1_in_refs.texi:l28 {â ê î ô û Â Ê Î Ô Û}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_directions:D[next->E12|prev->E8|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E12|prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
  {empty_line:\\n}
 *11 @node C1 char_us_ascii_latin1_in_refs.texi:l30 {ç}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |menu_directions:D[prev->E9|up->E0]
 |node_directions:D[prev->E9|up->E0]
 |normalized:{_00e7}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
 *12 @chapter C11 char_us_ascii_latin1_in_refs.texi:l31 {ç}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[prev->E10|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[prev->E10|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
  {empty_line:\\n}
  *paragraph C10
   *13 @ref C1 char_us_ascii_latin1_in_refs.texi:l33
    *brace_arg C1
    |EXTRA
    |node_content:{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
    |normalized:{_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc}
     {ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
   {\\n}
   *14 @ref C1 char_us_ascii_latin1_in_refs.texi:l34
    *brace_arg C1
    |EXTRA
    |node_content:{é}
    |normalized:{_00e9}
     {é}
   {\\n}
   *15 @ref C1 char_us_ascii_latin1_in_refs.texi:l35
    *brace_arg C1
    |EXTRA
    |node_content:{à è ù}
    |normalized:{_00e0-_00e8-_00f9}
     {à è ù}
   {\\n}
   *16 @ref C1 char_us_ascii_latin1_in_refs.texi:l36
    *brace_arg C1
    |EXTRA
    |node_content:{â ê î ô û Â Ê Î Ô Û}
    |normalized:{_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db}
     {â ê î ô û Â Ê Î Ô Û}
   {\\n}
   *17 @ref C1 char_us_ascii_latin1_in_refs.texi:l37
    *brace_arg C1
    |EXTRA
    |node_content:{ç}
    |normalized:{_00e7}
     {ç}
   {\\n}
  {empty_line:\\n}
  *18 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l39
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ä ë ï ö ü ÿ}
  *19 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l40
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ä Ë Ï Ö Ü}
  *20 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l41
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {é}
  *21 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l42
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {è}
  *22 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l43
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {â ê î ô û Â Ê Î Ô Û}
  *23 index_entry_command@cindex C1 char_us_ascii_latin1_in_refs.texi:l44
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E11]
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ç}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'char_us_ascii_latin1_in_refs'} = '\\input texinfo

@documentencoding US-ASCII

@node Top
@top accented char in latin1 in refs

@printindex cp

@menu
* ä ë ï ö ü ÿ Ä Ë Ï Ö Ü::
* é::
* à è ù::
* â ê î ô û Â Ê Î Ô Û::
* ç::
@end menu

@node ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
@chapter ä ë ï ö ü ÿ Ä Ë Ï Ö Ü

@node é
@chapter é

@node à è ù
@chapter à è ù

@node â ê î ô û Â Ê Î Ô Û
@chapter â ê î ô û Â Ê Î Ô Û

@node ç
@chapter ç

@ref{ä ë ï ö ü ÿ Ä Ë Ï Ö Ü}
@ref{é}
@ref{à è ù}
@ref{â ê î ô û Â Ê Î Ô Û}
@ref{ç}

@cindex ä ë ï ö ü ÿ
@cindex Ä Ë Ï Ö Ü
@cindex é
@cindex è
@cindex â ê î ô û Â Ê Î Ô Û
@cindex ç

@bye
';


$result_texts{'char_us_ascii_latin1_in_refs'} = '
accented char in latin1 in refs
*******************************


* ä ë ï ö ü ÿ Ä Ë Ï Ö Ü::
* é::
* à è ù::
* â ê î ô û Â Ê Î Ô Û::
* ç::

1 ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
***********************

2 é
***

3 à è ù
*******

4 â ê î ô û Â Ê Î Ô Û
*********************

5 ç
***

ä ë ï ö ü ÿ Ä Ë Ï Ö Ü
é
à è ù
â ê î ô û Â Ê Î Ô Û
ç


';

$result_sectioning{'char_us_ascii_latin1_in_refs'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
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
                    'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
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
                    'normalized' => '_00e9'
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
                    'normalized' => '_00e0-_00e8-_00f9'
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
                    'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
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
                    'normalized' => '_00e7'
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
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_us_ascii_latin1_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'char_us_ascii_latin1_in_refs'};

$result_nodes{'char_us_ascii_latin1_in_refs'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'isindex' => 1,
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
                                    'normalized' => '_00e7'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => '_00e0-_00e8-_00f9'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => '_00e9'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
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
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_us_ascii_latin1_in_refs'}[0];
$result_nodes{'char_us_ascii_latin1_in_refs'}[1] = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[2] = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[3] = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[4] = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'char_us_ascii_latin1_in_refs'}[5] = $result_nodes{'char_us_ascii_latin1_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'char_us_ascii_latin1_in_refs'} = [
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
                              'normalized' => '_00e7'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => '_00e0-_00e8-_00f9'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_00e9'
          }
        },
        'up' => {}
      },
      'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
    }
  },
  {},
  {},
  {},
  {}
];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_us_ascii_latin1_in_refs'}[0];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_us_ascii_latin1_in_refs'}[0];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_us_ascii_latin1_in_refs'}[0];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'char_us_ascii_latin1_in_refs'}[1];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_us_ascii_latin1_in_refs'}[0];
$result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_us_ascii_latin1_in_refs'}[0];
$result_menus{'char_us_ascii_latin1_in_refs'}[2] = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[3] = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[4] = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'char_us_ascii_latin1_in_refs'}[5] = $result_menus{'char_us_ascii_latin1_in_refs'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'char_us_ascii_latin1_in_refs'} = [];


$result_floats{'char_us_ascii_latin1_in_refs'} = {};


$result_indices_sort_strings{'char_us_ascii_latin1_in_refs'} = {
  'cp' => [
    "\x{c4} \x{cb} \x{cf} \x{d6} \x{dc}",
    "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}",
    "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff}",
    "\x{e7}",
    "\x{e9}",
    "\x{e8}"
  ]
};


1;
