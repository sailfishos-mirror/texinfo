use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'between_node_and_section'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chap'
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
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec1'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'sec1'
          }
        ],
        'normalized' => 'sec1',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec1'
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
      'cmdname' => 'section',
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
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec2'
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
      'cmdname' => 'node',
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Old name'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'contents' => [],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'Old-name'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_spaces_after_close_brace'
        }
      ],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'sec2'
          }
        ],
        'normalized' => 'sec2',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec2'
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
      'cmdname' => 'section',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'between_node_and_section'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[1]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[1];
$result_trees{'between_node_and_section'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[1]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[2]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[2];
$result_trees{'between_node_and_section'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[2];
$result_trees{'between_node_and_section'}{'contents'}[2]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[3]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[3];
$result_trees{'between_node_and_section'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[3]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[4]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[4];
$result_trees{'between_node_and_section'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[4];
$result_trees{'between_node_and_section'}{'contents'}[4]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5];
$result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5];
$result_trees{'between_node_and_section'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[5];
$result_trees{'between_node_and_section'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'between_node_and_section'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'between_node_and_section'}{'contents'}[5]{'parent'} = $result_trees{'between_node_and_section'};
$result_trees{'between_node_and_section'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[6]{'args'}[0];
$result_trees{'between_node_and_section'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'between_node_and_section'}{'contents'}[6];
$result_trees{'between_node_and_section'}{'contents'}[6]{'parent'} = $result_trees{'between_node_and_section'};

$result_texis{'between_node_and_section'} = '
@node chap
@chapter Chap

@node sec1
@section sec1

@node sec2
@anchor{Old name}
@section sec2
';


$result_texts{'between_node_and_section'} = '
1 Chap
******

1.1 sec1
========

1.2 sec2
========
';

$result_sectioning{'between_node_and_section'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'chap'
            }
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'section',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'sec1'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 2,
                'section_number' => '1.1',
                'section_up' => {}
              }
            },
            {
              'cmdname' => 'section',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'sec2'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 2,
                'section_number' => '1.2',
                'section_prev' => {},
                'section_up' => {}
              }
            }
          ],
          'section_level' => 1,
          'section_number' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0];
$result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0];
$result_sectioning{'between_node_and_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'between_node_and_section'};

$result_nodes{'between_node_and_section'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'chapter',
      'extra' => {},
      'structure' => {
        'section_number' => 1
      }
    },
    'normalized' => 'chap'
  }
};

$result_menus{'between_node_and_section'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'chap'
  }
};

$result_errors{'between_node_and_section'} = [];


$result_floats{'between_node_and_section'} = {};



$result_converted{'docbook'}->{'between_node_and_section'} = '
<chapter label="1" id="chap">
<title>Chap</title>

<sect1 label="1.1" id="sec1">
<title>sec1</title>

</sect1>
<sect1 label="1.2" id="sec2">
<title>sec2</title>
<anchor id="Old-name"/></sect1>
</chapter>
';

1;
