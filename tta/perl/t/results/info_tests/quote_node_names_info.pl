use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'quote_node_names_info'} = {
  'contents' => [
    {
      'contents' => [
        {
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 1
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal-node'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption and a word'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 4
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'normal node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal-node'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 5
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blah:blah'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blah_003ablah'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption and a word'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 7
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blah:blah'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blah_003ablah'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 8
              }
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blumpty.fump'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blumpty_002efump'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption and a word'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 10
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blumpty.fump'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blumpty_002efump'
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the::caption'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 11
              }
            },
            {
              'text' => '.mrmrmrmmrmrmr
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blah:blah'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blah_003ablah'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 13
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'secret,node'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'nodequote.texi',
                        'line_nr' => 15
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'secret_002cnode'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 15
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA '
            },
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'blah:blah'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'blah_003ablah'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 17
              }
            },
            {
              'text' => '.)
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'x:y::z'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man_ual'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 19
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'x.y.z'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man_ual'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 21
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'pp:qq::rr'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man_ual'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 23
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'pp:qq.rr'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man_ual'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 25
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ext'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man:u.al'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 27
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e:x.t'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'label'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man:u.al'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 29
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'ext'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'la:bel'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'man:u.al'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Book Title'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 31
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'blah'
                    },
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ':'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'nodequote.texi',
                        'line_nr' => 34
                      }
                    },
                    {
                      'text' => 'blah'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'blah_003ablah'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 34
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'the topic'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ':',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'blumpty'
                    },
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => '.'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'nodequote.texi',
                        'line_nr' => 35
                      }
                    },
                    {
                      'text' => 'fump'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'blumpty_002efump'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '.',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 35
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'normal node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'normal-node'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 36
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'funny'
                    },
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => ':'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'nodequote.texi',
                        'line_nr' => 37
                      }
                    },
                    {
                      'text' => 'label'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ':',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'cmdname' => 'asis',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'secret,node'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'file_name' => 'nodequote.texi',
                        'line_nr' => 37
                      }
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'secret_002cnode'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '.',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 37
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '(man'
                    }
                  ],
                  'type' => 'menu_entry_name'
                },
                {
                  'text' => ':',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'text' => 'u.al)ext::'
                    },
                    {
                      'text' => '
',
                      'type' => 'space_at_end_menu_node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'u_002eal_0029ext_003a_003a'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 38
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'after_menu_description_line'
                    }
                  ],
                  'type' => 'preformatted'
                }
              ],
              'type' => 'menu_comment'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'nodequote.texi',
                'line_nr' => 40
              }
            }
          ],
          'source_info' => {
            'file_name' => 'nodequote.texi',
            'line_nr' => 33
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 2
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'blah:blah'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'blah_003ablah'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 42
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'blah:blah'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'stuff here.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 43
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'blumpty.fump'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'blumpty_002efump'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 47
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'blumpty.fump'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 48
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'normal node'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'man'
                },
                {
                  'cmdname' => 'comma',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'file_name' => 'nodequote.texi',
                    'line_nr' => 50
                  }
                },
                {
                  'text' => 'u:a.l'
                },
                {
                  'text' => ')'
                },
                {
                  'text' => 'direction'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {},
                    {},
                    {}
                  ]
                },
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'direction'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'man_ual'
                },
                {
                  'text' => ')'
                },
                {
                  'text' => 'direct'
                },
                {
                  'cmdname' => 'comma',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'file_name' => 'nodequote.texi',
                    'line_nr' => 50
                  }
                },
                {
                  'text' => 'ion'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'node_content' => {
                  'contents' => [
                    {},
                    {},
                    {}
                  ]
                },
                'normalized' => 'direct_002cion'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'man_ual'
                },
                {
                  'text' => ')'
                },
                {
                  'text' => 'direct::i.on'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'direct_003a_003ai_002eon'
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'normal-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 50
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'normal node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '3'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 51
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'secret,node'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'file_name' => 'nodequote.texi',
                    'line_nr' => 53
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'secret_002cnode'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 53
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'secret,node'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'file_name' => 'nodequote.texi',
                    'line_nr' => 54
                  }
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '4'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 54
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top secret node'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'stuff here.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'top-secret-node'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'nodequote.texi',
        'line_nr' => 56
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[6]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[22]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[24]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[26]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[4]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[5]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[5]{'contents'}[3]{'contents'}[0];
$result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[5]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'quote_node_names_info'}{'contents'}[2]{'contents'}[28]{'contents'}[5]{'contents'}[3]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[1] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[2] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[2] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'quote_node_names_info'}{'contents'}[7]{'contents'}[0]{'contents'}[3]{'contents'}[3];

$result_texis{'quote_node_names_info'} = '@node Top
@top

@xref{normal node, the::caption and a word}
@xref{normal node, the::caption}

@xref{blah:blah, the::caption and a word}
@xref{blah:blah, the::caption}

@xref{blumpty.fump, the::caption and a word}
@xref{blumpty.fump, the::caption}.mrmrmrmmrmrmr

@xref{blah:blah}.

@xref{@asis{secret,node}}.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA @xref{blah:blah}.)

@xref{x:y::z,,,man_ual,Book Title}.

@xref{x.y.z,,,man_ual,Book Title}.

@xref{pp:qq::rr,, label, man_ual,Book Title}.

@xref{pp:qq.rr,, label, man_ual,Book Title}.

@xref{ext,, label, man:u.al, Book Title}.

@xref{e:x.t,, label, man:u.al, Book Title}.

@xref{ext,, la:bel, man:u.al, Book Title}.

@menu
* blah@asis{:}blah::
* the topic:blumpty@asis{.}fump.
* normal node::
* funny@asis{:}label:@asis{secret,node}.
* (man:u.al)ext::

@end menu

@node blah:blah
@chapter blah:blah

stuff here.

@node blumpty.fump
@chapter blumpty.fump

@node normal node, (man@comma{}u:a.l)direction, (man_ual)direct@comma{}ion, (man_ual)direct::i.on
@chapter normal node

@node @asis{secret,node}
@chapter @asis{secret,node}

@node top secret node

stuff here.
';


$result_texts{'quote_node_names_info'} = '
normal node
normal node

blah:blah
blah:blah

blumpty.fump
blumpty.fump.mrmrmrmmrmrmr

blah:blah.

secret,node.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA blah:blah.)

x:y::z.

x.y.z.

pp:qq::rr.

pp:qq.rr.

ext.

e:x.t.

ext.

* blah:blah::
* the topic:blumpty.fump.
* normal node::
* funny:label:secret,node.
* (man:u.al)ext::


1 blah:blah
***********

stuff here.

2 blumpty.fump
**************

3 normal node
*************

4 secret,node
*************


stuff here.
';

$result_sectioning{'quote_node_names_info'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'blah_003ablah'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'blumpty_002efump'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'normal-node'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'secret_002cnode'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '4',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names_info'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'quote_node_names_info'};

$result_nodes{'quote_node_names_info'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'next' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direction'
                            },
                            'type' => 'line_arg'
                          },
                          'prev' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direct_002cion'
                            },
                            'type' => 'line_arg'
                          },
                          'up' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direct_003a_003ai_002eon'
                            },
                            'type' => 'line_arg'
                          }
                        },
                        'normalized' => 'normal-node'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'blumpty_002efump'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'blah_003ablah'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '4'
        }
      },
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'secret_002cnode'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'top-secret-node'
    }
  }
];
$result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names_info'}[0];
$result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names_info'}[0];
$result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names_info'}[0];
$result_nodes{'quote_node_names_info'}[1] = $result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names_info'}[2] = $result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names_info'}[3] = $result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names_info'}[4]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names_info'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names_info'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names_info'}[0];

$result_menus{'quote_node_names_info'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'secret_002cnode'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'normal-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'blumpty_002efump'
          }
        },
        'up' => {}
      },
      'normalized' => 'blah_003ablah'
    }
  },
  {},
  {},
  {},
  {
    'extra' => {
      'normalized' => 'top-secret-node'
    }
  }
];
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names_info'}[0];
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names_info'}[0];
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names_info'}[1];
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names_info'}[0];
$result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names_info'}[0];
$result_menus{'quote_node_names_info'}[2] = $result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names_info'}[3] = $result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names_info'}[4] = $result_menus{'quote_node_names_info'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'quote_node_names_info'} = [
  {
    'error_line' => 'warning: @menu entry node name `blah@asis{:}blah\' different from node name `blah:blah\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 34,
    'text' => '@menu entry node name `blah@asis{:}blah\' different from node name `blah:blah\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `blumpty@asis{.}fump\' different from node name `blumpty.fump\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 35,
    'text' => '@menu entry node name `blumpty@asis{.}fump\' different from node name `blumpty.fump\'',
    'type' => 'warning'
  },
  {
    'error_line' => '@menu reference to nonexistent node `u.al)ext::
\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 38,
    'text' => '@menu reference to nonexistent node `u.al)ext::
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `top secret node\' unreferenced
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 56,
    'text' => 'node `top secret node\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'quote_node_names_info'} = {};


$result_converted_errors{'file_info'}->{'quote_node_names_info'} = [
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 4,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 5,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 7,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 8,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 10,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  }
];


1;
