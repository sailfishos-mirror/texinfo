use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nodes_before_after_top_xref'} = {
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
                      'text' => 'nodes_before_after_top_xref.info'
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
                'text_arg' => 'nodes_before_after_top_xref.info'
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
              'text' => 'node before'
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
              'parent' => {},
              'text' => 'In node before
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
            'normalized' => 'node-before'
          }
        ],
        'normalized' => 'node-before',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
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
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top sectionning'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in node Top
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
              'parent' => {},
              'text' => 'after'
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
              'parent' => {},
              'text' => 'in node after
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
            'normalized' => 'after'
          }
        ],
        'normalized' => 'after',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 12,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 16,
        'macro' => ''
      }
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
              'text' => 'in chap
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'on'
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'extra' => {
            'misc_args' => [
              'on'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'node before'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-before'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
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
                      'parent' => {},
                      'text' => 'after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'after'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'off'
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
          'cmdname' => 'xrefautomaticsectiontitle',
          'extra' => {
            'misc_args' => [
              'off'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'node before'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'node-before'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
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
                      'parent' => {},
                      'text' => 'after'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'after'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
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
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 17,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[2];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[3];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[3]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[4]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[5];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[5]{'parent'} = $result_trees{'nodes_before_after_top_xref'};
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[3]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[3];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'extra'}{'label'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'extra'}{'label'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[6]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'label'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[1];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'label'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[4];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'nodes_before_after_top_xref'}{'contents'}[6];
$result_trees{'nodes_before_after_top_xref'}{'contents'}[6]{'parent'} = $result_trees{'nodes_before_after_top_xref'};

$result_texis{'nodes_before_after_top_xref'} = '@setfilename nodes_before_after_top_xref.info

@node node before

In node before

@node Top
@top top sectionning

in node Top

@node after

in node after

@node chap
@chapter chap

in chap

@xrefautomaticsectiontitle on
@xref{node before}.
@xref{after}.

@xrefautomaticsectiontitle off
@xref{node before}.
@xref{after}.

';


$result_texts{'nodes_before_after_top_xref'} = '

In node before

top sectionning
***************

in node Top


in node after

1 chap
******

in chap

node before.
after.

node before.
after.

';

$result_sectioning{'nodes_before_after_top_xref'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0];
$result_sectioning{'nodes_before_after_top_xref'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'nodes_before_after_top_xref'};

$result_nodes{'nodes_before_after_top_xref'} = {
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
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'nodes_before_after_top_xref'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'nodes_before_after_top_xref'};
$result_nodes{'nodes_before_after_top_xref'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'nodes_before_after_top_xref'};

$result_menus{'nodes_before_after_top_xref'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'nodes_before_after_top_xref'} = [];


$result_floats{'nodes_before_after_top_xref'} = {};



$result_converted{'latex_text'}->{'nodes_before_after_top_xref'} = '
\\begin{document}
\\label{anchor:node-before}%

In node before

\\label{anchor:Top}%
\\label{anchor:after}%

in node after

\\chapter{{chap}}
\\label{anchor:chap}%

in chap

See \\hyperref[anchor:node-before]{\\chaptername~\\ref*{anchor:node-before} [top sectionning], page~\\pageref*{anchor:node-before}}.
See \\hyperref[anchor:after]{\\chaptername~\\ref*{anchor:after} [top sectionning], page~\\pageref*{anchor:after}}.

See \\hyperref[anchor:node-before]{\\chaptername~\\ref*{anchor:node-before} [node before], page~\\pageref*{anchor:node-before}}.
See \\hyperref[anchor:after]{\\chaptername~\\ref*{anchor:after} [after], page~\\pageref*{anchor:after}}.

';

1;
