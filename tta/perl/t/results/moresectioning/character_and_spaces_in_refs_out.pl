use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'character_and_spaces_in_refs_out'} = 'U0 unit[E0]
unit_directions:D[next->[U1]]
UNIT_DIRECTIONS
This: [U0]
Forward: [U1]
FastForward: [U1]
NodeNext: [U1]
NodeForward: [U1]
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 character_and_spaces_in_refs_text.texi:l1 {Top}
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
 *1 @top C4 character_and_spaces_in_refs_text.texi:l2 {Test refs}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E17]
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
    {Test refs}
  {empty_line:\\n}
  *2 @menu C4 character_and_spaces_in_refs_text.texi:l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{node to avoid DocBook or LaTeX ignored}
    |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
     {node to avoid DocBook or LaTeX ignored}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other nodes}
    |normalized:{other-nodes}
     {other nodes}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 character_and_spaces_in_refs_text.texi:l7
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
U1 unit[E3]
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
NodeForward: [U2]
NodeBack: [U0]
 *3 @node C1 character_and_spaces_in_refs_text.texi:l9 {node to avoid DocBook or LaTeX ignored}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E16|up->E0]
 |node_directions:D[next->E16|prev->E0|up->E0]
 |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node to avoid DocBook or LaTeX ignored}
 *4 @chapter C10 character_and_spaces_in_refs_text.texi:l10 {first chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E17|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E17|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first chapter}
  {empty_line:\\n}
  *5 @subheading C1 character_and_spaces_in_refs_text.texi:l12
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Testing distant nodes}
  {empty_line:\\n}
  *paragraph C10
   *6 @ref C4 character_and_spaces_in_refs_text.texi:l14
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{a  node}
     {a  node}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {manual}
   {\\n}
   *7 @ref C4 character_and_spaces_in_refs_text.texi:l15
    *brace_arg C1
    |EXTRA
    |node_content:{:}
     {:}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {manual}
   {\\n}
   *8 @ref C4 character_and_spaces_in_refs_text.texi:l16
    *brace_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{top}
     {top}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {manual}
   {\\n}
   *9 @ref C1 character_and_spaces_in_refs_text.texi:l17
    *brace_arg C4
    |EXTRA
    |manual_content:{texinfo}
    |node_content:{Cross References}
     {(}
     {texinfo}
     {)}
     {Cross References}
   {\\n}
   *10 @ref C4 character_and_spaces_in_refs_text.texi:l18
    *brace_arg C1
    |EXTRA
    |node_content:{node}
     {node}
    *brace_arg
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {../manual/doc}
   {\\n}
  {empty_line:\\n}
  *11 @subheading C1 character_and_spaces_in_refs_text.texi:l20
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Testing local nodes}
  {empty_line:\\n}
  *paragraph C8
   *12 @ref C1 character_and_spaces_in_refs_text.texi:l22
    *brace_arg C1
    |EXTRA
    |node_content:{!_"#$%&\'()*+-.}
    |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
     {!_"#$%&\'()*+-.}
   {\\n}
   *13 @ref C1 character_and_spaces_in_refs_text.texi:l23
    *brace_arg C1
    |EXTRA
    |node_content:{/;<=>?[\\]^_`|~}
    |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
     {/;<=>?[\\]^_`|~}
   {\\n}
   *14 @ref C1 character_and_spaces_in_refs_text.texi:l24
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |node_content:{Top}
    |normalized:{Top}
     {Top}
   {\\n}
   *15 @ref C1 character_and_spaces_in_refs_text.texi:l25
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{  }
    |EXTRA
    |node_content:{local   node}
    |normalized:{local-node}
     {local   node}
   {\\n}
  {empty_line:\\n}
U2 unit[E16]
unit_directions:D[next->[U3]|prev->[U1]]
UNIT_DIRECTIONS
This: [U2]
Forward: [U3]
Back: [U1]
FastBack: [U1]
Prev: [U1]
Up: [U0]
NodeNext: [U3]
NodePrev: [U1]
NodeUp: [U0]
NodeForward: [U3]
NodeBack: [U1]
 *16 @node C1 character_and_spaces_in_refs_text.texi:l27 {other nodes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E18]
 |node_directions:D[next->E19|prev->E3|up->E0]
 |normalized:{other-nodes}
  *arguments_line C4
   *line_arg C1
    {other nodes}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{!_"#$%&\'()*+-.}
   |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{node to avoid DocBook or LaTeX ignored}
   |normalized:{node-to-avoid-DocBook-or-LaTeX-ignored}
    {node to avoid DocBook or LaTeX ignored}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *17 @chapter C4 character_and_spaces_in_refs_text.texi:l28 {Chapter with nodes}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter with nodes}
  {empty_line:\\n}
  *18 @menu C5 character_and_spaces_in_refs_text.texi:l30
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l31
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{!_"#$%&\'()*+-.}
    |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
     {!_"#$%&\'()*+-.}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l32
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{/;<=>?[\\]^_`|~}
    |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
     {/;<=>?[\\]^_`|~}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 character_and_spaces_in_refs_text.texi:l33
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{local node}
    |normalized:{local-node}
     {local node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 character_and_spaces_in_refs_text.texi:l34
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
U3 unit[E19]
unit_directions:D[next->[U4]|prev->[U2]]
UNIT_DIRECTIONS
This: [U3]
Forward: [U4]
Back: [U2]
FastBack: [U2]
NodeNext: [U4]
NodePrev: [U2]
NodeUp: [U2]
NodeForward: [U4]
NodeBack: [U2]
 *19 @node C2 character_and_spaces_in_refs_text.texi:l36 {!_"#$%&\'()*+-.}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E20|up->E16]
 |node_directions:D[next->E20|prev->E16|up->E16]
 |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
  *arguments_line C4
   *line_arg C1
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{/;<=>?[\\]^_`|~}
   |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
U4 unit[E20]
unit_directions:D[next->[U5]|prev->[U3]]
UNIT_DIRECTIONS
This: [U4]
Forward: [U5]
Back: [U3]
FastBack: [U2]
NodeNext: [U5]
NodePrev: [U3]
NodeUp: [U2]
NodeForward: [U5]
NodeBack: [U3]
 *20 @node C2 character_and_spaces_in_refs_text.texi:l38 {/;<=>?[\\]^_`|~}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E21|prev->E19|up->E16]
 |node_directions:D[next->E21|prev->E19|up->E16]
 |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
  *arguments_line C4
   *line_arg C1
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |EXTRA
   |node_content:{local   node}
   |normalized:{local-node}
    {local   node}
   *line_arg C1
   |EXTRA
   |node_content:{!_"#$%&\'()*+-.}
   |normalized:{_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e}
    {!_"#$%&\'()*+-.}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
U5 unit[E21]
unit_directions:D[prev->[U4]]
UNIT_DIRECTIONS
This: [U5]
Back: [U4]
FastBack: [U2]
NodePrev: [U4]
NodeUp: [U2]
NodeForward: [U3]
NodeBack: [U4]
 *21 @node C2 character_and_spaces_in_refs_text.texi:l40 {local   node}
 |INFO
 |spaces_before_argument:
  |{  }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E20|up->E16]
 |node_directions:D[prev->E20|up->E16]
 |normalized:{local-node}
  *arguments_line C4
   *line_arg C1
    {local   node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{/;<=>?[\\]^_`|~}
   |normalized:{_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e}
    {/;<=>?[\\]^_`|~}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{other nodes}
   |normalized:{other-nodes}
    {other nodes}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'character_and_spaces_in_refs_out'} = '@node Top
@top Test refs

@menu
* node to avoid DocBook or LaTeX ignored::
* other nodes::
@end menu

@node node to avoid DocBook or LaTeX ignored
@chapter first chapter

@subheading Testing distant nodes

@ref{ a  node ,,, manual}
@ref{:,,,manual}
@ref{ top ,,, manual}
@ref{(texinfo)Cross References}
@ref{node,,, ../manual/doc}

@subheading Testing local nodes

@ref{!_"#$%&\'()*+-.}
@ref{/;<=>?[\\]^_`|~}
@ref{ Top}
@ref{  local   node}

@node other nodes, !_"#$%&\'()*+-., node to avoid DocBook or LaTeX ignored, Top
@chapter Chapter with nodes

@menu
* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::
@end menu

@node !_"#$%&\'()*+-., /;<=>?[\\]^_`|~, other nodes, other nodes

@node /;<=>?[\\]^_`|~,local   node,!_"#$%&\'()*+-., other nodes

@node  local   node,,/;<=>?[\\]^_`|~,other nodes

@bye
';


$result_texts{'character_and_spaces_in_refs_out'} = 'Test refs
*********

* node to avoid DocBook or LaTeX ignored::
* other nodes::

1 first chapter
***************

Testing distant nodes
---------------------

a  node
:
top
(texinfo)Cross References
node

Testing local nodes
-------------------

!_"#$%&\'()*+-.
/;<=>?[\\]^_`|~
Top
local   node

2 Chapter with nodes
********************

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::




';

$result_sectioning{'character_and_spaces_in_refs_out'} = {
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
                    'Forward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'Forward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'Forward' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'NodeBack' => {},
                                'NodeForward' => {},
                                'NodePrev' => {},
                                'NodeUp' => {},
                                'This' => {}
                              },
                              'tree_unit_directions' => {
                                'prev' => {}
                              },
                              'unit_command' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => 'local-node'
                                }
                              },
                              'unit_type' => 'unit'
                            },
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodeNext' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {
                            'associated_unit' => {},
                            'cmdname' => 'node',
                            'extra' => {
                              'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                            }
                          },
                          'unit_type' => 'unit'
                        },
                        'NodeBack' => {},
                        'NodeForward' => {},
                        'NodeNext' => {},
                        'NodePrev' => {},
                        'NodeUp' => {},
                        'This' => {}
                      },
                      'tree_unit_directions' => {
                        'prev' => {}
                      },
                      'unit_command' => {
                        'associated_unit' => {},
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                        }
                      },
                      'unit_type' => 'unit'
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
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
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'other-nodes'
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
              'unit_command' => {
                'associated_unit' => {},
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                }
              },
              'unit_type' => 'unit'
            },
            'Forward' => {},
            'NodeForward' => {},
            'NodeNext' => {},
            'This' => {}
          },
          'tree_unit_directions' => {},
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'unit_type' => 'unit'
        },
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {},
          'section_childs' => [
            {
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
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
              'associated_unit' => {},
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {},
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
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'character_and_spaces_in_refs_out'};

$result_nodes{'character_and_spaces_in_refs_out'} = [
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
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'Forward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {
                            'associated_unit' => {},
                            'cmdname' => 'node',
                            'extra' => {
                              'node_directions' => {
                                'prev' => {
                                  'associated_unit' => {},
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'node_directions' => {
                                      'next' => {},
                                      'prev' => {
                                        'associated_unit' => {},
                                        'cmdname' => 'node',
                                        'extra' => {
                                          'node_directions' => {
                                            'next' => {},
                                            'prev' => {
                                              'associated_unit' => {},
                                              'cmdname' => 'node',
                                              'extra' => {
                                                'associated_section' => {
                                                  'associated_unit' => {},
                                                  'cmdname' => 'chapter',
                                                  'extra' => {
                                                    'section_number' => '2'
                                                  }
                                                },
                                                'node_directions' => {
                                                  'next' => {},
                                                  'prev' => {
                                                    'associated_unit' => {},
                                                    'cmdname' => 'node',
                                                    'extra' => {
                                                      'associated_section' => {
                                                        'associated_unit' => {},
                                                        'cmdname' => 'chapter',
                                                        'extra' => {
                                                          'section_number' => '1'
                                                        }
                                                      },
                                                      'node_directions' => {
                                                        'next' => {},
                                                        'prev' => {},
                                                        'up' => {}
                                                      },
                                                      'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                                                    }
                                                  },
                                                  'up' => {}
                                                },
                                                'normalized' => 'other-nodes'
                                              }
                                            },
                                            'up' => {}
                                          },
                                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                        }
                                      },
                                      'up' => {}
                                    },
                                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                  }
                                },
                                'up' => {}
                              },
                              'normalized' => 'local-node'
                            }
                          },
                          'unit_type' => 'unit'
                        },
                        'NodeBack' => {},
                        'NodeForward' => {},
                        'NodeNext' => {},
                        'NodePrev' => {},
                        'NodeUp' => {},
                        'This' => {}
                      },
                      'tree_unit_directions' => {
                        'next' => {},
                        'prev' => {}
                      },
                      'unit_command' => {},
                      'unit_type' => 'unit'
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'unit_command' => {},
                  'unit_type' => 'unit'
                },
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'next' => {},
                'prev' => {}
              },
              'unit_command' => {},
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
          'unit_command' => {},
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
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'associated_unit' => {},
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {}
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
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0];
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0];
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0];
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}[0];
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'extra'}{'associated_section'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}[0]{'extra'}{'node_directions'}{'next'} = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[1] = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[2] = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[3] = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[4] = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'node_directions'}{'prev'};
$result_nodes{'character_and_spaces_in_refs_out'}[5] = $result_nodes{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_menus{'character_and_spaces_in_refs_out'} = [
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
                'Forward' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
                      'directions' => {
                        'Back' => {},
                        'FastBack' => {},
                        'Forward' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'tree_unit_directions' => {
                            'prev' => {}
                          },
                          'unit_command' => {
                            'associated_unit' => {},
                            'extra' => {
                              'menu_directions' => {
                                'prev' => {
                                  'associated_unit' => {},
                                  'extra' => {
                                    'menu_directions' => {
                                      'next' => {},
                                      'prev' => {
                                        'associated_unit' => {},
                                        'extra' => {
                                          'menu_directions' => {
                                            'next' => {},
                                            'up' => {
                                              'associated_unit' => {},
                                              'extra' => {
                                                'menu_directions' => {
                                                  'prev' => {
                                                    'associated_unit' => {},
                                                    'extra' => {
                                                      'menu_directions' => {
                                                        'next' => {},
                                                        'up' => {}
                                                      },
                                                      'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                                                    }
                                                  },
                                                  'up' => {}
                                                },
                                                'menus' => [
                                                  {}
                                                ],
                                                'normalized' => 'other-nodes'
                                              }
                                            }
                                          },
                                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                        }
                                      },
                                      'up' => {}
                                    },
                                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                  }
                                },
                                'up' => {}
                              },
                              'normalized' => 'local-node'
                            }
                          },
                          'unit_type' => 'unit'
                        },
                        'NodeBack' => {},
                        'NodeForward' => {},
                        'NodeNext' => {},
                        'NodePrev' => {},
                        'NodeUp' => {},
                        'This' => {}
                      },
                      'tree_unit_directions' => {
                        'next' => {},
                        'prev' => {}
                      },
                      'unit_command' => {},
                      'unit_type' => 'unit'
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {}
                  },
                  'tree_unit_directions' => {
                    'next' => {},
                    'prev' => {}
                  },
                  'unit_command' => {},
                  'unit_type' => 'unit'
                },
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'Prev' => {},
                'This' => {},
                'Up' => {}
              },
              'tree_unit_directions' => {
                'next' => {},
                'prev' => {}
              },
              'unit_command' => {},
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
          'unit_command' => {},
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
      'unit_command' => {},
      'unit_type' => 'unit'
    },
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}[0];
$result_menus{'character_and_spaces_in_refs_out'}[1] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[2] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'character_and_spaces_in_refs_out'}[3] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[4] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'character_and_spaces_in_refs_out'}[5] = $result_menus{'character_and_spaces_in_refs_out'}[0]{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};

$result_errors{'character_and_spaces_in_refs_out'} = [];


$result_floats{'character_and_spaces_in_refs_out'} = {};


$result_elements{'character_and_spaces_in_refs_out'} = [
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
              'Forward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'Forward' => {
                    'directions' => {
                      'Back' => {},
                      'FastBack' => {},
                      'Forward' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        },
                        'unit_command' => {
                          'associated_unit' => {},
                          'cmdname' => 'node',
                          'extra' => {
                            'menu_directions' => {
                              'prev' => {
                                'associated_unit' => {},
                                'cmdname' => 'node',
                                'extra' => {
                                  'menu_directions' => {
                                    'next' => {},
                                    'prev' => {
                                      'associated_unit' => {},
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'menu_directions' => {
                                          'next' => {},
                                          'up' => {
                                            'associated_unit' => {},
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'menu_directions' => {
                                                'prev' => {
                                                  'associated_unit' => {},
                                                  'cmdname' => 'node',
                                                  'extra' => {
                                                    'menu_directions' => {
                                                      'next' => {},
                                                      'up' => {
                                                        'associated_unit' => {},
                                                        'cmdname' => 'node',
                                                        'extra' => {
                                                          'normalized' => 'Top'
                                                        }
                                                      }
                                                    },
                                                    'normalized' => 'node-to-avoid-DocBook-or-LaTeX-ignored'
                                                  }
                                                },
                                                'up' => {}
                                              },
                                              'normalized' => 'other-nodes'
                                            }
                                          }
                                        },
                                        'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                      }
                                    },
                                    'up' => {}
                                  },
                                  'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                }
                              },
                              'up' => {}
                            },
                            'normalized' => 'local-node'
                          }
                        },
                        'unit_type' => 'unit'
                      },
                      'NodeBack' => {},
                      'NodeForward' => {},
                      'NodeNext' => {},
                      'NodePrev' => {},
                      'NodeUp' => {},
                      'This' => {}
                    },
                    'unit_command' => {},
                    'unit_type' => 'unit'
                  },
                  'NodeBack' => {},
                  'NodeForward' => {},
                  'NodeNext' => {},
                  'NodePrev' => {},
                  'NodeUp' => {},
                  'This' => {}
                },
                'unit_command' => {},
                'unit_type' => 'unit'
              },
              'NodeBack' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'NodePrev' => {},
              'NodeUp' => {},
              'Prev' => {},
              'This' => {},
              'Up' => {}
            },
            'unit_command' => {},
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
        'unit_command' => {},
        'unit_type' => 'unit'
      },
      'Forward' => {},
      'NodeForward' => {},
      'NodeNext' => {},
      'This' => {}
    },
    'unit_command' => {},
    'unit_type' => 'unit'
  },
  {},
  {},
  {},
  {},
  {}
];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Prev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'Up'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'unit_command'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'};
$result_elements{'character_and_spaces_in_refs_out'}[1] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[2] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'};
$result_elements{'character_and_spaces_in_refs_out'}[3] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[4] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[5] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'directions'}{'FastForward'}{'directions'}{'FastForward'}{'directions'}{'Forward'}{'directions'}{'Forward'}{'directions'}{'Forward'};



$result_directions_text{'character_and_spaces_in_refs_out'} = 'output unit: @node Top
  This: @node Top
  Forward: @node node to avoid DocBook or LaTeX ignored
  FastForward: @node node to avoid DocBook or LaTeX ignored
  NodeNext: @node node to avoid DocBook or LaTeX ignored
  NodeForward: @node node to avoid DocBook or LaTeX ignored
output unit: @node node to avoid DocBook or LaTeX ignored
  This: @node node to avoid DocBook or LaTeX ignored
  Forward: @node other nodes
  Back: @node Top
  FastForward: @node other nodes
  FastBack: @node Top
  Next: @node other nodes
  Up: @node Top
  NodeNext: @node other nodes
  NodePrev: @node Top
  NodeUp: @node Top
  NodeForward: @node other nodes
  NodeBack: @node Top
output unit: @node other nodes
  This: @node other nodes
  Forward: @node !_"#$%&\'()*+-.
  Back: @node node to avoid DocBook or LaTeX ignored
  FastBack: @node node to avoid DocBook or LaTeX ignored
  Prev: @node node to avoid DocBook or LaTeX ignored
  Up: @node Top
  NodeNext: @node !_"#$%&\'()*+-.
  NodePrev: @node node to avoid DocBook or LaTeX ignored
  NodeUp: @node Top
  NodeForward: @node !_"#$%&\'()*+-.
  NodeBack: @node node to avoid DocBook or LaTeX ignored
output unit: @node !_"#$%&\'()*+-.
  This: @node !_"#$%&\'()*+-.
  Forward: @node /;<=>?[\\]^_`|~
  Back: @node other nodes
  FastBack: @node other nodes
  NodeNext: @node /;<=>?[\\]^_`|~
  NodePrev: @node other nodes
  NodeUp: @node other nodes
  NodeForward: @node /;<=>?[\\]^_`|~
  NodeBack: @node other nodes
output unit: @node /;<=>?[\\]^_`|~
  This: @node /;<=>?[\\]^_`|~
  Forward: @node local   node
  Back: @node !_"#$%&\'()*+-.
  FastBack: @node other nodes
  NodeNext: @node local   node
  NodePrev: @node !_"#$%&\'()*+-.
  NodeUp: @node other nodes
  NodeForward: @node local   node
  NodeBack: @node !_"#$%&\'()*+-.
output unit: @node local   node
  This: @node local   node
  Back: @node /;<=>?[\\]^_`|~
  FastBack: @node other nodes
  NodePrev: @node /;<=>?[\\]^_`|~
  NodeUp: @node other nodes
  NodeForward: @node !_"#$%&\'()*+-.
  NodeBack: @node /;<=>?[\\]^_`|~
';

1;
