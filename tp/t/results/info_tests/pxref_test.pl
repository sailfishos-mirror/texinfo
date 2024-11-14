use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'pxref_test'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Hey ('
            },
            {
              'cmdname' => 'pxref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'm'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'text' => 'in pxref'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ') and continue ('
            },
            {
              'cmdname' => 'pxref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'm'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'text' => 'in pxref'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'name'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ') and end.
'
            },
            {
              'cmdname' => 'pxref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'm'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'text' => 'n'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => 'pxref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'm'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'text' => 'n'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'name'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[4];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[4];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'contents'}[1];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[5]{'contents'}[0]{'contents'}[4];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'contents'}[1];
$result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'pxref_test'}{'contents'}[1]{'contents'}[2]{'contents'}[7]{'contents'}[0]{'contents'}[4];

$result_texis{'pxref_test'} = '@node Top

Hey (@pxref{(m) in pxref}) and continue (@pxref{(m) in pxref, name}) and end.
@pxref{(m) n}. @pxref{(m) n, name}.
';


$result_texts{'pxref_test'} = '
Hey ((m) in pxref) and continue ((m) in pxref) and end.
(m) n. (m) n.
';

$result_nodes{'pxref_test'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'pxref_test'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'pxref_test'} = [];


$result_floats{'pxref_test'} = {};



$result_converted{'info'}->{'pxref_test'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

Hey (*note (m) in pxref::) and continue (*note name: (m) in pxref.) and
end.  *note (m) n::.  *note name: (m) n.


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
