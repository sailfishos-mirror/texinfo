use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'filenameconflictwithspecialelement'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
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
 *1 @top C4 l2 {top}
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
    {top}
  {empty_line:\\n}
  *paragraph C2
   *2 @footnote C1 l4
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {a footnote}
   {\\n}
  {empty_line:\\n}
 *3 @node C1 l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *4 @chapter C7 l7 {chap}
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
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {Need 2 elements for separate footnotes.\\n}
  {empty_line:\\n}
  *5 @anchor C1 l11
  |EXTRA
  |is_target:{1}
  |normalized:{filenameconflictwithspecialelement-fot}
   *brace_arg C1
    {filenameconflictwithspecialelement fot}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
';


$result_texis{'filenameconflictwithspecialelement'} = '@node Top
@top top

@footnote{a footnote}

@node chap
@chapter chap

Need 2 elements for separate footnotes.

@anchor{filenameconflictwithspecialelement fot}

';


$result_texts{'filenameconflictwithspecialelement'} = 'top
***



1 chap
******

Need 2 elements for separate footnotes.


';

$result_sectioning{'filenameconflictwithspecialelement'} = {
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
$result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0];
$result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0];
$result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0];
$result_sectioning{'filenameconflictwithspecialelement'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'filenameconflictwithspecialelement'};

$result_nodes{'filenameconflictwithspecialelement'} = [
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
  {}
];
$result_nodes{'filenameconflictwithspecialelement'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'filenameconflictwithspecialelement'}[0];
$result_nodes{'filenameconflictwithspecialelement'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'filenameconflictwithspecialelement'}[0];
$result_nodes{'filenameconflictwithspecialelement'}[1] = $result_nodes{'filenameconflictwithspecialelement'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'filenameconflictwithspecialelement'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'filenameconflictwithspecialelement'} = [];


$result_floats{'filenameconflictwithspecialelement'} = {};


$result_converted_errors{'file_html'}->{'filenameconflictwithspecialelement'} = [
  {
    'error_line' => 'warning: @anchor `filenameconflictwithspecialelement fot\' file filenameconflictwithspecialelement-fot.html for redirection exists
',
    'line_nr' => 11,
    'text' => '@anchor `filenameconflictwithspecialelement fot\' file filenameconflictwithspecialelement-fot.html for redirection exists',
    'type' => 'warning'
  },
  {
    'continuation' => 1,
    'error_line' => 'warning: conflict with footnotes special element
',
    'text' => 'conflict with footnotes special element',
    'type' => 'warning'
  }
];


1;
