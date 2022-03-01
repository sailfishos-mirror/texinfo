use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'novalidate_empty_refs'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'novalidate',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => ':',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => ''
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
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
                              'parent' => {},
                              'text' => ' '
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '-'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
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
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'cmdname' => '
',
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => '-'
          }
        ],
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'cmdname' => ':',
              'parent' => {}
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
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => ''
          }
        ],
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 10,
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
                      'parent' => {},
                      'text' => ' '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
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
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => '-'
          }
        ],
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'novalidate_empty_refs'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[0]{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'};
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[1];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[1]{'parent'} = $result_trees{'novalidate_empty_refs'};
$result_trees{'novalidate_empty_refs'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[2]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[2];
$result_trees{'novalidate_empty_refs'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[2]{'parent'} = $result_trees{'novalidate_empty_refs'};
$result_trees{'novalidate_empty_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[3]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[3];
$result_trees{'novalidate_empty_refs'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[3]{'parent'} = $result_trees{'novalidate_empty_refs'};
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'novalidate_empty_refs'}{'contents'}[4];
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'novalidate_empty_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'novalidate_empty_refs'}{'contents'}[4]{'parent'} = $result_trees{'novalidate_empty_refs'};

$result_texis{'novalidate_empty_refs'} = '
@novalidate

@node Top

@xref{@:}.
@xref{@asis{ }}.

@node @
@node @:
@node @asis{ }
';


$result_texts{'novalidate_empty_refs'} = '


.
 .

';

$result_nodes{'novalidate_empty_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'novalidate_empty_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'novalidate_empty_refs'} = [
  {
    'error_line' => 'empty node name after expansion `@
\'
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty node name after expansion `@
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@:\'
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'empty node name after expansion `@:\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@asis{ }\'
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty node name after expansion `@asis{ }\'',
    'type' => 'error'
  }
];


$result_floats{'novalidate_empty_refs'} = {};



$result_converted{'info'}->{'novalidate_empty_refs'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

*Note ::.  *Note ::.



Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
