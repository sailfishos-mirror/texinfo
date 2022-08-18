use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'del_quote_linebreaking'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'first para
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'noxde'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
                }
              },
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'noxde'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'noxde'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
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
              'text' => '
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '%
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no:de'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no:de'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no:de'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'manual'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Manual'
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
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[8];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[3];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[4];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[4]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'contents'}[2]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'del_quote_linebreaking'}{'contents'}[0];
$result_trees{'del_quote_linebreaking'}{'contents'}[0]{'parent'} = $result_trees{'del_quote_linebreaking'};

$result_texis{'del_quote_linebreaking'} = 'first para

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{noxde,,, manual,Manual}

%

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx @xref{no:de,,, manual,Manual}

';


$result_texts{'del_quote_linebreaking'} = 'first para

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx noxde

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx noxde

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx noxde

%

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx no:de

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx no:de

xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx no:de

';

$result_errors{'del_quote_linebreaking'} = [];


$result_floats{'del_quote_linebreaking'} = {};



$result_converted{'plaintext'}->{'del_quote_linebreaking'} = 'first para

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note
(manual)noxde::

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note
(manual)noxde::

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note (manual)noxde::

   %

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note
(manual)no:de::

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note
(manual)no:de::

   xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx *Note (manual)no:de::

';

1;
