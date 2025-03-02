use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'char_latin2_latin2_in_refs'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentencoding C1 char_latin2_latin2_in_refs.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |global_command_number:{1}
   |input_encoding_name:{iso-8859-2}
   |text_arg:{ISO-8859-2}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {ISO-8859-2}
   {empty_line:\\n}
 *0 @node C1 char_latin2_latin2_in_refs.texi:l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |isindex:{1}
 |menus:EC[E3]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C9 char_latin2_latin2_in_refs.texi:l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E5]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {char latin2 latin2 in refs}
  {empty_line:\\n}
  *paragraph C2
   *2 @ref C1 char_latin2_latin2_in_refs.texi:l8
    *brace_arg C1
    |EXTRA
    |node_content:{Ą ą ˛ Ę ę}
    |normalized:{_0104-_0105-_02db-_0118-_0119}
     {Ą ą ˛ Ę ę}
   {.\\n}
  {empty_line:\\n}
  *@printindex C1 char_latin2_latin2_in_refs.texi:l10
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
  *@c C1
   {rawline_arg: Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek\\n}
  *3 @menu C3 char_latin2_latin2_in_refs.texi:l13
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 char_latin2_latin2_in_refs.texi:l14
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Ą ą ˛ Ę ę}
    |normalized:{_0104-_0105-_02db-_0118-_0119}
     {Ą ą ˛ Ę ę}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 char_latin2_latin2_in_refs.texi:l15
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
 *4 @node C1 char_latin2_latin2_in_refs.texi:l17
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{_0104-_0105-_02db-_0118-_0119}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
 *5 @chapter C4 char_latin2_latin2_in_refs.texi:l18
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
  {empty_line:\\n}
  *6 index_entry_command@cindex C1 char_latin2_latin2_in_refs.texi:l20
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E4]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ą ą ˛ Ę ę}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'char_latin2_latin2_in_refs'} = '\\input texinfo

@documentencoding ISO-8859-2

@node Top
@top char latin2 latin2 in refs

@ref{Ą ą ˛ Ę ę}.

@printindex cp

@c Aogonek(0xa1=0241) aogonek(0xb1=0261) standalone ogonek(0xca=0312) Eogonek(0xea=0352) eogonek
@menu
* Ą ą ˛ Ę ę::
@end menu

@node Ą ą ˛ Ę ę
@chapter Ą ą ˛ Ę ę

@cindex Ą ą ˛ Ę ę

@bye
';


$result_texts{'char_latin2_latin2_in_refs'} = '
char latin2 latin2 in refs
**************************

Ą ą ˛ Ę ę.


* Ą ą ˛ Ę ę::

1 Ą ą ˛ Ę ę
***********


';

$result_sectioning{'char_latin2_latin2_in_refs'} = {
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
                    'normalized' => '_0104-_0105-_02db-_0118-_0119'
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
$result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0];
$result_sectioning{'char_latin2_latin2_in_refs'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'char_latin2_latin2_in_refs'};

$result_nodes{'char_latin2_latin2_in_refs'} = [
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_0104-_0105-_02db-_0118-_0119'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'char_latin2_latin2_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'char_latin2_latin2_in_refs'}[0];
$result_nodes{'char_latin2_latin2_in_refs'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'char_latin2_latin2_in_refs'}[0];
$result_nodes{'char_latin2_latin2_in_refs'}[1] = $result_nodes{'char_latin2_latin2_in_refs'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'char_latin2_latin2_in_refs'} = [
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
        'up' => {}
      },
      'normalized' => '_0104-_0105-_02db-_0118-_0119'
    }
  }
];
$result_menus{'char_latin2_latin2_in_refs'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'char_latin2_latin2_in_refs'}[0];

$result_errors{'char_latin2_latin2_in_refs'} = [];


$result_floats{'char_latin2_latin2_in_refs'} = {};


$result_indices_sort_strings{'char_latin2_latin2_in_refs'} = {
  'cp' => [
    "\x{104} \x{105} \x{2db} \x{118} \x{119}"
  ]
};


1;
