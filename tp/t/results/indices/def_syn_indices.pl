use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'def_syn_indices'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'def_syn_indices.info'
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
            'text_arg' => 'def_syn_indices.info'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'cp fn'
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
          'cmdname' => 'syncodeindex',
          'extra' => {
            'misc_args' => [
              'cp',
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
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
      'type' => 'text_root'
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
        'line_nr' => 5,
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
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
              'text' => 'Chapter index'
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Chapter-index'
          }
        ],
        'normalized' => 'Chapter-index',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 8,
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
              'text' => 'Index'
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
              'text' => 'definedx truc
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'truc'
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
              'cmdname' => 'defindex',
              'extra' => {
                'misc_args' => [
                  'truc'
                ],
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'after
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'index truc'
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
          'cmdname' => 'trucindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'trucindex',
              'index_name' => 'truc',
              'index_type_command' => 'trucindex',
              'key' => 'index truc',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'text' => 'codeidx'
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
          'cmdname' => 'defcodeindex',
          'extra' => {
            'misc_args' => [
              'codeidx'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 17,
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
                  'text' => 'a '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'index entry'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' t'
                },
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
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
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
                                  'text' => 'i'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'dotless',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 19,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 19,
                    'macro' => ''
                  },
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
          'cmdname' => 'codeidxindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'codeidxindex',
              'index_name' => 'codeidx',
              'index_type_command' => 'codeidxindex',
              'key' => "a index entry t\x{1ebd} \x{ee}",
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'text' => 'cindex entry'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'cindex',
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'key' => 'cindex entry',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'text' => 'ky pg'
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
          'cmdname' => 'syncodeindex',
          'extra' => {
            'misc_args' => [
              'ky',
              'pg'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 23,
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
                  'text' => 'truc kindex'
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
          'cmdname' => 'kindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'kindex',
              'index_name' => 'ky',
              'index_type_command' => 'kindex',
              'key' => 'truc kindex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'pindex codeidx'
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
          'cmdname' => 'pindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 1,
              'index_at_command' => 'pindex',
              'index_name' => 'pg',
              'index_type_command' => 'pindex',
              'key' => 'pindex codeidx',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 26,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'text' => 'truc cp'
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
          'cmdname' => 'synindex',
          'extra' => {
            'misc_args' => [
              'truc',
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 28,
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
                  'text' => 'abc'
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
          'cmdname' => 'defindex',
          'extra' => {
            'misc_args' => [
              'abc'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
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
                  'text' => 'defg'
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
          'cmdname' => 'defindex',
          'extra' => {
            'misc_args' => [
              'defg'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 31,
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
                  'text' => 'abc defg'
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
          'cmdname' => 'synindex',
          'extra' => {
            'misc_args' => [
              'abc',
              'defg'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 33,
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
                  'text' => 'defg ky'
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
          'cmdname' => 'synindex',
          'extra' => {
            'misc_args' => [
              'defg',
              'ky'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 34,
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
                  'text' => 'defg index entry'
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
          'cmdname' => 'defgindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'defgindex',
              'index_name' => 'defg',
              'index_type_command' => 'defgindex',
              'key' => 'defg index entry',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 36,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
                  'text' => 'abc index entry'
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
          'cmdname' => 'abcindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'abcindex',
              'index_name' => 'abc',
              'index_type_command' => 'abcindex',
              'key' => 'abc index entry',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => ''
          },
          'parent' => {},
          'type' => 'index_entry_command'
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
              'text' => 'pg
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
                  'text' => 'pg'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'pg'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 41,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'ky
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
                  'text' => 'ky'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'ky'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 44,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'truc
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
                  'text' => 'truc'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'truc'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 47,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'value truc
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
                  'text' => 'truc'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'truc'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 50,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'cp
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 53,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'value cp
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 56,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'defg
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
                  'text' => 'defg'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'defg'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 59,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'abc
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
                  'text' => 'abc'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'abc'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 62,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'fn
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
                  'text' => 'fn'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'fn'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 65,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[2];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'};
$result_trees{'def_syn_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[1]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'def_syn_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'def_syn_indices'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[1]{'parent'} = $result_trees{'def_syn_indices'};
$result_trees{'def_syn_indices'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[2]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[2];
$result_trees{'def_syn_indices'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[2];
$result_trees{'def_syn_indices'}{'contents'}[2]{'parent'} = $result_trees{'def_syn_indices'};
$result_trees{'def_syn_indices'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[3]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'def_syn_indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'def_syn_indices'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[3]{'parent'} = $result_trees{'def_syn_indices'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[5];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[1];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[11]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[11];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[14]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[15]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[16]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[16];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[16]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[17]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[18]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[18];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[18]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[19]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[19]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[19]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[19];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[19]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[20]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[21]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[21]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[21]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[21];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[21]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[22]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[22];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[22]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[23]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[24]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[25]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'extra'}{'index_entry'}{'command'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'extra'}{'index_entry'}{'content'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'args'}[0]{'contents'};
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'extra'}{'index_entry'}{'node'} = $result_trees{'def_syn_indices'}{'contents'}[3];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[26]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[27]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[28];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[28]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[29]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[29]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[29];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[29]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[30]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[31]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[31];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[31]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[32]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[32]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[32];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[32]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[33]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[34];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[34]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[35]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[35]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[35]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[35];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[35]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[36]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[37]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[37];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[37]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[38]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[38]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[38]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[38];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[38]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[39]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[40]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[40];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[40]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[41]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[41]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[41]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[41];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[41]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[42]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[43]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[43];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[43]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[44]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[44]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[44]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[44];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[44]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[45]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[46];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[46]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[47]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[47]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[47]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[47];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[47]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[48]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[49]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[49];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[49]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[50]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[50]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[50]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[50];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[50]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[51]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[52]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[52];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[52]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[53]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[53]{'args'}[0];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[53]{'args'}[0]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[53];
$result_trees{'def_syn_indices'}{'contents'}[4]{'contents'}[53]{'parent'} = $result_trees{'def_syn_indices'}{'contents'}[4];
$result_trees{'def_syn_indices'}{'contents'}[4]{'parent'} = $result_trees{'def_syn_indices'};

$result_texis{'def_syn_indices'} = '@setfilename def_syn_indices.info

@syncodeindex cp fn

@node Top
@top top

@node Chapter index
@chapter Index

definedx truc
@defindex truc
after

@trucindex index truc

@defcodeindex codeidx

@codeidxindex a @var{index entry} t@~e @^{@dotless{i}}

@cindex cindex entry

@syncodeindex ky pg

@kindex truc kindex
@pindex pindex codeidx

@synindex truc cp

@defindex abc
@defindex defg

@synindex abc defg
@synindex defg ky

@defgindex defg index entry

@abcindex abc index entry

pg
@printindex pg

ky
@printindex ky

truc
@printindex truc

value truc
@printindex truc

cp
@printindex cp

value cp
@printindex cp

defg
@printindex defg

abc
@printindex abc

fn
@printindex fn
';


$result_texts{'def_syn_indices'} = '

top
***

1 Index
*******

definedx truc
after












pg

ky

truc

value truc

cp

value cp

defg

abc

fn
';

$result_sectioning{'def_syn_indices'} = {
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
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'Chapter-index',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'def_syn_indices'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'def_syn_indices'}{'section_childs'}[0];
$result_sectioning{'def_syn_indices'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'def_syn_indices'}{'section_childs'}[0];
$result_sectioning{'def_syn_indices'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'def_syn_indices'}{'section_childs'}[0];
$result_sectioning{'def_syn_indices'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'def_syn_indices'};

$result_nodes{'def_syn_indices'} = {
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
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'isindex' => 1,
      'normalized' => 'Chapter-index',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'def_syn_indices'}{'node_next'}{'node_prev'} = $result_nodes{'def_syn_indices'};
$result_nodes{'def_syn_indices'}{'node_next'}{'node_up'} = $result_nodes{'def_syn_indices'};

$result_menus{'def_syn_indices'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'def_syn_indices'} = [
  {
    'error_line' => ':44: warning: printing an index `ky\' merged in another one, `pg\'
',
    'file_name' => '',
    'line_nr' => 44,
    'macro' => '',
    'text' => 'printing an index `ky\' merged in another one, `pg\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':47: warning: printing an index `truc\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 47,
    'macro' => '',
    'text' => 'printing an index `truc\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':50: warning: printing an index `truc\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 50,
    'macro' => '',
    'text' => 'printing an index `truc\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':53: warning: printing an index `cp\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 53,
    'macro' => '',
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':56: warning: printing an index `cp\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 56,
    'macro' => '',
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':59: warning: printing an index `defg\' merged in another one, `pg\'
',
    'file_name' => '',
    'line_nr' => 59,
    'macro' => '',
    'text' => 'printing an index `defg\' merged in another one, `pg\'',
    'type' => 'warning'
  },
  {
    'error_line' => ':62: warning: printing an index `abc\' merged in another one, `pg\'
',
    'file_name' => '',
    'line_nr' => 62,
    'macro' => '',
    'text' => 'printing an index `abc\' merged in another one, `pg\'',
    'type' => 'warning'
  }
];


$result_indices{'def_syn_indices'} = {
  'index_names' => {
    'abc' => {
      'in_code' => 0,
      'merged_in' => 'pg',
      'name' => 'abc'
    },
    'codeidx' => {
      'contained_indices' => {
        'codeidx' => 1
      },
      'in_code' => 1,
      'name' => 'codeidx'
    },
    'cp' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'cp'
    },
    'defg' => {
      'in_code' => 0,
      'merged_in' => 'pg',
      'name' => 'defg'
    },
    'fn' => {
      'contained_indices' => {
        'cp' => 1,
        'fn' => 1,
        'truc' => 1
      },
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
      'merged_in' => 'pg',
      'name' => 'ky'
    },
    'pg' => {
      'contained_indices' => {
        'abc' => 1,
        'defg' => 1,
        'ky' => 1,
        'pg' => 1
      },
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'contained_indices' => {
        'tp' => 1
      },
      'in_code' => 1,
      'name' => 'tp'
    },
    'truc' => {
      'in_code' => 0,
      'merged_in' => 'fn',
      'name' => 'truc'
    },
    'vr' => {
      'contained_indices' => {
        'vr' => 1
      },
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'def_syn_indices'} = {};



$result_converted{'info'}->{'def_syn_indices'} = 'This is def_syn_indices.info, produced from .


File: def_syn_indices.info,  Node: Top,  Next: Chapter index,  Up: (dir)

top
***

* Menu:

* Chapter index::


File: def_syn_indices.info,  Node: Chapter index,  Prev: Top,  Up: Top

1 Index
*******

definedx truc after

   pg

 [index ]
* Menu:

* abc index entry:                       Chapter index.         (line 8)
* defg index entry:                      Chapter index.         (line 8)
* pindex codeidx:                        Chapter index.         (line 8)
* truc kindex:                           Chapter index.         (line 8)

   ky

   truc

   value truc

   cp

   value cp

   defg

   abc

   fn

 [index ]
* Menu:

* cindex entry:                          Chapter index.         (line 8)
* index truc:                            Chapter index.         (line 8)



Tag Table:
Node: Top47
Node: Chapter index160

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'def_syn_indices'} = 'top
***

1 Index
*******

definedx truc after

   pg

* Menu:

* abc index entry:                       Chapter index.         (line 8)
* defg index entry:                      Chapter index.         (line 8)
* pindex codeidx:                        Chapter index.         (line 8)
* truc kindex:                           Chapter index.         (line 8)

   ky

   truc

   value truc

   cp

   value cp

   defg

   abc

   fn

* Menu:

* cindex entry:                          Chapter index.         (line 8)
* index truc:                            Chapter index.         (line 8)

';


$result_converted{'html_text'}->{'def_syn_indices'} = '

<div class="top" id="Top">
<div class="header">
<p>
 &nbsp; [<a href="#Chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="top"></span><h1 class="top">top</h1>

<ul class="section-toc">
<li><a href="#Chapter-index" accesskey="1">Index</a></li>
</ul>
<hr>
<div class="chapter" id="Chapter-index">
<div class="header">
<p>
 &nbsp; [<a href="#Chapter-index" title="Index" rel="index">Index</a>]</p>
</div>
<span id="Index"></span><h2 class="chapter">1 Index</h2>

<p>definedx truc
after
</p>
<span id="index-index-truc"></span>


<span id="index-a-index-entry-te-i"></span>

<span id="index-cindex-entry"></span>


<span id="index-truc-kindex"></span>
<span id="index-pindex-codeidx"></span>




<span id="index-defg-index-entry"></span>

<span id="index-abc-index-entry"></span>

<p>pg
</p><table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_pg_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-pg" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_pg_letter-A">A</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-abc-index-entry">abc index entry</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_pg_letter-D">D</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-defg-index-entry">defg index entry</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_pg_letter-P">P</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-pindex-codeidx"><code>pindex codeidx</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_pg_letter-T">T</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-truc-kindex"><code>truc kindex</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_pg_letter-A"><b>A</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-D"><b>D</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-P"><b>P</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_pg_letter-T"><b>T</b></a>
 &nbsp; 
</td></tr></table>

<p>ky
</p>
<p>truc
</p>
<p>value truc
</p>
<p>cp
</p>
<p>value cp
</p>
<p>defg
</p>
<p>abc
</p>
<p>fn
</p><table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_fn_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-fn" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_fn_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-cindex-entry"><code>cindex entry</code></a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_fn_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-index-truc">index truc</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Chapter-index">Chapter index</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_fn_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_fn_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>
</div>
';

1;
