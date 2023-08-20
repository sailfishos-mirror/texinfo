use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_part_chapter'} = [
  {
    'contents' => [
      {
        'type' => 'before_node_section'
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'top'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'part'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => '
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'part',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'text' => 'chapter'
              }
            ],
            'info' => {
              'spaces_after_argument' => {
                'text' => ' 
'
              }
            },
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'extra' => {
          'associated_part' => {},
          'section_number' => 1
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'top_part_chapter'}[0]{'unit_command'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1];
$result_trees{'top_part_chapter'}[1]{'contents'}[1]{'extra'}{'associated_part'} = $result_trees{'top_part_chapter'}[1]{'contents'}[0];
$result_trees{'top_part_chapter'}[1]{'unit_command'} = $result_trees{'top_part_chapter'}[1]{'contents'}[1];

$result_texis{'top_part_chapter'} = '@top top

@part part

@chapter chapter 
';


$result_texts{'top_part_chapter'} = 'top
***

part
****

1 chapter
*********
';

$result_sectioning{'top_part_chapter'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_level' => 0
        },
        'structure' => {
          'associated_unit' => {
            'directions' => {
              'FastForward' => {
                'directions' => {
                  'Back' => {},
                  'FastBack' => {},
                  'This' => {}
                },
                'tree_unit_directions' => {
                  'prev' => {}
                },
                'type' => 'unit',
                'unit_command' => {
                  'cmdname' => 'chapter',
                  'extra' => {
                    'associated_part' => {
                      'cmdname' => 'part',
                      'extra' => {
                        'part_associated_section' => {},
                        'section_childs' => [
                          {}
                        ],
                        'section_level' => 0
                      },
                      'structure' => {
                        'associated_unit' => {},
                        'section_prev' => {},
                        'section_up' => {}
                      }
                    },
                    'section_level' => 1,
                    'section_number' => 1
                  },
                  'structure' => {
                    'associated_unit' => {},
                    'section_up' => {},
                    'toplevel_prev' => {},
                    'toplevel_up' => {}
                  }
                }
              },
              'Forward' => {},
              'Next' => {},
              'This' => {}
            },
            'tree_unit_directions' => {
              'next' => {}
            },
            'type' => 'unit',
            'unit_command' => {}
          },
          'section_up' => {}
        }
      },
      {}
    ],
    'section_level' => -1
  },
  'structure' => {}
};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'directions'}{'This'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'tree_unit_directions'}{'prev'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'part_associated_section'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'section_childs'}[0] = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'section_prev'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'section_up'} = $result_sectioning{'top_part_chapter'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'toplevel_up'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'Forward'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'Next'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'tree_unit_directions'}{'next'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'unit_command'} = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'top_part_chapter'};
$result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[1] = $result_sectioning{'top_part_chapter'}{'extra'}{'section_childs'}[0]{'structure'}{'associated_unit'}{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'};

$result_errors{'top_part_chapter'} = [];


$result_floats{'top_part_chapter'} = {};


$result_elements{'top_part_chapter'} = [
  {
    'directions' => {
      'FastForward' => {
        'directions' => {
          'Back' => {},
          'FastBack' => {},
          'This' => {}
        },
        'type' => 'unit',
        'unit_command' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {
              'cmdname' => 'part',
              'extra' => {},
              'structure' => {
                'associated_unit' => {}
              }
            },
            'section_number' => 1
          },
          'structure' => {
            'associated_unit' => {}
          }
        }
      },
      'Forward' => {},
      'Next' => {},
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'associated_unit' => {}
      }
    }
  },
  {}
];
$result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'}{'directions'}{'Back'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'}{'directions'}{'FastBack'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'}{'directions'}{'This'} = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'directions'}{'Forward'} = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'directions'}{'Next'} = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'directions'}{'This'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[0]{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[1] = $result_elements{'top_part_chapter'}[0]{'directions'}{'FastForward'};



$result_directions_text{'top_part_chapter'} = 'element: @top top
  FastForward: @chapter chapter
  Forward: @chapter chapter
  Next: @chapter chapter
  This: @top top
element: @chapter chapter
  Back: @top top
  FastBack: @top top
  This: @chapter chapter
';


$result_converted{'xml'}->{'top_part_chapter'} = '<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';

1;
