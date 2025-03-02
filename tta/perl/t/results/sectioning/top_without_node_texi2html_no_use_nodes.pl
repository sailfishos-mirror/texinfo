use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'top_without_node_texi2html_no_use_nodes'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *0 @top C3 l1 {top section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E2]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{-1}
 |toplevel_directions:D[next->E2]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *paragraph C1
   {Top section\\n}
  {empty_line:\\n}
 *1 @node C1 l4 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E2]
 |is_target:{1}
 |node_directions:D[up->MISSING: (line_arg)[C3]]
 |normalized:{second}
  *arguments_line C4
   *line_arg C1
    {second}
   *line_arg
   *line_arg
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *2 @chapter C3 l5 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E1]
 |section_directions:D[up->E0]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E0|up->E0]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *paragraph C1
   {Text of chapter\\n}
';


$result_texis{'top_without_node_texi2html_no_use_nodes'} = '@top top section
Top section

@node second,,,(dir)
@chapter Chapter

Text of chapter
';


$result_texts{'top_without_node_texi2html_no_use_nodes'} = 'top section
***********
Top section

1 Chapter
*********

Text of chapter
';

$result_sectioning{'top_without_node_texi2html_no_use_nodes'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'second'
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
$result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_without_node_texi2html_no_use_nodes'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'top_without_node_texi2html_no_use_nodes'};

$result_nodes{'top_without_node_texi2html_no_use_nodes'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'up' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'second'
    }
  }
];

$result_menus{'top_without_node_texi2html_no_use_nodes'} = [
  {
    'extra' => {
      'normalized' => 'second'
    }
  }
];

$result_errors{'top_without_node_texi2html_no_use_nodes'} = [];


$result_floats{'top_without_node_texi2html_no_use_nodes'} = {};


1;
