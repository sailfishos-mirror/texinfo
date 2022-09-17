use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Cop. '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a in copying'
                            }
                          ],
                          'extra' => {
                            'region' => {}
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'anchor',
                      'extra' => {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'a-in-copying'
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
                      'text' => '. Ying.
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
                          'text' => 'copying'
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'copying'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                }
              ],
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
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'titlepage',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Manual'
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
                  'cmdname' => 'title',
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
                  'cmdname' => 'page',
                  'parent' => {}
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
                  'cmdname' => 'insertcopying',
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
                          'parent' => {},
                          'text' => 'titlepage'
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'titlepage'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
                }
              ],
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Chapter'
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
            'normalized' => 'Chapter'
          }
        ],
        'normalized' => 'Chapter',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 15,
        'macro' => ''
      }
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
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a in copying'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'pxref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-in-copying'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 20,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a in copying'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'pxref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'a-in-copying'
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
              'text' => '
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
        'line_nr' => 16,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'region'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'};
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'};
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[2]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'};
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[3]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'};
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[3];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'label'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4];
$result_trees{'anchor_in_copying_insertcopying_titlepage_chap'}{'contents'}[4]{'parent'} = $result_trees{'anchor_in_copying_insertcopying_titlepage_chap'};

$result_texis{'anchor_in_copying_insertcopying_titlepage_chap'} = '@copying
Cop. @anchor{a in copying}. Ying.
@end copying

@titlepage
@title Manual

@page
@insertcopying
@end titlepage

@node Top
@top top

@node Chapter
@chapter Chap

@pxref{a in copying}

@insertcopying

@pxref{a in copying}
';


$result_texts{'anchor_in_copying_insertcopying_titlepage_chap'} = '

top
***

1 Chap
******

a in copying


a in copying
';

$result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'} = {
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
                    'normalized' => 'Chapter'
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
$result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0];
$result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'anchor_in_copying_insertcopying_titlepage_chap'};

$result_nodes{'anchor_in_copying_insertcopying_titlepage_chap'} = {
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
        'normalized' => 'Chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'anchor_in_copying_insertcopying_titlepage_chap'};
$result_nodes{'anchor_in_copying_insertcopying_titlepage_chap'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'anchor_in_copying_insertcopying_titlepage_chap'};

$result_menus{'anchor_in_copying_insertcopying_titlepage_chap'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'anchor_in_copying_insertcopying_titlepage_chap'} = [];


$result_floats{'anchor_in_copying_insertcopying_titlepage_chap'} = {};



$result_converted{'latex_text'}->{'anchor_in_copying_insertcopying_titlepage_chap'} = '

\\begin{document}

\\frontmatter
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Manual}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt

\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\newpage{}%
\\phantom{blabla}%
Cop. \\label{anchor:a-in-copying}%
. Ying.
\\end{titlepage}
\\pagestyle{single}%
\\mainmatter
\\label{anchor:Top}%
\\chapter{{Chap}}
\\label{anchor:Chapter}%

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}

Cop. \\label{anchor:a-in-copying}%
. Ying.

see \\hyperref[anchor:a-in-copying]{[a in copying], page~\\pageref*{anchor:a-in-copying}}
';

1;
