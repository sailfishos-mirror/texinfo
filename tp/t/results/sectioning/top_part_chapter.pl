use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'top_part_chapter'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {},
        'type' => 'before_node_section'
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'top'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'top',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 1,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {},
    'type' => 'unit'
  },
  {
    'contents' => [
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'part'
              }
            ],
            'extra' => {
              'spaces_after_argument' => '
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'part',
        'contents' => [
          {
            'parent' => {},
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 0
        }
      },
      {
        'args' => [
          {
            'contents' => [
              {
                'parent' => {},
                'text' => 'chapter'
              }
            ],
            'extra' => {
              'spaces_after_argument' => ' 
'
            },
            'parent' => {},
            'type' => 'line_arg'
          }
        ],
        'cmdname' => 'chapter',
        'contents' => [],
        'extra' => {
          'associated_part' => {},
          'spaces_before_argument' => ' '
        },
        'line_nr' => {
          'file_name' => '',
          'line_nr' => 5,
          'macro' => ''
        },
        'parent' => {},
        'structure' => {
          'level' => 1,
          'number' => 1
        }
      }
    ],
    'extra' => {
      'section' => {},
      'unit_command' => {}
    },
    'structure' => {
      'unit_prev' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'top_part_chapter'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[0];
$result_trees{'top_part_chapter'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'top_part_chapter'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1];
$result_trees{'top_part_chapter'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1];
$result_trees{'top_part_chapter'}[0]{'contents'}[1]{'parent'} = $result_trees{'top_part_chapter'}[0];
$result_trees{'top_part_chapter'}[0]{'extra'}{'section'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1];
$result_trees{'top_part_chapter'}[0]{'extra'}{'unit_command'} = $result_trees{'top_part_chapter'}[0]{'contents'}[1];
$result_trees{'top_part_chapter'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'top_part_chapter'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1]{'contents'}[0];
$result_trees{'top_part_chapter'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1]{'contents'}[0];
$result_trees{'top_part_chapter'}[1]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1];
$result_trees{'top_part_chapter'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'top_part_chapter'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'top_part_chapter'}[1]{'contents'}[1];
$result_trees{'top_part_chapter'}[1]{'contents'}[1]{'extra'}{'associated_part'} = $result_trees{'top_part_chapter'}[1]{'contents'}[0];
$result_trees{'top_part_chapter'}[1]{'contents'}[1]{'parent'} = $result_trees{'top_part_chapter'}[1];
$result_trees{'top_part_chapter'}[1]{'extra'}{'section'} = $result_trees{'top_part_chapter'}[1]{'contents'}[1];
$result_trees{'top_part_chapter'}[1]{'extra'}{'unit_command'} = $result_trees{'top_part_chapter'}[1]{'contents'}[1];
$result_trees{'top_part_chapter'}[1]{'structure'}{'unit_prev'} = $result_trees{'top_part_chapter'}[0];

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
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'section_up' => {},
      'structure' => {
        'level' => 0
      }
    },
    {
      'cmdname' => 'part',
      'extra' => {
        'part_associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_part' => {},
            'spaces_before_argument' => ' '
          },
          'section_up' => {},
          'structure' => {
            'level' => 1,
            'number' => 1
          },
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        'spaces_before_argument' => ' '
      },
      'section_childs' => [
        {}
      ],
      'section_prev' => {},
      'section_up' => {},
      'structure' => {
        'level' => 0
      }
    }
  ],
  'structure' => {
    'level' => -1
  }
};
$result_sectioning{'top_part_chapter'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'top_part_chapter'};
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'top_part_chapter'}{'section_childs'}[1];
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'section_up'} = $result_sectioning{'top_part_chapter'}{'section_childs'}[1];
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'toplevel_prev'} = $result_sectioning{'top_part_chapter'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'toplevel_up'} = $result_sectioning{'top_part_chapter'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'section_childs'}[0] = $result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'section_prev'} = $result_sectioning{'top_part_chapter'}{'section_childs'}[0];
$result_sectioning{'top_part_chapter'}{'section_childs'}[1]{'section_up'} = $result_sectioning{'top_part_chapter'};

$result_errors{'top_part_chapter'} = [];


$result_floats{'top_part_chapter'} = {};


$result_elements{'top_part_chapter'} = [
  {
    'extra' => {
      'section' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 0
        }
      },
      'unit_command' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {
          'extra' => {
            'section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_part' => {
                  'cmdname' => 'part',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'structure' => {
                    'level' => 0
                  }
                },
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'level' => 1,
                'number' => 1
              }
            },
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'Back' => {},
              'FastBack' => {},
              'This' => {}
            }
          },
          'type' => 'unit'
        },
        'Forward' => {},
        'Next' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'top_part_chapter'}[0]{'extra'}{'unit_command'} = $result_elements{'top_part_chapter'}[0]{'extra'}{'section'};
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'top_part_chapter'}[0];
$result_elements{'top_part_chapter'}[1] = $result_elements{'top_part_chapter'}[0]{'structure'}{'directions'}{'FastForward'};



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
