use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inline'} = {
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
                      'text' => 'html'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '<blink>html</blink> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'expand_index' => 1,
                'format' => 'html'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'plaintext'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'plaintext ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'expand_index' => 1,
                'format' => 'plaintext'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'xml'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '<para>xml</para> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'expand_index' => 1,
                'format' => 'xml'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ',
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'docbook'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '<emphasis>docbook</emphasis> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'expand_index' => 1,
                'format' => 'docbook'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'format' => 'tex'
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'latex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '\\frac'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'a < b '
                                },
                                {
                                  'args' => [
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'tex \\hbox'
                                        },
                                        {
                                          'contents' => [
                                            {
                                              'parent' => {},
                                              'text' => ' code '
                                            }
                                          ],
                                          'parent' => {},
                                          'source_info' => {
                                            'file_name' => '',
                                            'line_nr' => 7,
                                            'macro' => ''
                                          },
                                          'type' => 'bracketed'
                                        }
                                      ],
                                      'parent' => {},
                                      'type' => 'brace_command_arg'
                                    }
                                  ],
                                  'cmdname' => 'code',
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 7,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              },
                              'type' => 'bracketed'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'b'
                                }
                              ],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 7,
                                'macro' => ''
                              },
                              'type' => 'bracketed'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_context'
                        }
                      ],
                      'cmdname' => 'math',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 7,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlinefmt',
              'extra' => {
                'expand_index' => 1,
                'format' => 'latex'
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
                      'text' => 'html'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'raw <blink>html</blink> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'expand_index' => 1,
                'format' => 'html'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'plaintext'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'raw plaintext ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'expand_index' => 1,
                'format' => 'plaintext'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'xml'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'raw <para>xml</para> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'expand_index' => 1,
                'format' => 'xml'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ',
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'docbook'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'raw <emphasis>docbook</emphasis> ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'expand_index' => 1,
                'format' => 'docbook'
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
              'text' => ', 
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'format' => 'tex'
              },
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'latex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'raw $\\frac'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a < b '
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'tex \\hbox'
                                },
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => ' code '
                                    }
                                  ],
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 15,
                                    'macro' => ''
                                  },
                                  'type' => 'bracketed'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'code',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 15,
                            'macro' => ''
                          }
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'b'
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    },
                    {
                      'parent' => {},
                      'text' => '$ ``'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'inlineraw',
              'extra' => {
                'expand_index' => 1,
                'format' => 'latex'
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'inline'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'inline'}{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'inline'}{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[2];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'contents'}[3]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[1]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'inline'}{'contents'}[0]{'contents'}[4];
$result_trees{'inline'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'inline'}{'contents'}[0];
$result_trees{'inline'}{'contents'}[0]{'parent'} = $result_trees{'inline'};

$result_texis{'inline'} = '
@inlinefmt{html, <blink>html</blink> ``}, 
@inlinefmt{plaintext, plaintext ``}, 
@inlinefmt{xml, <para>xml</para> ``},
@inlinefmt{docbook, <emphasis>docbook</emphasis> ``}, 
@inlinefmt{tex,}
@inlinefmt{latex, @math{\\frac{a < b @code{tex \\hbox{ code }}}{b}} ``}


@inlineraw{html, raw <blink>html</blink> ``}, 
@inlineraw{plaintext, raw plaintext ``}, 
@inlineraw{xml, raw <para>xml</para> ``},
@inlineraw{docbook, raw <emphasis>docbook</emphasis> ``}, 
@inlineraw{tex,}
@inlineraw{latex, raw $\\frac{a < b @code{tex \\hbox{ code }}}{b}$ ``}
';


$result_texts{'inline'} = '
, 
, 
,
, 




, 
, 
,
, 


';

$result_errors{'inline'} = [];


$result_floats{'inline'} = {};



$result_converted{'plaintext'}->{'inline'} = ', plaintext “, , ,

   , raw plaintext ``, , ,
';


$result_converted{'html_text'}->{'inline'} = '
<p>&lt;blink&gt;html&lt;/blink&gt; &ldquo;, 
, 
,
, 


</p>

<p>raw <blink>html</blink> ``, 
, 
,
, 


</p>';


$result_converted{'xml'}->{'inline'} = '
<para><inlinefmt><inlinefmtformat>html</inlinefmtformat><inlinefmtcontent spaces=" ">&lt;blink&gt;html&lt;/blink&gt; &textldquo;</inlinefmtcontent></inlinefmt>, 
<inlinefmt><inlinefmtformat>plaintext</inlinefmtformat><inlinefmtcontent spaces=" ">plaintext &textldquo;</inlinefmtcontent></inlinefmt>, 
&lt;para&gt;xml&lt;/para&gt; &textldquo;,
<inlinefmt><inlinefmtformat>docbook</inlinefmtformat><inlinefmtcontent spaces=" ">&lt;emphasis&gt;docbook&lt;/emphasis&gt; &textldquo;</inlinefmtcontent></inlinefmt>, 
<inlinefmt><inlinefmtformat>tex</inlinefmtformat></inlinefmt>
<inlinefmt><inlinefmtformat>latex</inlinefmtformat><inlinefmtcontent spaces=" "><math>\\frac{a &lt; b <code>tex \\hbox{ code }</code>}{b}</math> &textldquo;</inlinefmtcontent></inlinefmt>
</para>

<para><inlineraw><inlinerawformat>html</inlinerawformat><inlinerawcontent spaces=" ">raw &lt;blink&gt;html&lt;/blink&gt; &textldquo;</inlinerawcontent></inlineraw>, 
<inlineraw><inlinerawformat>plaintext</inlinerawformat><inlinerawcontent spaces=" ">raw plaintext &textldquo;</inlinerawcontent></inlineraw>, 
raw <para>xml</para> ``,
<inlineraw><inlinerawformat>docbook</inlinerawformat><inlinerawcontent spaces=" ">raw &lt;emphasis&gt;docbook&lt;/emphasis&gt; &textldquo;</inlinerawcontent></inlineraw>, 
<inlineraw><inlinerawformat>tex</inlinerawformat></inlineraw>
<inlineraw><inlinerawformat>latex</inlinerawformat><inlinerawcontent spaces=" ">raw $\\frac{a &lt; b <code>tex \\hbox{ code }</code>}{b}$ &textldquo;</inlinerawcontent></inlineraw>
</para>';


$result_converted{'docbook'}->{'inline'} = '
<para>, 
, 
,
&lt;emphasis&gt;docbook&lt;/emphasis&gt; &#8220;, 


</para>

<para>, 
, 
,
raw <emphasis>docbook</emphasis> ``, 


</para>';


$result_converted{'latex_text'}->{'inline'} = '
, 
, 
,
, 

$\\frac{a < b \\mathtt{tex \\hbox{ code }}}{b}$ ``


, 
, 
,
, 

raw $\\frac{a < b \\texttt{tex \\hbox{ code }}}{b}$ ``
';

1;
