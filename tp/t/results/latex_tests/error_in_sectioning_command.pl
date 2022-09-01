use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'error_in_sectioning_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'error_in_sectioning_command.info'
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
              'cmdname' => 'setfilename',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'error_in_sectioning_command.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'contents',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
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
              'text' => 'Top'
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top section'
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'error'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' ('
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '): Indicating an Error Message'
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
          {},
          {},
          {},
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
              {},
              {},
              {}
            ],
            'normalized' => '_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message'
          }
        ],
        'normalized' => '_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'error'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' ('
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '): Indicating an Error Message'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Describe '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'};
$result_trees{'error_in_sectioning_command'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[1]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'error_in_sectioning_command'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'error_in_sectioning_command'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'};
$result_trees{'error_in_sectioning_command'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[2]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'};
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[3];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'node_content'}[1] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'node_content'}[2] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'node_content'}[3] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[2] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[3] = $result_trees{'error_in_sectioning_command'}{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'error_in_sectioning_command'}{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'};
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[2];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'error_in_sectioning_command'}{'contents'}[4];
$result_trees{'error_in_sectioning_command'}{'contents'}[4]{'parent'} = $result_trees{'error_in_sectioning_command'};

$result_texis{'error_in_sectioning_command'} = '@setfilename error_in_sectioning_command.info

@contents

@node Top
@top top section

@node @code{@@error@{@}} (@error{}): Indicating an Error Message
@chapter @code{@@error@{@}} (@error{}): Indicating an Error Message

Describe @error{}.
';


$result_texts{'error_in_sectioning_command'} = '

top section
***********

1 @error{} (error-->): Indicating an Error Message
**************************************************

Describe error-->.
';

$result_sectioning{'error_in_sectioning_command'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {}
          }
        },
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
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
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0];
$result_sectioning{'error_in_sectioning_command'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'error_in_sectioning_command'};

$result_nodes{'error_in_sectioning_command'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => '_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'error_in_sectioning_command'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'error_in_sectioning_command'};
$result_nodes{'error_in_sectioning_command'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'error_in_sectioning_command'};

$result_menus{'error_in_sectioning_command'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'error_in_sectioning_command'} = [];


$result_floats{'error_in_sectioning_command'} = {};



$result_converted{'latex_text'}->{'error_in_sectioning_command'} = '

\\begin{document}
\\tableofcontents\\newpage
\\label{anchor:Top}%
\\chapter{{\\texttt{@error\\{\\}} (\\texorpdfstring{\\fbox{error}}{error}): Indicating an Error Message}}
\\label{anchor:_0040error_007b_007d-_0028error_002d_002d_003e_0029_003a-Indicating-an-Error-Message}%

Describe \\fbox{error}.
';

1;
