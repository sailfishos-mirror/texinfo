use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'redirection_same_labels'} = 'U0 unit[E1]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
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
 *1 @top C4 l2 {the top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E15]
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
    {the top}
  {empty_line:\\n}
  *2 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C3
     *@c C1
      {rawline_arg: * @"i::\\n}
     *@c C1
      {rawline_arg: * @~{@dotless{i}}::\\n}
     *@c C1
      {rawline_arg: * @^i::\\n}
   *menu_entry C4 l8
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{umlaut}
    |normalized:{umlaut}
     {umlaut}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l9
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{circumflex}
    |normalized:{circumflex}
     {circumflex}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l10
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
U1 unit[E4]
unit_directions:D[next->[U2]|prev->[U0]]
UNIT_DIRECTIONS
This: [U1]
Forward: [U2]
Back: [U0]
FastForward: [U2]
FastBack: [U0]
Next: [U2]
Up: [U0]
NodeNext: [U2]
NodePrev: [U0]
NodeUp: [U0]
NodeForward: [U1]
NodeBack: [U0]
 *3 @node C1 l12 {umlaut}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E14|up->E0]
 |menus:EC[E5]
 |node_directions:D[next->E14|prev->E0|up->E0]
 |normalized:{umlaut}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {umlaut}
 *4 @chapter C4 l13 {umlaut}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E15|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E15|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {umlaut}
  {empty_line:\\n}
  *5 @menu C4 l15
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l16
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@"i}
    |normalized:{_00ef}
     *6 @" C1 l16
      *following_arg C1
       {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l17
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@~{@dotless{i}}}
    |normalized:{_0129}
     *7 @~ C1 l17
      *brace_container C1
       *8 @dotless C1 l17
        *brace_container C1
         {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l18
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
 *9 @node C2 l20 {@"i}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E11|up->E3]
 |node_directions:D[next->E11|up->E3]
 |normalized:{_00ef}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *10 @" C1 l20
     *following_arg C1
      {i}
  {empty_line:\\n}
 *11 @node C2 l22 {@~{@dotless{i}}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E9|up->E3]
 |node_directions:D[prev->E9|up->E3]
 |normalized:{_0129}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *12 @~ C1 l22
     *brace_container C1
      *13 @dotless C1 l22
       *brace_container C1
        {i}
  {empty_line:\\n}
U2 unit[E15]
unit_directions:D[prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodePrev: [U1]
NodeUp: [U0]
NodeForward: [U2]
NodeBack: [U2]
 *14 @node C1 l24 {circumflex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E15]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E16]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{circumflex}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {circumflex}
 *15 @chapter C4 l25 {circumflex}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E14]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {circumflex}
  {empty_line:\\n}
  *16 @menu C3 l27
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l28
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@^i}
    |normalized:{_00ee}
     *17 @^ C1 l28
      *following_arg C1
       {i}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l29
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
 *18 @node C1 l31 {@^i}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[up->E14]
 |node_directions:D[up->E14]
 |normalized:{_00ee}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *19 @^ C1 l31
     *following_arg C1
      {i}
';


$result_texis{'redirection_same_labels'} = '@node Top
@top the top

@menu
@c * @"i::
@c * @~{@dotless{i}}::
@c * @^i::
* umlaut::
* circumflex::
@end menu

@node umlaut
@chapter umlaut

@menu
* @"i::
* @~{@dotless{i}}::
@end menu

@node @"i

@node @~{@dotless{i}}

@node circumflex
@chapter circumflex

@menu
* @^i::
@end menu

@node @^i
';


$result_texts{'redirection_same_labels'} = 'the top
*******

* umlaut::
* circumflex::

1 umlaut
********

* i"::
* i~::



2 circumflex
************

* i^::

';

$result_sectioning{'redirection_same_labels'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'FastForward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'tree_unit_directions' => {
                    'prev' => {}
                  },
                  'unit_command' => {
                    'associated_unit' => {},
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_node' => {
                        'associated_unit' => {},
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'circumflex'
                        }
                      },
                      'section_directions' => {
                        'prev' => {
                          'associated_unit' => {},
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_node' => {
                              'associated_unit' => {},
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'umlaut'
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
                  'unit_type' => 'unit'
                },
                'Forward' => {},
                'Next' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {},
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {},
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {},
            {}
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
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'associated_unit'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0];
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'}{'associated_unit'} = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0] = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'section_directions'}{'prev'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1] = $result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'redirection_same_labels'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'redirection_same_labels'};

$result_nodes{'redirection_same_labels'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'chapter',
                'extra' => {
                  'section_number' => '2'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'chapter',
            'extra' => {
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'cmdname' => 'top',
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {},
      'node_directions' => {
        'next' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {},
            'node_directions' => {
              'next' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {},
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'circumflex'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'umlaut'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'associated_unit' => {},
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'associated_unit' => {},
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_0129'
          }
        },
        'up' => {}
      },
      'normalized' => '_00ef'
    }
  },
  {},
  {},
  {
    'associated_unit' => {},
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'up' => {}
      },
      'normalized' => '_00ee'
    }
  }
];
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'associated_section'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'unit_command'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'associated_section'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'redirection_same_labels'}[0];
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'redirection_same_labels'}[0];
$result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'redirection_same_labels'}[0];
$result_nodes{'redirection_same_labels'}[1] = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[2]{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[2]{'extra'}{'node_directions'}{'next'}{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'redirection_same_labels'}[2];
$result_nodes{'redirection_same_labels'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[3] = $result_nodes{'redirection_same_labels'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[4] = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'redirection_same_labels'}[5]{'associated_unit'} = $result_nodes{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'redirection_same_labels'}[5]{'extra'}{'node_directions'}{'up'} = $result_nodes{'redirection_same_labels'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'redirection_same_labels'} = [
  {
    'associated_unit' => {
      'directions' => {
        'FastForward' => {
          'directions' => {
            'Back' => {},
            'FastBack' => {},
            'FastForward' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'prev' => {}
              },
              'unit_command' => {
                'associated_unit' => {},
                'extra' => {
                  'section_number' => '2'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'Next' => {},
            'NodeBack' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'NodePrev' => {},
            'NodeUp' => {},
            'This' => {},
            'Up' => {}
          },
          'tree_unit_directions' => {
            'next' => {},
            'prev' => {}
          },
          'unit_command' => {
            'associated_unit' => {},
            'extra' => {
              'section_number' => '1'
            }
          },
          'unit_type' => 'unit'
        },
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      },
      'tree_unit_directions' => {
        'next' => {}
      },
      'unit_command' => {
        'associated_unit' => {},
        'extra' => {}
      },
      'unit_type' => 'unit'
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'circumflex'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'umlaut'
    }
  },
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'next' => {
          'associated_unit' => {},
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => '_0129'
          }
        },
        'up' => {}
      },
      'normalized' => '_00ef'
    }
  },
  {},
  {},
  {
    'associated_unit' => {},
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => '_00ee'
    }
  }
];
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'};
$result_menus{'redirection_same_labels'}[1]{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'redirection_same_labels'}[1];
$result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'redirection_same_labels'}[0];
$result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'redirection_same_labels'}[0];
$result_menus{'redirection_same_labels'}[2]{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[2]{'extra'}{'menu_directions'}{'next'}{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'redirection_same_labels'}[2];
$result_menus{'redirection_same_labels'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'redirection_same_labels'}[1];
$result_menus{'redirection_same_labels'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'redirection_same_labels'}[1];
$result_menus{'redirection_same_labels'}[3] = $result_menus{'redirection_same_labels'}[2]{'extra'}{'menu_directions'}{'next'};
$result_menus{'redirection_same_labels'}[4] = $result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'redirection_same_labels'}[5]{'associated_unit'} = $result_menus{'redirection_same_labels'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'redirection_same_labels'}[5]{'extra'}{'menu_directions'}{'up'} = $result_menus{'redirection_same_labels'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'redirection_same_labels'} = [];


$result_floats{'redirection_same_labels'} = {};


$result_elements{'redirection_same_labels'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'FastForward' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'NodeBack' => {},
              'NodeForward' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '2'
              }
            },
            'unit_type' => 'unit'
          },
          'Forward' => {},
          'Next' => {},
          'NodeBack' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'NodePrev' => {},
          'NodeUp' => {},
          'This' => {},
          'Up' => {}
        },
        'unit_command' => {
          'associated_unit' => {},
          'cmdname' => 'chapter',
          'extra' => {
            'section_number' => '1'
          }
        },
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {}
    },
    'unit_type' => 'unit'
  },
  {},
  {}
];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'Forward'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'NodeForward'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'NodeNext'} = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[0]{'directions'}{'This'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'redirection_same_labels'}[0];
$result_elements{'redirection_same_labels'}[1] = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'};
$result_elements{'redirection_same_labels'}[2] = $result_elements{'redirection_same_labels'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};



$result_directions_text{'redirection_same_labels'} = 'output unit: @top the top
  This: @top the top
  Forward: @chapter umlaut
  FastForward: @chapter umlaut
  NodeNext: @chapter umlaut
  NodeForward: @chapter umlaut
output unit: @chapter umlaut
  This: @chapter umlaut
  Forward: @chapter circumflex
  Back: @top the top
  FastForward: @chapter circumflex
  FastBack: @top the top
  Next: @chapter circumflex
  Up: @top the top
  NodeNext: @chapter circumflex
  NodePrev: @top the top
  NodeUp: @top the top
  NodeForward: @chapter umlaut
  NodeBack: @top the top
output unit: @chapter circumflex
  This: @chapter circumflex
  Back: @chapter umlaut
  FastBack: @chapter umlaut
  Prev: @chapter umlaut
  Up: @top the top
  NodePrev: @chapter umlaut
  NodeUp: @top the top
  NodeForward: @chapter circumflex
  NodeBack: @chapter circumflex
';

$result_converted_errors{'file_html'}->{'redirection_same_labels'} = [
  {
    'error_line' => 'warning: @node `@~{@dotless{i}}\' file i.html for redirection exists
',
    'line_nr' => 22,
    'text' => '@node `@~{@dotless{i}}\' file i.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `@"i\' redirection file
',
    'line_nr' => 20,
    'text' => 'conflict with @node `@"i\' redirection file',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node `@^i\' file i.html for redirection exists
',
    'line_nr' => 31,
    'text' => '@node `@^i\' file i.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @node `@"i\' redirection file
',
    'line_nr' => 20,
    'text' => 'conflict with @node `@"i\' redirection file',
    'type' => 'warning'
  }
];


1;
