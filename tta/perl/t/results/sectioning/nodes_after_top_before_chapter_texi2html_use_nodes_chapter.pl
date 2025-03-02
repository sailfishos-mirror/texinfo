use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  *paragraph C1
   {Top node\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{second node}
    |normalized:{second-node}
     {second node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{third node}
    |normalized:{third-node}
     {third node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
 *2 @node C4 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E3|up->E0]
 |node_directions:D[next->E3|prev->E0|up->E0]
 |normalized:{second-node}
  *arguments_line C4
   *line_arg C1
    {second node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{third node}
   |normalized:{third-node}
    {third node}
   *line_arg C1
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
  *paragraph C1
   {second node\\n}
  {empty_line:\\n}
 *3 @node C1 l12
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[prev->E2|up->E0]
 |normalized:{third-node}
  *arguments_line C4
   *line_arg C1
    {third node}
   *line_arg
   *line_arg C1
   |EXTRA
   |node_content:{second node}
   |normalized:{second-node}
    {second node}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
 *4 @chapter C1 l13
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_level:{1}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E4]
  ||section_level:{0}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
';


$result_texis{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = '@node Top
Top node
@menu
* second node::
* third node::
@end menu

@node second node, third node,Top,Top

second node

@node third node,,second node,Top
@chapter chapter
';


$result_texts{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = 'Top node
* second node::
* third node::


second node

1 chapter
*********
';

$result_sectioning{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'third-node'
            }
          },
          'section_level' => 1,
          'section_number' => '1',
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'};

$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = [
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
                  'normalized' => 'third-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'second-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0];
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0];
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0];
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1] = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[2] = $result_nodes{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = [
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
              'up' => {}
            },
            'normalized' => 'third-node'
          }
        },
        'up' => {}
      },
      'normalized' => 'second-node'
    }
  },
  {}
];
$result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1];
$result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0];
$result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[0];
$result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[2] = $result_menus{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = [];


$result_floats{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = {};


$result_converted_errors{'file_html'}->{'nodes_after_top_before_chapter_texi2html_use_nodes_chapter'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'file_name' => 'nodes_after_top_before_chapter_texi2html_use_nodes_chapter.texi',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
