use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'topic_guide'} = '*document_root C13
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 topic_guide.texi:l3 {Top}
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
 *1 @top C6 topic_guide.texi:l4 {A example quide topic collection}
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
    {A example quide topic collection}
  {empty_line:\\n}
  *paragraph C2
   {This is an example of guide/topic based manual inspired by the Mallard\\n}
   {format.\\n}
  {empty_line:\\n}
  *2 @menu C4 topic_guide.texi:l9
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 topic_guide.texi:l10
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide1}
    |normalized:{guide1}
     {guide1}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {the easy way\\n}
   *menu_entry C4 topic_guide.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide2}
    |normalized:{guide2}
     {guide2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {the perillous way\\n}
   *@end C1 topic_guide.texi:l12
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
 *3 @node C1 topic_guide.texi:l14 {guide1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[next->E16|up->E14]
 |menus:EC[E5]
 |node_directions:D[next->E16|prev->E0|up->E0]
 |normalized:{guide1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {guide1}
 *4 @chapter C6 topic_guide.texi:l15 {guide 1}
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
    {guide 1}
  {empty_line:\\n}
  *paragraph C1
   {This is the guide for an easy use.\\n}
  {empty_line:\\n}
  *5 @menu C5 topic_guide.texi:l19
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 topic_guide.texi:l20
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{topic1}
    |normalized:{topic1}
     {topic1}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {topic1 description\\n}
   *menu_entry C4 topic_guide.texi:l21
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{topic2}
    |normalized:{topic2}
     {topic2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {topic2 description\\n}
   *menu_entry C4 topic_guide.texi:l22
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{topic5}
    |normalized:{topic5}
     {topic5}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {topic5 description\\n}
   *@end C1 topic_guide.texi:l23
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
 *6 @node C6 topic_guide.texi:l25 {topic1}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E8|up->E3]
 |menus:EC[E7]
 |node_directions:D[next->E8]
 |normalized:{topic1}
  *arguments_line C2
   *line_arg C1
    {topic1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic2}
   |normalized:{topic2}
    {topic2}
  {empty_line:\\n}
  *paragraph C1
   {This is topic 1.\\n}
  {empty_line:\\n}
  *7 @menu C4 topic_guide.texi:l29
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C2
     {More information\\n}
     {empty_line:\\n}
   *menu_entry C4 topic_guide.texi:l32
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide1}
    |normalized:{guide1}
     {guide1}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {guide 1\\n}
   *@end C1 topic_guide.texi:l33
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
 *8 @node C6 topic_guide.texi:l35 {topic2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E14|prev->E6|up->E3]
 |menus:EC[E9]
 |node_directions:D[next->E10|prev->E6]
 |normalized:{topic2}
  *arguments_line C3
   *line_arg C1
    {topic2}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic3}
   |normalized:{topic3}
    {topic3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic1}
   |normalized:{topic1}
    {topic1}
  {empty_line:\\n}
  *paragraph C1
   {This is topic 2\\n}
  {empty_line:\\n}
  *9 @menu C4 topic_guide.texi:l39
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C2
     {More information\\n}
     {empty_line:\\n}
   *menu_entry C4 topic_guide.texi:l42
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide1}
    |normalized:{guide1}
     {guide1}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {guide 1\\n}
   *@end C1 topic_guide.texi:l43
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
 *10 @node C6 topic_guide.texi:l45 {topic3}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E11]
 |node_directions:D[next->E14|prev->E8]
 |normalized:{topic3}
  *arguments_line C3
   *line_arg C1
    {topic3}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic5}
   |normalized:{topic5}
    {topic5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic2}
   |normalized:{topic2}
    {topic2}
  {empty_line:\\n}
  *paragraph C1
   {This is topic 3\\n}
  {empty_line:\\n}
  *11 @menu C3 topic_guide.texi:l49
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C2
     {More information\\n}
     {empty_line:\\n}
   *@end C1 topic_guide.texi:l52
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
 *12 @node C6 topic_guide.texi:l54 {topic4}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E14|up->E16]
 |menus:EC[E13]
 |node_directions:D[prev->E14|up->E16]
 |normalized:{topic4}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {topic4}
  {empty_line:\\n}
  *paragraph C1
   {This is topic 4\\n}
  {empty_line:\\n}
  *13 @menu C4 topic_guide.texi:l58
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C2
     {More information\\n}
     {empty_line:\\n}
   *menu_entry C4 topic_guide.texi:l61
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide2}
    |normalized:{guide2}
     {guide2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {guide 2\\n}
   *@end C1 topic_guide.texi:l62
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
 *14 @node C6 topic_guide.texi:l64 {topic5}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E12|prev->E8|up->E16]
 |menus:EC[E15]
 |node_directions:D[prev->E10]
 |normalized:{topic5}
  *arguments_line C3
   *line_arg C1
    {topic5}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{topic3}
   |normalized:{topic3}
    {topic3}
  {empty_line:\\n}
  *paragraph C1
   {This is topic 5\\n}
  {empty_line:\\n}
  *15 @menu C5 topic_guide.texi:l68
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_comment C1
    *preformatted C2
     {More information\\n}
     {empty_line:\\n}
   *menu_entry C4 topic_guide.texi:l71
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide1}
    |normalized:{guide1}
     {guide1}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {guide 1\\n}
   *menu_entry C4 topic_guide.texi:l72
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{guide2}
    |normalized:{guide2}
     {guide2}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {guide 2\\n}
   *@end C1 topic_guide.texi:l73
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
 *16 @node C1 topic_guide.texi:l75 {guide2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E17]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E14]
 |menus:EC[E18]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{guide2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {guide2}
 *17 @chapter C6 topic_guide.texi:l76 {guide 2}
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
    {guide 2}
  {empty_line:\\n}
  *paragraph C1
   {This is the guide for an in depth use\\n}
  {empty_line:\\n}
  *18 @menu C4 topic_guide.texi:l80
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 topic_guide.texi:l81
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{topic5}
    |normalized:{topic5}
     {topic5}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {topic5 description\\n}
   *menu_entry C4 topic_guide.texi:l82
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{topic4}
    |normalized:{topic4}
     {topic4}
    {menu_entry_separator::: }
    *menu_entry_description C1
     *preformatted C1
      {topic4 description\\n}
   *@end C1 topic_guide.texi:l83
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
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'topic_guide'} = '\\input texinfo.tex

@node Top
@top A example quide topic collection

This is an example of guide/topic based manual inspired by the Mallard
format.

@menu
* guide1:: the easy way
* guide2:: the perillous way
@end menu

@node guide1
@chapter guide 1

This is the guide for an easy use.

@menu
* topic1:: topic1 description
* topic2:: topic2 description
* topic5:: topic5 description
@end menu

@node topic1, topic2

This is topic 1.

@menu
More information

* guide1:: guide 1
@end menu

@node topic2, topic3, topic1

This is topic 2

@menu
More information

* guide1:: guide 1
@end menu

@node topic3, topic5, topic2

This is topic 3

@menu
More information

@end menu

@node topic4

This is topic 4

@menu
More information

* guide2:: guide 2
@end menu

@node topic5, , topic3

This is topic 5

@menu
More information

* guide1:: guide 1
* guide2:: guide 2
@end menu

@node guide2
@chapter guide 2

This is the guide for an in depth use

@menu
* topic5:: topic5 description
* topic4:: topic4 description
@end menu

@bye
';


$result_texts{'topic_guide'} = 'A example quide topic collection
********************************

This is an example of guide/topic based manual inspired by the Mallard
format.

* guide1:: the easy way
* guide2:: the perillous way

1 guide 1
*********

This is the guide for an easy use.

* topic1:: topic1 description
* topic2:: topic2 description
* topic5:: topic5 description


This is topic 1.

More information

* guide1:: guide 1


This is topic 2

More information

* guide1:: guide 1


This is topic 3

More information



This is topic 4

More information

* guide2:: guide 2


This is topic 5

More information

* guide1:: guide 1
* guide2:: guide 2

2 guide 2
*********

This is the guide for an in depth use

* topic5:: topic5 description
* topic4:: topic4 description

';

$result_sectioning{'topic_guide'} = {
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
                    'normalized' => 'guide1'
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
                    'normalized' => 'guide2'
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
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'topic_guide'};

$result_nodes{'topic_guide'} = [
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
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'guide2'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'guide1'
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
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'node_directions' => {
                          'prev' => {}
                        },
                        'normalized' => 'topic5'
                      }
                    },
                    'prev' => {}
                  },
                  'normalized' => 'topic3'
                }
              },
              'prev' => {}
            },
            'normalized' => 'topic2'
          }
        }
      },
      'normalized' => 'topic1'
    }
  },
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'topic4'
    }
  },
  {},
  {}
];
$result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'topic_guide'}[0];
$result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[0];
$result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'topic_guide'}[0];
$result_nodes{'topic_guide'}[1] = $result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[2];
$result_nodes{'topic_guide'}[3] = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[4] = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[5]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[5]{'extra'}{'node_directions'}{'up'} = $result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[6] = $result_nodes{'topic_guide'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'topic_guide'}[7] = $result_nodes{'topic_guide'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'topic_guide'} = [
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
              'prev' => {},
              'up' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'menus' => [
                          {}
                        ],
                        'normalized' => 'topic4'
                      }
                    },
                    'prev' => {
                      'extra' => {
                        'menu_directions' => {
                          'next' => {},
                          'prev' => {
                            'extra' => {
                              'menu_directions' => {
                                'next' => {},
                                'up' => {}
                              },
                              'menus' => [
                                {}
                              ],
                              'normalized' => 'topic1'
                            }
                          },
                          'up' => {}
                        },
                        'menus' => [
                          {}
                        ],
                        'normalized' => 'topic2'
                      }
                    },
                    'up' => {}
                  },
                  'menus' => [
                    {}
                  ],
                  'normalized' => 'topic5'
                }
              }
            },
            'menus' => [
              {}
            ],
            'normalized' => 'guide2'
          }
        },
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'guide1'
    }
  },
  {},
  {},
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'topic3'
    }
  },
  {},
  {},
  {}
];
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'topic_guide'}[1];
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'next'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'topic_guide'}[1];
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'topic_guide'}[1];
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'topic_guide'}[2] = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'topic_guide'}[3] = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'prev'};
$result_menus{'topic_guide'}[5] = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'topic_guide'}[6] = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'};
$result_menus{'topic_guide'}[7] = $result_menus{'topic_guide'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'topic_guide'} = [];


$result_floats{'topic_guide'} = {};


1;
