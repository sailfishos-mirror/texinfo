use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'punctuation_and_upper_case_commands'} = {
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
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
                      'text' => 'AAA'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 3,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
                      'text' => 'double AAA'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double '
                    },
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.  End.
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
                      'parent' => {},
                      'text' => 'aaa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'aa',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
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
                      'parent' => {},
                      'text' => 'AAA'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
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
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
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
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
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
              'cmdname' => 'sc',
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double AAA'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'E'
                            }
                          ],
                          'parent' => {},
                          'type' => 'following_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double '
                    },
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'AA',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 8,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.  End.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[6];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[12];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[6];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[12];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[12]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[13]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[14]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[15]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'contents'}[1];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[16]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'contents'}[17]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0];
$result_trees{'punctuation_and_upper_case_commands'}{'contents'}[0]{'parent'} = $result_trees{'punctuation_and_upper_case_commands'};

$result_texis{'punctuation_and_upper_case_commands'} = '
@var{aaa}. @var{@~e}. @var{@aa{}}.
@var{AAA}. @var{@~E}. @var{@AA{}}.
@var{double AAA}.  @var{double @~E}. @var{double @AA{}}.  End.

@sc{aaa}. @sc{@~e}. @sc{@aa{}}.
@sc{AAA}. @sc{@~E}. @sc{@AA{}}.
@sc{double AAA}.  @sc{double @~E}. @sc{double @AA{}}.  End.
';


$result_texts{'punctuation_and_upper_case_commands'} = '
aaa. e~. aa.
AAA. E~. AA.
double AAA.  double E~. double AA.  End.

AAA. E~. AA.
AAA. E~. AA.
DOUBLE AAA.  DOUBLE E~. DOUBLE AA.  End.
';

$result_errors{'punctuation_and_upper_case_commands'} = [];


$result_floats{'punctuation_and_upper_case_commands'} = {};



$result_converted{'plaintext'}->{'punctuation_and_upper_case_commands'} = 'AAA.  Ẽ.  Å.  AAA.  Ẽ.  Å.  DOUBLE AAA.  DOUBLE Ẽ.  DOUBLE Å.  End.

   AAA.  Ẽ.  Å.  AAA. Ẽ. Å. DOUBLE AAA. DOUBLE Ẽ. DOUBLE Å. End.
';

1;
