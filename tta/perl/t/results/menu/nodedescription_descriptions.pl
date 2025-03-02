use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodedescription_descriptions'} = '*document_root C17
 *before_node_section
 *0 @node C1 l1
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
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E11|E14|E17|E20|E23|E26]
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
    {test of nodedescription used in menu}
  {empty_line:\\n}
  *2 @menu C10 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{toto}
    |normalized:{toto}
     {toto}
    {menu_entry_separator:::   }
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{titi}
    |normalized:{titi}
     {titi}
    {menu_entry_separator:::  }
    *menu_entry_description C1
     *preformatted C1
      {desc of titi\\n}
   *menu_entry C6 l7
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {name of other}
    {menu_entry_separator:: }
    *menu_entry_node C1
    |EXTRA
    |node_content:{other}
    |normalized:{other}
     {other}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *menu_entry C6 l9
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {name of last}
    {menu_entry_separator:: }
    *menu_entry_node C1
    |EXTRA
    |node_content:{last}
    |normalized:{last}
     {last}
    {menu_entry_separator:. }
    *menu_entry_description C1
     *preformatted C1
      {desc of last\\n}
   *menu_entry C4 l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{a somewhat long node without description nor following space}
    |normalized:{a-somewhat-long-node-without-description-nor-following-space}
     {a somewhat long node without description nor following space}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{a very long node without description with very little space left for}
    |normalized:{a-very-long-node-without-description-with-very-little-space-left-for}
     {a very long node without description with very little space left for}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l12
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{very very long node extending past the max columns and without description}
    |normalized:{very-very-long-node-extending-past-the-max-columns-and-without-description}
     {very very long node extending past the max columns and without description}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l13
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
 *3 @node C1 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E10|up->E0]
 |node_description:[E5]
 |node_directions:D[next->E10|prev->E0|up->E0]
 |normalized:{toto}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto}
 *4 @chapter C4 l16
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E11|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E11|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Toto}
  {empty_line:\\n}
  *5 @nodedescription C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
   *line_arg C8
   |INFO
   |spaces_after_argument:
    |{\\n}
    {toto is there:: and the }
    *6 @emph C1 l18
     *brace_container C1
      {is a description}
    *7 @w C1 l18
     *brace_container C1
      {slightly long}
    { and }
    *8 @verb C1 l18
    |INFO
    |delimiter:{:}
     *brace_container C1
      {raw:vv somewhat}
    { }
    *9 @ringaccent C1 l18
    |INFO
    |spaces_after_cmd_before_arg:
     |{ }
     *following_arg C1
      {a}
    {nexpected}
  {empty_line:\\n}
 *10 @node C1 l20
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E11]
 |is_target:{1}
 |menu_directions:D[next->E13|prev->E3|up->E0]
 |node_description:[E12]
 |node_directions:D[next->E13|prev->E3|up->E0]
 |normalized:{titi}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {titi}
 *11 @chapter C4 l21
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E10]
 |section_directions:D[next->E14|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E14|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Titi}
  {empty_line:\\n}
  *12 @nodedescription C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E10]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {this describes titi}
  {empty_line:\\n}
 *13 @node C1 l25
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E14]
 |is_target:{1}
 |menu_directions:D[next->E16|prev->E10|up->E0]
 |node_description:[E15]
 |node_directions:D[next->E16|prev->E10|up->E0]
 |normalized:{other}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other}
 *14 @chapter C4 l26
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E13]
 |section_directions:D[next->E17|prev->E11|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E17|prev->E11|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Other}
  {empty_line:\\n}
  *15 @nodedescription C1 l28
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E13]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {other comes here}
  {empty_line:\\n}
 *16 @node C1 l30
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |menu_directions:D[next->E19|prev->E13|up->E0]
 |node_description:[E18]
 |node_directions:D[next->E19|prev->E13|up->E0]
 |normalized:{last}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {last}
 *17 @chapter C4 l31
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E16]
 |section_directions:D[next->E20|prev->E14|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[next->E20|prev->E14|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Last}
  {empty_line:\\n}
  *18 @nodedescription C1 l33
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E16]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {we are last}
  {empty_line:\\n}
 *19 @node C1 l35
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E20]
 |is_target:{1}
 |menu_directions:D[next->E22|prev->E16|up->E0]
 |node_description:[E21]
 |node_directions:D[next->E22|prev->E16|up->E0]
 |normalized:{a-somewhat-long-node-without-description-nor-following-space}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a somewhat long node without description nor following space}
 *20 @chapter C4 l36
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E19]
 |section_directions:D[next->E23|prev->E17|up->E1]
 |section_level:{1}
 |section_number:{5}
 |toplevel_directions:D[next->E23|prev->E17|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Somewhat long}
  {empty_line:\\n}
  *21 @nodedescription C1 l38
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E19]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {not as long as the node}
  {empty_line:\\n}
 *22 @node C1 l40
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E23]
 |is_target:{1}
 |menu_directions:D[next->E25|prev->E19|up->E0]
 |node_description:[E24]
 |node_directions:D[next->E25|prev->E19|up->E0]
 |normalized:{a-very-long-node-without-description-with-very-little-space-left-for}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a very long node without description with very little space left for}
 *23 @chapter C4 l41
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E22]
 |section_directions:D[next->E26|prev->E20|up->E1]
 |section_level:{1}
 |section_number:{6}
 |toplevel_directions:D[next->E26|prev->E20|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Very long}
  {empty_line:\\n}
  *24 @nodedescription C1 l43
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E22]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {starting the desciption with a somewhat long word}
  {empty_line:\\n}
 *25 @node C1 l45
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E26]
 |is_target:{1}
 |menu_directions:D[prev->E22|up->E0]
 |node_description:[E27]
 |node_directions:D[prev->E22|up->E0]
 |normalized:{very-very-long-node-extending-past-the-max-columns-and-without-description}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {very very long node extending past the max columns and without description}
 *26 @chapter C3 l46
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E25]
 |section_directions:D[prev->E23|up->E1]
 |section_level:{1}
 |section_number:{7}
 |toplevel_directions:D[prev->E23|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Past max columns}
  {empty_line:\\n}
  *27 @nodedescription C1 l48
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E25]
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Not long}
';


$result_texis{'nodedescription_descriptions'} = '@node Top
@top test of nodedescription used in menu

@menu
* toto::   
* titi::  desc of titi
* name of other: other.

* name of last: last. desc of last
* a somewhat long node without description nor following space::
* a very long node without description with very little space left for::
* very very long node extending past the max columns and without description::
@end menu

@node toto
@chapter Toto

@nodedescription toto is there:: and the @emph{is a description}@w{slightly long} and @verb{:vv somewhat:} @ringaccent anexpected

@node titi
@chapter Titi

@nodedescription this describes titi

@node other
@chapter Other

@nodedescription other comes here

@node last
@chapter Last

@nodedescription we are last

@node a somewhat long node without description nor following space
@chapter Somewhat long

@nodedescription not as long as the node

@node a very long node without description with very little space left for
@chapter Very long

@nodedescription starting the desciption with a somewhat long word

@node very very long node extending past the max columns and without description
@chapter Past max columns

@nodedescription Not long
';


$result_texts{'nodedescription_descriptions'} = 'test of nodedescription used in menu
************************************

* toto::   
* titi::  desc of titi
* name of other: other.

* name of last: last. desc of last
* a somewhat long node without description nor following space::
* a very long node without description with very little space left for::
* very very long node extending past the max columns and without description::

1 Toto
******


2 Titi
******


3 Other
*******


4 Last
******


5 Somewhat long
***************


6 Very long
***********


7 Past max columns
******************

';

$result_sectioning{'nodedescription_descriptions'} = {
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
                    'normalized' => 'toto'
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
                    'normalized' => 'titi'
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
                    'normalized' => 'other'
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
                    'normalized' => 'last'
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
                    'normalized' => 'a-somewhat-long-node-without-description-nor-following-space'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'a-very-long-node-without-description-with-very-little-space-left-for'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '6',
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
                    'normalized' => 'very-very-long-node-extending-past-the-max-columns-and-without-description'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '7',
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
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[4];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[5];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[6]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'nodedescription_descriptions'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodedescription_descriptions'};

$result_nodes{'nodedescription_descriptions'} = [
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
                                      'next' => {
                                        'cmdname' => 'node',
                                        'extra' => {
                                          'associated_section' => {
                                            'cmdname' => 'chapter',
                                            'extra' => {
                                              'section_number' => '6'
                                            }
                                          },
                                          'node_directions' => {
                                            'next' => {
                                              'cmdname' => 'node',
                                              'extra' => {
                                                'associated_section' => {
                                                  'cmdname' => 'chapter',
                                                  'extra' => {
                                                    'section_number' => '7'
                                                  }
                                                },
                                                'node_directions' => {
                                                  'prev' => {},
                                                  'up' => {}
                                                },
                                                'normalized' => 'very-very-long-node-extending-past-the-max-columns-and-without-description'
                                              }
                                            },
                                            'prev' => {},
                                            'up' => {}
                                          },
                                          'normalized' => 'a-very-long-node-without-description-with-very-little-space-left-for'
                                        }
                                      },
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'a-somewhat-long-node-without-description-nor-following-space'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'last'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'other'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'titi'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'toto'
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
  {},
  {},
  {}
];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodedescription_descriptions'}[0];
$result_nodes{'nodedescription_descriptions'}[1] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[2] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[3] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[4] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[5] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[6] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodedescription_descriptions'}[7] = $result_nodes{'nodedescription_descriptions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'nodedescription_descriptions'} = [
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
                                'next' => {
                                  'extra' => {
                                    'menu_directions' => {
                                      'next' => {
                                        'extra' => {
                                          'menu_directions' => {
                                            'prev' => {},
                                            'up' => {}
                                          },
                                          'normalized' => 'very-very-long-node-extending-past-the-max-columns-and-without-description'
                                        }
                                      },
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'a-very-long-node-without-description-with-very-little-space-left-for'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'a-somewhat-long-node-without-description-nor-following-space'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'last'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'other'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'titi'
          }
        },
        'up' => {}
      },
      'normalized' => 'toto'
    }
  },
  {},
  {},
  {},
  {},
  {},
  {}
];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodedescription_descriptions'}[1];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodedescription_descriptions'}[0];
$result_menus{'nodedescription_descriptions'}[2] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[3] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[4] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[5] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[6] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'nodedescription_descriptions'}[7] = $result_menus{'nodedescription_descriptions'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'nodedescription_descriptions'} = [
  {
    'error_line' => 'warning: @verb should not appear on @nodedescription line
',
    'line_nr' => 18,
    'text' => '@verb should not appear on @nodedescription line',
    'type' => 'warning'
  }
];


$result_floats{'nodedescription_descriptions'} = {};



$result_converted{'plaintext'}->{'nodedescription_descriptions'} = 'test of nodedescription used in menu
************************************

* Menu:

* toto::                       toto is there:: and the _is a
                               description_slightly long and vv somewhat
                               ånexpected
* titi::  desc of titi
* name of other: other.        other comes here

* name of last: last. desc of last
* a somewhat long node without description nor following space::  not as long
                               as the node
* a very long node without description with very little space left for::  
                               starting the desciption with a somewhat long
                               word
* very very long node extending past the max columns and without description::  
                               Not long

1 Toto
******

2 Titi
******

3 Other
*******

4 Last
******

5 Somewhat long
***************

6 Very long
***********

7 Past max columns
******************

';


$result_converted{'html'}->{'nodedescription_descriptions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>test of nodedescription used in menu</title>

<meta name="description" content="test of nodedescription used in menu">
<meta name="keywords" content="test of nodedescription used in menu">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
pre.menu-comment-preformatted {font-family: serif}
span:hover a.copiable-link {visibility: visible}
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#toto" accesskey="n" rel="next">Toto</a> &nbsp; </p>
</div>
<h1 class="top" id="test-of-nodedescription-used-in-menu"><span>test of nodedescription used in menu<a class="copiable-link" href="#test-of-nodedescription-used-in-menu"> &para;</a></span></h1>

<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="#toto" accesskey="1">toto</a>:</td><td class="menu-entry-description">toto is there:: and the <em class="emph">is a description</em>slightly&nbsp;long<!-- /@w --> and <code class="verb">vv&nbsp;somewhat</code> &aring;nexpected</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#titi" accesskey="2">titi</a>:</td><td class="menu-entry-description">desc of titi
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#other" accesskey="3">name of other</a>:</td><td class="menu-entry-description">other comes here</td></tr>
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="#last" accesskey="4">name of last</a>:</td><td class="menu-entry-description">desc of last
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="5">a somewhat long node without description nor following space</a>:</td><td class="menu-entry-description">not as long as the node</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#a-very-long-node-without-description-with-very-little-space-left-for" accesskey="6">a very long node without description with very little space left for</a>:</td><td class="menu-entry-description">starting the desciption with a somewhat long word</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="#very-very-long-node-extending-past-the-max-columns-and-without-description" accesskey="7">very very long node extending past the max columns and without description</a>:</td><td class="menu-entry-description">Not long</td></tr>
</table>

<hr>
<div class="chapter-level-extent" id="toto">
<div class="nav-panel">
<p>
Next: <a href="#titi" accesskey="n" rel="next">Titi</a>, Previous: <a href="#Top" accesskey="p" rel="prev">test of nodedescription used in menu</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Toto"><span>1 Toto<a class="copiable-link" href="#Toto"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="titi">
<div class="nav-panel">
<p>
Next: <a href="#other" accesskey="n" rel="next">Other</a>, Previous: <a href="#toto" accesskey="p" rel="prev">Toto</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Titi"><span>2 Titi<a class="copiable-link" href="#Titi"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="other">
<div class="nav-panel">
<p>
Next: <a href="#last" accesskey="n" rel="next">Last</a>, Previous: <a href="#titi" accesskey="p" rel="prev">Titi</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Other"><span>3 Other<a class="copiable-link" href="#Other"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="last">
<div class="nav-panel">
<p>
Next: <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="n" rel="next">Somewhat long</a>, Previous: <a href="#other" accesskey="p" rel="prev">Other</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Last"><span>4 Last<a class="copiable-link" href="#Last"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="a-somewhat-long-node-without-description-nor-following-space">
<div class="nav-panel">
<p>
Next: <a href="#a-very-long-node-without-description-with-very-little-space-left-for" accesskey="n" rel="next">Very long</a>, Previous: <a href="#last" accesskey="p" rel="prev">Last</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Somewhat-long"><span>5 Somewhat long<a class="copiable-link" href="#Somewhat-long"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="a-very-long-node-without-description-with-very-little-space-left-for">
<div class="nav-panel">
<p>
Next: <a href="#very-very-long-node-extending-past-the-max-columns-and-without-description" accesskey="n" rel="next">Past max columns</a>, Previous: <a href="#a-somewhat-long-node-without-description-nor-following-space" accesskey="p" rel="prev">Somewhat long</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Very-long"><span>6 Very long<a class="copiable-link" href="#Very-long"> &para;</a></span></h2>


<hr>
</div>
<div class="chapter-level-extent" id="very-very-long-node-extending-past-the-max-columns-and-without-description">
<div class="nav-panel">
<p>
Previous: <a href="#a-very-long-node-without-description-with-very-little-space-left-for" accesskey="p" rel="prev">Very long</a>, Up: <a href="#Top" accesskey="u" rel="up">test of nodedescription used in menu</a> &nbsp; </p>
</div>
<h2 class="chapter" id="Past-max-columns"><span>7 Past max columns<a class="copiable-link" href="#Past-max-columns"> &para;</a></span></h2>

</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'nodedescription_descriptions'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">toto</nodenext></node>
<top spaces=" "><sectiontitle>test of nodedescription used in menu</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>toto</menunode><menuseparator>::   </menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>titi</menunode><menuseparator>::  </menuseparator><menudescription><pre xml:space="preserve">desc of titi
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menutitle>name of other</menutitle><menuseparator>: </menuseparator><menunode>other</menunode><menuseparator>.</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><menuentry><menuleadingtext>* </menuleadingtext><menutitle>name of last</menutitle><menuseparator>: </menuseparator><menunode>last</menunode><menuseparator>. </menuseparator><menudescription><pre xml:space="preserve">desc of last
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>a somewhat long node without description nor following space</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>a very long node without description with very little space left for</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>very very long node extending past the max columns and without description</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node identifier="toto" spaces=" "><nodename>toto</nodename><nodenext automatic="on">titi</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Toto</sectiontitle>

<nodedescription spaces=" ">toto is there:: and the <emph>is a description</emph><w>slightly long</w> and <verb delimiter=":">vv somewhat</verb> <accent type="ring" spacesaftercmd=" " bracketed="off">a</accent>nexpected</nodedescription>

</chapter>
<node identifier="titi" spaces=" "><nodename>titi</nodename><nodenext automatic="on">other</nodenext><nodeprev automatic="on">toto</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Titi</sectiontitle>

<nodedescription spaces=" ">this describes titi</nodedescription>

</chapter>
<node identifier="other" spaces=" "><nodename>other</nodename><nodenext automatic="on">last</nodenext><nodeprev automatic="on">titi</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Other</sectiontitle>

<nodedescription spaces=" ">other comes here</nodedescription>

</chapter>
<node identifier="last" spaces=" "><nodename>last</nodename><nodenext automatic="on">a somewhat long node without description nor following space</nodenext><nodeprev automatic="on">other</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Last</sectiontitle>

<nodedescription spaces=" ">we are last</nodedescription>

</chapter>
<node identifier="a-somewhat-long-node-without-description-nor-following-space" spaces=" "><nodename>a somewhat long node without description nor following space</nodename><nodenext automatic="on">a very long node without description with very little space left for</nodenext><nodeprev automatic="on">last</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Somewhat long</sectiontitle>

<nodedescription spaces=" ">not as long as the node</nodedescription>

</chapter>
<node identifier="a-very-long-node-without-description-with-very-little-space-left-for" spaces=" "><nodename>a very long node without description with very little space left for</nodename><nodenext automatic="on">very very long node extending past the max columns and without description</nodenext><nodeprev automatic="on">a somewhat long node without description nor following space</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Very long</sectiontitle>

<nodedescription spaces=" ">starting the desciption with a somewhat long word</nodedescription>

</chapter>
<node identifier="very-very-long-node-extending-past-the-max-columns-and-without-description" spaces=" "><nodename>very very long node extending past the max columns and without description</nodename><nodeprev automatic="on">a very long node without description with very little space left for</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Past max columns</sectiontitle>

<nodedescription spaces=" ">Not long</nodedescription>
</chapter>
';

1;
