use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'deftypefnnewline_for_copying_after'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'copying',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'cmdname' => 'deftypefun',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'Function'
                            }
                          ],
                          'extra' => {
                            'def_role' => 'category'
                          },
                          'parent' => {},
                          'type' => 'bracketed_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces_inserted'
                        },
                        {
                          'extra' => {
                            'def_role' => 'type'
                          },
                          'parent' => {},
                          'text' => 'TYPE'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'name'
                          },
                          'parent' => {},
                          'text' => 'NAME'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'spaces'
                        },
                        {
                          'extra' => {
                            'def_role' => 'typearg'
                          },
                          'parent' => {},
                          'text' => 'ARGUMENTS...'
                        },
                        {
                          'extra' => {
                            'def_role' => 'spaces'
                          },
                          'parent' => {},
                          'text' => '
',
                          'type' => 'spaces_at_end'
                        }
                      ],
                      'parent' => {},
                      'type' => 'block_line_arg'
                    }
                  ],
                  'extra' => {
                    'def_command' => 'deftypefun',
                    'def_parsed_hash' => {
                      'category' => {},
                      'name' => {},
                      'type' => {}
                    },
                    'index_entry' => {
                      'command' => {},
                      'content' => [
                        {}
                      ],
                      'content_normalized' => [
                        {}
                      ],
                      'in_code' => 1,
                      'index_at_command' => 'deftypefun',
                      'index_ignore_chars' => {},
                      'index_name' => 'fn',
                      'index_type_command' => 'deftypefun',
                      'number' => 1,
                      'region' => {}
                    },
                    'original_def_cmdname' => 'deftypefun'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  },
                  'parent' => {},
                  'type' => 'def_line'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'BODY-OF-DESCRIPTION
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'def_item'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'deftypefun'
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
                    'command_argument' => 'deftypefun',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'deftypefun'
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'end_command' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
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
          'cmdname' => 'deftypefnnewline',
          'extra' => {
            'misc_args' => [
              'on'
            ],
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {}
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
        },
        {
          'cmdname' => 'deftypefun',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Function'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category'
                      },
                      'parent' => {},
                      'type' => 'bracketed_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces_inserted'
                    },
                    {
                      'extra' => {
                        'def_role' => 'type'
                      },
                      'parent' => {},
                      'text' => 'void'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'name'
                      },
                      'parent' => {},
                      'text' => 'something'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'spaces'
                    },
                    {
                      'extra' => {
                        'def_role' => 'typearg'
                      },
                      'parent' => {},
                      'text' => 'input'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '
',
                      'type' => 'spaces_at_end'
                    }
                  ],
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'extra' => {
                'def_command' => 'deftypefun',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {},
                  'type' => {}
                },
                'index_entry' => {
                  'command' => {},
                  'content' => [
                    {}
                  ],
                  'content_normalized' => [
                    {}
                  ],
                  'in_code' => 1,
                  'index_at_command' => 'deftypefun',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deftypefun',
                  'node' => {},
                  'number' => 2
                },
                'original_def_cmdname' => 'deftypefun'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              },
              'parent' => {},
              'type' => 'def_line'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'do something with input
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'parent' => {},
              'type' => 'def_item'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'deftypefun'
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
                'command_argument' => 'deftypefun',
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefun'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          },
          'parent' => {}
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
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 14,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[6];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'};
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'};
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'};

$result_texis{'deftypefnnewline_for_copying_after'} = '@copying
@deftypefun TYPE NAME ARGUMENTS...
BODY-OF-DESCRIPTION
@end deftypefun
@end copying

@insertcopying

@deftypefnnewline on

@insertcopying

@node Top
@top top

@deftypefun void something input
do something with input
@end deftypefun

';


$result_texts{'deftypefnnewline_for_copying_after'} = '



top
***

Function: void something input
do something with input

';

$result_sectioning{'deftypefnnewline_for_copying_after'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_up' => {}
    }
  ]
};
$result_sectioning{'deftypefnnewline_for_copying_after'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'deftypefnnewline_for_copying_after'};

$result_nodes{'deftypefnnewline_for_copying_after'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_menus{'deftypefnnewline_for_copying_after'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'deftypefnnewline_for_copying_after'} = [];


$result_floats{'deftypefnnewline_for_copying_after'} = {};


$result_indices_sort_strings{'deftypefnnewline_for_copying_after'} = {
  'fn' => [
    'NAME',
    'something'
  ]
};



$result_converted{'html'}->{'deftypefnnewline_for_copying_after'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- Function: TYPE NAME ARGUMENTS...
BODY-OF-DESCRIPTION -->
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">

<dl class="def">
<dt id="index-copying-NAME"><span class="category">Function: </span><span><em>TYPE</em> <strong>NAME</strong> <em>ARGUMENTS...</em><a href=\'#index-copying-NAME\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>


<dl class="def">
<dt id="index-copying-NAME"><span class="category">Function:<br> </span><span><em>TYPE</em><br> <strong>NAME</strong> <em>ARGUMENTS...</em><a href=\'#index-copying-NAME\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>

<div class="top" id="Top">
<h1 class="top" id="top">top</h1>

<dl class="def">
<dt id="index-something"><span class="category">Function:<br> </span><span><em>void</em><br> <strong>something</strong> <em>input</em><a href=\'#index-something\' class=\'copiable-anchor\'> &para;</a></span></dt>
<dd><p>do something with input
</p></dd></dl>

</div>



</body>
</html>
';

1;
