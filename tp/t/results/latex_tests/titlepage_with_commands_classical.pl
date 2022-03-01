use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlepage_with_commands_classical'} = {
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
                      'text' => 'titlepage_with_commands_classical.info'
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
                'text_arg' => 'titlepage_with_commands_classical.info'
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in Copying
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
                    'command_argument' => 'copying',
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
              'cmdname' => 'titlepage',
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Some manual '
                        },
                        {
                          'cmdname' => '*',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' tested'
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
                          'text' => 'Subtitle manual '
                        },
                        {
                          'cmdname' => '*',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' tested'
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
                  'cmdname' => 'subtitle',
                  'extra' => {
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
                          'parent' => {},
                          'text' => 'Subtitle 2 manual '
                        },
                        {
                          'cmdname' => '*',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' tested'
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
                  'cmdname' => 'subtitle',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'First '
                        },
                        {
                          'cmdname' => '*',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' author'
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
                  'cmdname' => 'author',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'titlepage' => {}
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
                          'parent' => {},
                          'text' => 'Second '
                        },
                        {
                          'cmdname' => '*',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' author'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'Something
'
                                    },
                                    {
                                      'parent' => {},
                                      'text' => 'about the address of author.
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
                                      'parent' => {},
                                      'text' => 'Something about the life. 
'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'paragraph'
                                },
                                {
                                  'cmdname' => 'displaymath',
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
                                      'parent' => {},
                                      'text' => '\\frac'
                                    },
                                    {
                                      'contents' => [
                                        {
                                          'parent' => {},
                                          'text' => 'a'
                                        }
                                      ],
                                      'parent' => {},
                                      'source_info' => {
                                        'file_name' => '',
                                        'line_nr' => 17,
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
                                        'line_nr' => 17,
                                        'macro' => ''
                                      },
                                      'type' => 'bracketed'
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
                                              'text' => 'displaymath'
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
                                        'command_argument' => 'displaymath',
                                        'spaces_before_argument' => ' ',
                                        'text_arg' => 'displaymath'
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
                                    'end_command' => {}
                                  },
                                  'parent' => {},
                                  'source_info' => {
                                    'file_name' => '',
                                    'line_nr' => 16,
                                    'macro' => ''
                                  }
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
                            'line_nr' => 12,
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
                  'cmdname' => 'author',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'titlepage' => {}
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
                      'text' => ' The following two commands start the copyright page.
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'c',
                  'extra' => {
                    'misc_args' => [
                      ' The following two commands start the copyright page.
'
                    ]
                  },
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
                  'cmdname' => 'page',
                  'parent' => {}
                },
                {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => ' 0pt plus 1filll
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'vskip',
                  'extra' => {
                    'misc_args' => [
                      ' 0pt plus 1filll
'
                    ]
                  },
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
                    'line_nr' => 24,
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
                    'command_argument' => 'titlepage',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'titlepage'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 25,
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
                'line_nr' => 7,
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'section top'
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
        'line_nr' => 28,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chapter'
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 30,
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
              'text' => 'In chapter
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
        'line_nr' => 31,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'extra'}{'titlepage'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'contents'}[5];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'extra'}{'titlepage'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[6];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[7];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[8];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[9];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[10];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[11];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[1];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[2];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[3];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_with_commands_classical'};
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'args'}[0];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'titlepage_with_commands_classical'}{'contents'}[4];
$result_trees{'titlepage_with_commands_classical'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_with_commands_classical'};

$result_texis{'titlepage_with_commands_classical'} = '@setfilename titlepage_with_commands_classical.info

@copying
in Copying
@end copying

@titlepage
@title Some manual @* tested
@subtitle Subtitle manual @* tested
@subtitle Subtitle 2 manual @* tested
@author First @* author
@author Second @* author@footnote{Something
about the address of author.

Something about the life. 
@displaymath
\\frac{a}{b}
@end displaymath
}
@page
@c The following two commands start the copyright page.
@page
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@node Top
@top section top

@node chapter
@chapter Chapter

In chapter

';


$result_texts{'titlepage_with_commands_classical'} = '


section top
***********

1 Chapter
*********

In chapter

';

$result_sectioning{'titlepage_with_commands_classical'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0];
$result_sectioning{'titlepage_with_commands_classical'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'titlepage_with_commands_classical'};

$result_nodes{'titlepage_with_commands_classical'} = {
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
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'titlepage_with_commands_classical'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'titlepage_with_commands_classical'};
$result_nodes{'titlepage_with_commands_classical'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'titlepage_with_commands_classical'};

$result_menus{'titlepage_with_commands_classical'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'titlepage_with_commands_classical'} = [
  {
    'error_line' => 'warning: @footnote should not appear in @author
',
    'file_name' => '',
    'line_nr' => 12,
    'macro' => '',
    'text' => '@footnote should not appear in @author',
    'type' => 'warning'
  }
];


$result_floats{'titlepage_with_commands_classical'} = {};



$result_converted{'latex'}->{'titlepage_with_commands_classical'} = '


\\begin{document}

\\GNUTexinfofrontmatter
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
{\\raggedright {\\huge \\bfseries Some manual \\leavevmode{}\\\\ tested}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt
\\rightline{Subtitle manual \\leavevmode{}\\\\ tested}
\\rightline{Subtitle 2 manual \\leavevmode{}\\\\ tested}
\\vskip 0pt plus 1filll
\\leftline{\\Large \\bfseries First \\leavevmode{}\\\\ author}%
\\leftline{\\Large \\bfseries Second \\leavevmode{}\\\\ author\\footnote{Something
about the address of author.

Something about the life. 
$$
\\frac{a}{b}
$$
}}%
\\vskip4pt \\hrule height 2pt width \\hsize
  \\vskip\\titlepagebottomglue
\\endgroup
\\newpage{}%
\\phantom{blabla}%
\\newpage{}%
\\phantom{blabla}%
\\vskip 0pt plus 1filll
in Copying
\\end{titlepage}
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter
\\chapter{Chapter}
\\label{anchor:chapter}%

In chapter

';

1;
