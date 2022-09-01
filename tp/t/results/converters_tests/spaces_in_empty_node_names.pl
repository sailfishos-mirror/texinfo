use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'spaces_in_empty_node_names'} = {
  'contents' => [
    {
      'contents' => [],
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => ' ',
                      'parent' => {}
                    },
                    {
                      'cmdname' => ' ',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {},
                    {}
                  ],
                  'normalized' => '-'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '  ',
                              'type' => 'raw'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'verb',
                      'contents' => [],
                      'extra' => {
                        'delimiter' => ':'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '-'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => ' ',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '-'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
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
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'cmdname' => ' ',
              'parent' => {}
            },
            {
              'cmdname' => ' ',
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'contents' => [],
              'extra' => {
                'delimiter' => ':'
              },
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
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
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
                      'text' => '  '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
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
                      'cmdname' => ' ',
                      'parent' => {}
                    },
                    {
                      'cmdname' => ' ',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {},
                    {}
                  ],
                  'normalized' => '-'
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
                              'text' => '  ',
                              'type' => 'raw'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'verb',
                      'contents' => [],
                      'extra' => {
                        'delimiter' => ':'
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
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
                'line_nr' => 17,
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
                              'text' => '  '
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'w',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 19,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
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
                'line_nr' => 19,
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
        'line_nr' => 13,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'spaces_in_empty_node_names'}{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'};
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[1] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'};
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'};
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'};
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'spaces_in_empty_node_names'}{'contents'}[4]{'parent'} = $result_trees{'spaces_in_empty_node_names'};

$result_texis{'spaces_in_empty_node_names'} = '@node Top

@menu
* @ @ ::
* @verb{:  :}::
* @ ::
@end menu

@node @ @ 

@node @verb{:  :}

@node @w{  }

@ref{@ @ }

@ref{@verb{:  :}}

@ref{@w{  }}
';


$result_texts{'spaces_in_empty_node_names'} = '
*   ::
*   ::
*  ::




  

  

  
';

$result_nodes{'spaces_in_empty_node_names'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  }
};

$result_menus{'spaces_in_empty_node_names'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'spaces_in_empty_node_names'} = [
  {
    'error_line' => 'warning: @verb should not appear in @node
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => '@verb should not appear in @node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verb should not appear in @ref
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => '@verb should not appear in @ref',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty node name after expansion `@ @ \'
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'empty node name after expansion `@ @ \'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@verb{:  :}\'
',
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
    'text' => 'empty node name after expansion `@verb{:  :}\'',
    'type' => 'error'
  },
  {
    'error_line' => 'empty node name after expansion `@w{  }\'
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => 'empty node name after expansion `@w{  }\'',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `@ @ \'
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => '@ref reference to nonexistent node `@ @ \'',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `@verb{:  :}\'
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
    'text' => '@ref reference to nonexistent node `@verb{:  :}\'',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `@w{  }\'
',
    'file_name' => '',
    'line_nr' => 19,
    'macro' => '',
    'text' => '@ref reference to nonexistent node `@w{  }\'',
    'type' => 'error'
  },
  {
    'error_line' => '@menu reference to nonexistent node `@ @ \'
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@menu reference to nonexistent node `@ @ \'',
    'type' => 'error'
  },
  {
    'error_line' => '@menu reference to nonexistent node `@verb{:  :}\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@menu reference to nonexistent node `@verb{:  :}\'',
    'type' => 'error'
  },
  {
    'error_line' => '@menu reference to nonexistent node `@ \'
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => '@menu reference to nonexistent node `@ \'',
    'type' => 'error'
  }
];


$result_floats{'spaces_in_empty_node_names'} = {};



$result_converted{'plaintext'}->{'spaces_in_empty_node_names'} = '*note   ::

   *note   ::

   *note   ::
';


$result_converted{'html_text'}->{'spaces_in_empty_node_names'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="node">Top</h1>


<hr>
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>

<hr>
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>

<hr>
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>

<p>&lsquo;&nbsp;&nbsp;&rsquo;
</p>
<p>&lsquo;<code class="verb">  </code>&rsquo;
</p>
<p>&lsquo;&nbsp;&nbsp;<!-- /@w -->&rsquo;
</p>';


$result_converted{'xml'}->{'spaces_in_empty_node_names'} = '<node name="Top" spaces=" "><nodename>Top</nodename></node>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::"><spacecmd type="spc"/><spacecmd type="spc"/></menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator="::"><verb delimiter=":">  </verb></menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator="::"><spacecmd type="spc"/></menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node name="" spaces=" "><nodename></nodename></node>

<node name="" spaces=" "><nodename></nodename></node>

<node name="" spaces=" "><nodename></nodename></node>

<para><ref label="-"><xrefnodename><spacecmd type="spc"/><spacecmd type="spc"/></xrefnodename></ref>
</para>
<para><ref label="-"><xrefnodename><verb delimiter=":">  </verb></xrefnodename></ref>
</para>
<para><ref label="-"><xrefnodename><w>  </w></xrefnodename></ref>
</para>';


$result_converted{'docbook'}->{'spaces_in_empty_node_names'} = '


<para><link linkend="-">&#160;&#160;</link>
</para>
<para><link linkend="-"><literal>  </literal></link>
</para>
<para><link linkend="-">  <!-- /@w --></link>
</para>';


$result_converted{'latex'}->{'spaces_in_empty_node_names'} = '\\label{anchor:Top}%
\\label{anchor:}%

\\label{anchor:}%

\\label{anchor:}%

\\ {}\\ {}

\\verb:  :

\\hbox{  }
';


$result_converted{'info'}->{'spaces_in_empty_node_names'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

* Menu:

*   ::
*   ::
*  ::

*note   ::

   *note   ::

   *note   ::


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
