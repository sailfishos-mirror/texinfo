use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'documentation_examples'} = {
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'someone'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'example.com'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'me'
                        }
                      ],
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'email',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in--title'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sansserif',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
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
                    'line_nr' => 2,
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
          'cmdname' => 'settitle',
          'extra' => {
            'spaces_before_argument' => ' '
          },
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
                      'parent' => {},
                      'text' => 'in--text'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sansserif',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '-',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' p--n. '
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
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'my node'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'my node'
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
                        'normalized' => 'my-node'
                      }
                    ],
                    'normalized' => 'my-node',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'my-node'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in titlefont'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'titlefont',
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
          'text' => '
'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'b.c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'someone'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
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
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in--math'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'sansserif',
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
                      'text' => ' '
                    },
                    {
                      'cmdname' => '-',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' a=b '
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
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
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
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in--example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sansserif',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 14,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '-',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' c. '
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
                    'line_nr' => 14,
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
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
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
',
          'type' => 'empty_line'
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
    {}
  ],
  'type' => 'document_root'
};
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'};
$result_trees{'documentation_examples'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'};
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'};
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'}{'parent'} = $result_trees{'documentation_examples'};
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[2];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[4];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'documentation_examples'}{'contents'}[1];
$result_trees{'documentation_examples'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'documentation_examples'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'documentation_examples'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentation_examples'}{'contents'}[1]{'parent'} = $result_trees{'documentation_examples'};
$result_trees{'documentation_examples'}{'contents'}[2] = $result_trees{'documentation_examples'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'extra'}{'label'};

$result_texis{'documentation_examples'} = '
@settitle @email{someone@@example.com, me} @sansserif{in--title} @error{}

@node Top

@sansserif{in--text} @- p--n. @error{}
@xref{my node}@footnote{in footnote}.
@titlefont{in titlefont}
@email{a@@b.c, someone}

@math{@sansserif{in--math} @- a=b @error{}}

@example
@sansserif{in--example} @- c. @error{}
@end example


@node my node

';


$result_texts{'documentation_examples'} = '


in-text  p-n. error-->
my node.
in titlefont
someone

in--math  a=b error-->

in--example  c. error-->



';

$result_nodes{'documentation_examples'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'my-node'
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'documentation_examples'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'documentation_examples'};

$result_menus{'documentation_examples'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'documentation_examples'} = [];


$result_floats{'documentation_examples'} = {};


1;
