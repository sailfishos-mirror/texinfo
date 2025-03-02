use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'master_menu_fr'} = '*document_root C7
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content C2
   *@documentlanguage C1 no_master_menu_fr.texi:l3
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
 *0 @node C1 no_master_menu_fr.texi:l5 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 no_master_menu_fr.texi:l6 {max}
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
    {max}
  {empty_line:\\n}
  *2 @menu C5 no_master_menu_fr.texi:l8
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 no_master_menu_fr.texi:l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap}
    |normalized:{chap}
     {chap}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *3 @detailmenu C4
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_comment C1
     *preformatted C6
      { --- The Detailed Node Listing ---}
      {\\n}
      {empty_line:\\n}
      {chap}
      {empty_line:\\n}
      {empty_line:\\n}
    *menu_entry C4
     {menu_entry_leading_text:* }
     *menu_entry_node C1
     |EXTRA
     |node_content:{section}
     |normalized:{section}
      {section}
     {menu_entry_separator:::}
     *menu_entry_description C1
      *preformatted C1
       {\\n}
    *@end C1
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{detailmenu}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {detailmenu}
   *@end C1 no_master_menu_fr.texi:l10
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
 *4 @node C1 no_master_menu_fr.texi:l12 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menu_directions:D[up->E0]
 |menus:EC[E6]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *5 @chapter C4 no_master_menu_fr.texi:l13 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E8]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *6 @menu C3 no_master_menu_fr.texi:l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 no_master_menu_fr.texi:l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{section}
    |normalized:{section}
     {section}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 no_master_menu_fr.texi:l17
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
 *7 @node C1 no_master_menu_fr.texi:l19 {section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[up->E4]
 |node_directions:D[up->E4]
 |normalized:{section}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {section}
 *8 @section C1 no_master_menu_fr.texi:l20 {sec}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
';


$result_texis{'master_menu_fr'} = '\\input texinfo.tex

@documentlanguage fr

@node Top
@top max

@menu
* chap::

@detailmenu
 --- The Detailed Node Listing ---

chap

* section::
@end detailmenu
@end menu

@node chap
@chapter chap

@menu
* section::
@end menu

@node section
@section sec
';


$result_texts{'master_menu_fr'} = '
max
***

* chap::

 -- The Detailed Node Listing --

chap

* section::

1 chap
******

* section::

1.1 sec
=======
';

$result_sectioning{'master_menu_fr'} = {
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
                    'normalized' => 'chap'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
$result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'master_menu_fr'};

$result_nodes{'master_menu_fr'} = [
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
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'section'
    }
  }
];
$result_nodes{'master_menu_fr'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'master_menu_fr'}[0];
$result_nodes{'master_menu_fr'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'master_menu_fr'}[0];
$result_nodes{'master_menu_fr'}[1] = $result_nodes{'master_menu_fr'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'master_menu_fr'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'master_menu_fr'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'master_menu_fr'} = [
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
      'menus' => [
        {}
      ],
      'normalized' => 'chap'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'section'
    }
  }
];
$result_menus{'master_menu_fr'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'master_menu_fr'}[0];
$result_menus{'master_menu_fr'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'master_menu_fr'}[1];

$result_errors{'master_menu_fr'} = [];


$result_floats{'master_menu_fr'} = {};



$result_converted{'info'}->{'master_menu_fr'} = 'This is , produced from no_master_menu_fr.texi.


File: ,  Node: Top,  Next: chap,  Up: (dir)

max
***

* Menu:

* chap::

 -- The Detailed Node Listing --

chap

* section::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 chap
******

* Menu:

* section::


File: ,  Node: section,  Up: chap

1.1 sec
=======


Tag Table:
Node: Top49
Node: chap177
Node: section259

End Tag Table


Local Variables:
coding: utf-8
Info-documentlanguage: fr
End:
';

1;
