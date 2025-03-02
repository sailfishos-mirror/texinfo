use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'file_name_conflict_with_section'} = '*document_root C4
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  *2 @anchor C1 l3
  |EXTRA
  |is_target:{1}
  |normalized:{Chap}
   *brace_arg C1
    {Chap}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *3 @chapter C1 l5 {Chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
';


$result_texis{'file_name_conflict_with_section'} = '@node Top
@top top
@anchor{Chap}

@chapter Chap
';


$result_texts{'file_name_conflict_with_section'} = 'top
***

1 Chap
******
';

$result_sectioning{'file_name_conflict_with_section'} = {
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
$result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0];
$result_sectioning{'file_name_conflict_with_section'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'file_name_conflict_with_section'};

$result_nodes{'file_name_conflict_with_section'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'file_name_conflict_with_section'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'file_name_conflict_with_section'} = [];


$result_floats{'file_name_conflict_with_section'} = {};


$result_converted_errors{'file_html'}->{'file_name_conflict_with_section'} = [
  {
    'error_line' => 'warning: @anchor `Chap\' file Chap.html for redirection exists
',
    'line_nr' => 3,
    'text' => '@anchor `Chap\' file Chap.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with @chapter `Chap\' file
',
    'line_nr' => 5,
    'text' => 'conflict with @chapter `Chap\' file',
    'type' => 'warning'
  }
];


1;
