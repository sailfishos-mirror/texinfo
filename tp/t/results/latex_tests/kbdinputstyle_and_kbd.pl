use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'kbdinputstyle_and_kbd'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'default kbdinputstyle'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
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
              'text' => '
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example default kbdinputstyle'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 4,
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
                  'text' => 'code'
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'code'
            ],
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'code kbdinputstyle'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
              'extra' => {
                'code' => 1
              },
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
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example code kbdinputstyle'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
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
                'line_nr' => 11,
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'example'
            ],
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example kbdinputstyle'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
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
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example example kbdinputstyle'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
                  'extra' => {
                    'code' => 1
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
                'line_nr' => 17,
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
            'line_nr' => 15,
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
                  'text' => 'distinct'
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
          'cmdname' => 'kbdinputstyle',
          'extra' => {
            'misc_args' => [
              'distinct'
            ],
            'spaces_before_argument' => ' '
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'distinct kbdinputstyle'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
              'contents' => [],
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
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in example distinct kbdinputstyle'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'kbd',
                  'contents' => [],
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
            'line_nr' => 21,
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
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[5];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[9];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[13]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[13];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'extra'}{'command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'args'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'extra'}{'end_command'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'contents'}[2];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0];
$result_trees{'kbdinputstyle_and_kbd'}{'contents'}[0]{'parent'} = $result_trees{'kbdinputstyle_and_kbd'};

$result_texis{'kbdinputstyle_and_kbd'} = '
@kbd{default kbdinputstyle}
@example
@kbd{in example default kbdinputstyle}
@end example

@kbdinputstyle code
@kbd{code kbdinputstyle}
@example
@kbd{in example code kbdinputstyle}
@end example

@kbdinputstyle example
@kbd{example kbdinputstyle}
@example
@kbd{in example example kbdinputstyle}
@end example

@kbdinputstyle distinct
@kbd{distinct kbdinputstyle}
@example
@kbd{in example distinct kbdinputstyle}
@end example
';


$result_texts{'kbdinputstyle_and_kbd'} = 'default kbdinputstyle
in example default kbdinputstyle

code kbdinputstyle
in example code kbdinputstyle

example kbdinputstyle
in example example kbdinputstyle

distinct kbdinputstyle
in example distinct kbdinputstyle
';

$result_errors{'kbdinputstyle_and_kbd'} = [];


$result_floats{'kbdinputstyle_and_kbd'} = {};



$result_converted{'latex'}->{'kbdinputstyle_and_kbd'} = '\\begin{document}
{\\ttfamily\\textsl{default kbdinputstyle}}
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
{\\ttfamily\\textsl{in example default kbdinputstyle}}
\\endgroup{}%

\\texttt{code kbdinputstyle}
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\texttt{in example code kbdinputstyle}
\\endgroup{}%

{\\ttfamily\\textsl{example kbdinputstyle}}
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
\\texttt{in example example kbdinputstyle}
\\endgroup{}%

{\\ttfamily\\textsl{distinct kbdinputstyle}}
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\ttfamily{}%
{\\ttfamily\\textsl{in example distinct kbdinputstyle}}
\\endgroup{}%
';

1;
