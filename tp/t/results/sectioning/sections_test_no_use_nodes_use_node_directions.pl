use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sections_test_no_use_nodes_use_node_directions'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
      'parent' => {}
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
              'text' => 'section'
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
              'text' => 'subsection'
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
      'cmdname' => 'subsection',
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
        'line_nr' => 7,
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
              'text' => 'subsubsection'
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
      'cmdname' => 'subsubsection',
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
        'line_nr' => 9,
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
        'line_nr' => 11,
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
              'text' => 'chapter in part'
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
        'associated_part' => {},
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 13,
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
              'text' => 'second chapter in part'
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
        'line_nr' => 15,
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
              'text' => 'unnumbered'
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
      'cmdname' => 'unnumbered',
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
        'line_nr' => 17,
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
              'text' => 'appendix'
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
      'cmdname' => 'appendix',
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
        'line_nr' => 19,
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
              'text' => 'appendixsec'
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
      'cmdname' => 'appendixsec',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 21,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[1]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[2]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[3]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[4]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[5]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'extra'}{'associated_part'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[6];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[7]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[8]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[9]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[10]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[11]{'args'}[0];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[11];
$result_trees{'sections_test_no_use_nodes_use_node_directions'}{'contents'}[11]{'parent'} = $result_trees{'sections_test_no_use_nodes_use_node_directions'};

$result_texis{'sections_test_no_use_nodes_use_node_directions'} = '@top top

@chapter chapter

@section section

@subsection subsection

@subsubsection subsubsection

@part part

@chapter chapter in part

@chapter second chapter in part

@unnumbered unnumbered

@appendix appendix

@appendixsec appendixsec
';


$result_texts{'sections_test_no_use_nodes_use_node_directions'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

part
****

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============
';

$result_sectioning{'sections_test_no_use_nodes_use_node_directions'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {},
                    'structure' => {
                      'section_childs' => [
                        {
                          'cmdname' => 'subsection',
                          'extra' => {},
                          'structure' => {
                            'section_childs' => [
                              {
                                'cmdname' => 'subsubsection',
                                'extra' => {},
                                'structure' => {
                                  'section_level' => 4,
                                  'section_number' => '1.1.1.1',
                                  'section_up' => {}
                                }
                              }
                            ],
                            'section_level' => 3,
                            'section_number' => '1.1.1',
                            'section_up' => {}
                          }
                        }
                      ],
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  }
                ],
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {
            'cmdname' => 'chapter',
            'extra' => {
              'associated_part' => {}
            },
            'structure' => {
              'section_level' => 1,
              'section_number' => 2,
              'section_up' => {},
              'toplevel_prev' => {},
              'toplevel_up' => {}
            }
          }
        },
        'structure' => {
          'section_childs' => [
            {},
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 3,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'unnumbered',
              'extra' => {},
              'structure' => {
                'section_level' => 1,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_prev' => {},
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'appendix',
        'extra' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'appendixsec',
              'extra' => {},
              'structure' => {
                'section_level' => 2,
                'section_number' => 'A.1',
                'section_up' => {}
              }
            }
          ],
          'section_level' => 1,
          'section_number' => 'A',
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'extra'}{'associated_part'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'}{'structure'}{'toplevel_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[0] = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'extra'}{'part_associated_section'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'};
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[2];
$result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sections_test_no_use_nodes_use_node_directions'}{'structure'}{'section_childs'}[0];

$result_errors{'sections_test_no_use_nodes_use_node_directions'} = [];


$result_floats{'sections_test_no_use_nodes_use_node_directions'} = {};



$result_converted{'plaintext'}->{'sections_test_no_use_nodes_use_node_directions'} = 'top
***

1 chapter
*********

1.1 section
===========

1.1.1 subsection
----------------

1.1.1.1 subsubsection
.....................

2 chapter in part
*****************

3 second chapter in part
************************

unnumbered
**********

Appendix A appendix
*******************

A.1 appendixsec
===============

';


$result_converted{'html'}->{'sections_test_no_use_nodes_use_node_directions'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#top" rel="start" title="top">
<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">
<div class="top" id="top">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h1 class="top">top</h1>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<hr>
<div class="chapter" id="chapter">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter">1 chapter</h2>

<ul class="section-toc">
<li><a href="#section" accesskey="1">section</a></li>
</ul>
<hr>
<div class="section" id="section">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h3 class="section">1.1 section</h3>

<ul class="section-toc">
<li><a href="#subsection" accesskey="1">subsection</a></li>
</ul>
<hr>
<div class="subsection" id="subsection">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h4 class="subsection">1.1.1 subsection</h4>

<ul class="section-toc">
<li><a href="#subsubsection" accesskey="1">subsubsection</a></li>
</ul>
<hr>
<div class="subsubsection" id="subsubsection">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h4 class="subsubsection">1.1.1.1 subsubsection</h4>

<hr>
</div>
</div>
</div>
</div>
</div>
<div class="part" id="part">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#chapter-in-part" accesskey="1">chapter in part</a></li>
<li><a href="#second-chapter-in-part" accesskey="2">second chapter in part</a></li>
<li><a href="#unnumbered" accesskey="3">unnumbered</a></li>
</ul>
<div class="chapter" id="chapter-in-part">
<h2 class="chapter">2 chapter in part</h2>

<hr>
</div>
<div class="chapter" id="second-chapter-in-part">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter">3 second chapter in part</h2>

<hr>
</div>
<div class="unnumbered" id="unnumbered">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h2 class="unnumbered">unnumbered</h2>

<hr>
</div>
<div class="appendix" id="appendix">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h2 class="appendix">Appendix A appendix</h2>

<ul class="section-toc">
<li><a href="#appendixsec" accesskey="1">appendixsec</a></li>
</ul>
<hr>
<div class="appendixsec" id="appendixsec">
<div class="header">
<p>
 &nbsp; </p>
</div>
<h3 class="appendixsec">A.1 appendixsec</h3>
</div>
</div>
</div>



</body>
</html>
';

1;
