use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_example_and_comment'} = {
  'contents' => [
    {
      'contents' => [
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
                  'parent' => {},
                  'text' => 'First line 0 '
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
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      '
'
                    ]
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
                      'parent' => {},
                      'text' => 'Nested example
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
                    'line_nr' => 5,
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
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In first one
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
                'line_nr' => 7,
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
                  'parent' => {},
                  'text' => 'First line 1 '
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
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      '
'
                    ]
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
                      'parent' => {},
                      'text' => 'Nested example '
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
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          '
'
                        ]
                      },
                      'parent' => {}
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
                    'line_nr' => 13,
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
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In first one
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
            'line_nr' => 9,
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
                  'parent' => {},
                  'text' => 'First line 2 '
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
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      '
'
                    ]
                  },
                  'parent' => {}
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
                      'parent' => {},
                      'text' => 'Nested example '
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
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          '
'
                        ]
                      },
                      'parent' => {}
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
                    'line_nr' => 21,
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
                'line_nr' => 19,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In first one '
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
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      '
'
                    ]
                  },
                  'parent' => {}
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
                'line_nr' => 23,
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
            'line_nr' => 17,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'contents'}[3];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_example_and_comment'}{'contents'}[0];
$result_trees{'nested_example_and_comment'}{'contents'}[0]{'parent'} = $result_trees{'nested_example_and_comment'};

$result_texis{'nested_example_and_comment'} = '@example
First line 0 @c
@example
Nested example
@end example
In first one
@end example

@example
First line 1 @c
@example
Nested example @c
@end example
In first one
@end example

@example
First line 2 @c
@example
Nested example @c
@end example
In first one @c
@end example
';


$result_texts{'nested_example_and_comment'} = 'First line 0 Nested example
In first one

First line 1 Nested example In first one

First line 2 Nested example In first one ';

$result_errors{'nested_example_and_comment'} = [];


$result_floats{'nested_example_and_comment'} = {};



$result_converted{'plaintext'}->{'nested_example_and_comment'} = '     First line 0
          Nested example
     In first one

     First line 1
          Nested example
     In first one

     First line 2
          Nested example
     In first one
';


$result_converted{'html_text'}->{'nested_example_and_comment'} = '<div class="example">
<pre class="example-preformatted">First line 0 </pre><div class="example">
<pre class="example-preformatted">Nested example
</pre></div>
<pre class="example-preformatted">In first one
</pre></div>

<div class="example">
<pre class="example-preformatted">First line 1 </pre><div class="example">
<pre class="example-preformatted">Nested example </pre></div>
<pre class="example-preformatted">In first one
</pre></div>

<div class="example">
<pre class="example-preformatted">First line 2 </pre><div class="example">
<pre class="example-preformatted">Nested example </pre></div>
<pre class="example-preformatted">In first one </pre></div>
';


$result_converted{'docbook'}->{'nested_example_and_comment'} = '<screen>First line 0 <!-- -->
</screen><screen>Nested example
</screen><screen>In first one
</screen>
<screen>First line 1 <!-- -->
</screen><screen>Nested example <!-- -->
</screen><screen>In first one
</screen>
<screen>First line 2 <!-- -->
</screen><screen>Nested example <!-- -->
</screen><screen>In first one <!-- -->
</screen>';


$result_converted{'xml'}->{'nested_example_and_comment'} = '<example endspaces=" ">
<pre xml:space="preserve">First line 0 <!-- c -->
</pre><example endspaces=" ">
<pre xml:space="preserve">Nested example
</pre></example>
<pre xml:space="preserve">In first one
</pre></example>

<example endspaces=" ">
<pre xml:space="preserve">First line 1 <!-- c -->
</pre><example endspaces=" ">
<pre xml:space="preserve">Nested example <!-- c -->
</pre></example>
<pre xml:space="preserve">In first one
</pre></example>

<example endspaces=" ">
<pre xml:space="preserve">First line 2 <!-- c -->
</pre><example endspaces=" ">
<pre xml:space="preserve">Nested example <!-- c -->
</pre></example>
<pre xml:space="preserve">In first one <!-- c -->
</pre></example>
';


$result_converted{'latex_text'}->{'nested_example_and_comment'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily First line 0 \\end{GNUTexinfopreformatted}
\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily Nested example
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily In first one
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily First line 1 \\end{GNUTexinfopreformatted}
\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily Nested example \\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily In first one
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily First line 2 \\end{GNUTexinfopreformatted}
\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily Nested example \\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily In first one \\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
