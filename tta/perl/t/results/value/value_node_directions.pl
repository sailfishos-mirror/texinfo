use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'value_node_directions'} = '*document_root C7
 *before_node_section C2
  *@set C2
  |INFO
  |arg_line:{ a--foo bar\\n}
   {rawline_arg:a--foo}
   {rawline_arg:bar}
  {empty_line:\\n}
 *0 @node C1 l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2|prev->MISSING: (line_arg)[C3]|up->MISSING: (line_arg)[C3]]
 |normalized:{Top}
  *arguments_line C4
   *line_arg C1
    {Top}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;1><p:1>{bar}
     |>*@value C1
      |>*brace_container C1
       |>{a--foo}
   |EXTRA
   |node_content:{bar}
   |normalized:{bar}
    {bar}
    >SOURCEMARKS
    >value_expansion<end;1><p:3>
   *line_arg C3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *1 @top C3 l4 {Var bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E5]
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
    {Var bar}
    >SOURCEMARKS
    >value_expansion<start;2><p:4>{bar}
     >*@value C1
      >*brace_container C1
       >{a--foo}
    >value_expansion<end;2><p:7>
  *paragraph C1
   {bar\\n}
   >SOURCEMARKS
   >value_expansion<start;3>{bar}
    >*@value C1
     >*brace_container C1
      >{a--foo}
   >value_expansion<end;3><p:3>
  {empty_line:\\n}
 *2 @node C1 l7 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
  |>SOURCEMARKS
  |>value_expansion<start;4><p:1>{bar}
   |>*@value C1
    |>*brace_container C1
     |>{a--foo}
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E4|prev->E0|up->MISSING: (line_arg)[C3]]
 |normalized:{bar}
  *arguments_line C4
   *line_arg C1
    {bar}
    >SOURCEMARKS
    >value_expansion<end;4><p:3>
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{BarFoo}
   |normalized:{BarFoo}
    {BarFoo}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *3 @chapter C2 l8 {BarFoo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E5|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E5|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {BarFoo}
  {empty_line:\\n}
 *4 @node C1 l10 {BarFoo}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[prev->E2|up->MISSING: (line_arg)[C3]]
 |normalized:{BarFoo}
  *arguments_line C4
   *line_arg C1
    {BarFoo}
   *line_arg
   |INFO
   |spaces_before_argument:
    |{ }
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    |>SOURCEMARKS
    |>value_expansion<start;5><p:1>{bar}
     |>*@value C1
      |>*brace_container C1
       |>{a--foo}
   |EXTRA
   |node_content:{bar}
   |normalized:{bar}
    {bar}
    >SOURCEMARKS
    >value_expansion<end;5><p:3>
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{dir}
    {(}
    {dir}
    {)}
 *5 @chapter C1 l11 {bar}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bar}
';


$result_texis{'value_node_directions'} = '@set a--foo bar

@node Top, bar, (dir), (dir)
@top Var bar
bar

@node bar, BarFoo, Top, (dir)
@chapter BarFoo

@node BarFoo, , bar, (dir)
@chapter bar
';


$result_texts{'value_node_directions'} = '
Var bar
*******
bar

1 BarFoo
********

2 bar
*****
';

$result_sectioning{'value_node_directions'} = {
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
                    'normalized' => 'bar'
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
                    'normalized' => 'BarFoo'
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
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_node_directions'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'value_node_directions'};

$result_nodes{'value_node_directions'} = [
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
                    'up' => {
                      'extra' => {
                        'manual_content' => {}
                      },
                      'type' => 'line_arg'
                    }
                  },
                  'normalized' => 'BarFoo'
                }
              },
              'prev' => {},
              'up' => {
                'extra' => {
                  'manual_content' => {}
                },
                'type' => 'line_arg'
              }
            },
            'normalized' => 'bar'
          }
        },
        'prev' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'up' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'value_node_directions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_node_directions'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'value_node_directions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_node_directions'}[0];
$result_nodes{'value_node_directions'}[1] = $result_nodes{'value_node_directions'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'value_node_directions'}[2] = $result_nodes{'value_node_directions'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'value_node_directions'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'bar'
    }
  },
  {
    'extra' => {
      'normalized' => 'BarFoo'
    }
  }
];

$result_errors{'value_node_directions'} = [
  {
    'error_line' => 'warning: node `bar\' not in menu
',
    'line_nr' => 7,
    'text' => 'node `bar\' not in menu',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `BarFoo\' not in menu
',
    'line_nr' => 10,
    'text' => 'node `BarFoo\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'value_node_directions'} = {};


1;
