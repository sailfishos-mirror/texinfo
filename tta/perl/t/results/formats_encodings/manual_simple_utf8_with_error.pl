use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'manual_simple_utf8_with_error'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo.tex\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 manual_simple_utf8_with_error.texi:l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 manual_simple_utf8_with_error.texi:l4
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4]
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
    {Testé}
  {empty_line:\\n}
 *2 @node C2 manual_simple_utf8_with_error.texi:l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{_00e9sseul_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {ésseulé}
  {empty_line:\\n}
 *3 @node C1 manual_simple_utf8_with_error.texi:l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{Chapitr_00e9}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapitré}
 *4 @chapter C4 manual_simple_utf8_with_error.texi:l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapitré}
  {empty_line:\\n}
  *5 @value C1
   *brace_container C1
    {non_connùe}
  {\\n}
';


$result_texis{'manual_simple_utf8_with_error'} = '\\input texinfo.tex

@node Top
@top Testé

@node ésseulé

@node Chapitré
@chapter Chapitré

@value{non_connùe}
';


$result_texts{'manual_simple_utf8_with_error'} = 'Testé
*****


1 Chapitré
**********

non_connùe
';

$result_sectioning{'manual_simple_utf8_with_error'} = {
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
                    'normalized' => 'Chapitr_00e9'
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
$result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0];
$result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0];
$result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0];
$result_sectioning{'manual_simple_utf8_with_error'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'manual_simple_utf8_with_error'};

$result_nodes{'manual_simple_utf8_with_error'} = [
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
            'normalized' => 'Chapitr_00e9'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => '_00e9sseul_00e9'
    }
  },
  {}
];
$result_nodes{'manual_simple_utf8_with_error'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'manual_simple_utf8_with_error'}[0];
$result_nodes{'manual_simple_utf8_with_error'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'manual_simple_utf8_with_error'}[0];
$result_nodes{'manual_simple_utf8_with_error'}[2] = $result_nodes{'manual_simple_utf8_with_error'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'manual_simple_utf8_with_error'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => '_00e9sseul_00e9'
    }
  },
  {
    'extra' => {
      'normalized' => 'Chapitr_00e9'
    }
  }
];

$result_errors{'manual_simple_utf8_with_error'} = [
  {
    'error_line' => "warning: undefined flag: non_conn\x{f9}e
",
    'file_name' => 'manual_simple_utf8_with_error.texi',
    'line_nr' => 11,
    'text' => "undefined flag: non_conn\x{f9}e",
    'type' => 'warning'
  },
  {
    'error_line' => "warning: node `\x{e9}sseul\x{e9}' unreferenced
",
    'file_name' => 'manual_simple_utf8_with_error.texi',
    'line_nr' => 6,
    'text' => "node `\x{e9}sseul\x{e9}' unreferenced",
    'type' => 'warning'
  }
];


$result_floats{'manual_simple_utf8_with_error'} = {};


1;
