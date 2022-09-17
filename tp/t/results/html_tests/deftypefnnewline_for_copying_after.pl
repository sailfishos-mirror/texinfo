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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  },
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'deftypefun'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  }
                }
              ],
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
                'line_nr' => 5,
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
            'line_nr' => 7,
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
            'line_nr' => 11,
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              },
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'deftypefun'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
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
        'line_nr' => 14,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'type'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'region'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'deftypefnnewline_for_copying_after'}{'contents'}[0]{'contents'}[0];
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
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'deftypefnnewline_for_copying_after'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'deftypefnnewline_for_copying_after'};

$result_nodes{'deftypefnnewline_for_copying_after'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'deftypefnnewline_for_copying_after'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
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
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
strong.def-name {font-family: monospace; font-weight: bold; font-size: larger}
-->
</style>


</head>

<body lang="en">

<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn">
<dt class="deftypefn deftypefun-alias-deftypefn" id="index-copying-NAME"><span class="category-def">Function: </span><span><code class="def-type">TYPE</code> <strong class="def-name">NAME</strong> <code class="def-code-arguments">ARGUMENTS...</code><a class="copiable-link" href=\'#index-copying-NAME\'> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>


<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn">
<dt class="deftypefn deftypefun-alias-deftypefn" id="index-copying-NAME"><span class="category-def">Function:<br> </span><span><code class="def-type">TYPE</code><br> <strong class="def-name">NAME</strong> <code class="def-code-arguments">ARGUMENTS...</code><a class="copiable-link" href=\'#index-copying-NAME\'> &para;</a></span></dt>
<dd><p>BODY-OF-DESCRIPTION
</p></dd></dl>

<div class="top-level-extent" id="Top">
<h1 class="top" id="top">top</h1>

<dl class="first-deftypefn first-deftypefun-alias-first-deftypefn">
<dt class="deftypefn deftypefun-alias-deftypefn" id="index-something"><span class="category-def">Function:<br> </span><span><code class="def-type">void</code><br> <strong class="def-name">something</strong> <code class="def-code-arguments">input</code><a class="copiable-link" href=\'#index-something\'> &para;</a></span></dt>
<dd><p>do something with input
</p></dd></dl>

</div>



</body>
</html>
';

1;
