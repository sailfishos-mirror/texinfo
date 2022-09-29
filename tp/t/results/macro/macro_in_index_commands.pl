use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_index_commands'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'cp',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'cp
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' cp
'
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
              'parent' => {},
              'text' => 'fn',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'fn
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' fn 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'syncodeindexcommand',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@syncodeindex
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' syncodeindexcommand 
'
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => 'syncodeindexcommand'
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
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'truc
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' truc 
'
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
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
              'parent' => {},
              'text' => 'trucindexcommand',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '@trucindex
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' trucindexcommand 
'
          },
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'codeidx',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'codeidx
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' codeidx 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 30,
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
              'text' => 'defcodeindexentry',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a @var{index entry} t@\'e @^{@dotless{i}}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 34,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' defcodeindexentry 
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 32,
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
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'trucindex',
              'index_ignore_chars' => {},
              'index_name' => 'truc',
              'index_type_command' => 'trucindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 38,
            'macro' => 'trucindexcommand'
          },
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 40,
                    'macro' => 'defcodeindexentry'
                  }
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
                  'cmdname' => '\'',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 40,
                    'macro' => 'defcodeindexentry'
                  }
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
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 40,
                            'macro' => 'defcodeindexentry'
                          }
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '^',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 40,
                    'macro' => 'defcodeindexentry'
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
          'cmdname' => 'codeidxindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'codeidxindex',
              'index_ignore_chars' => {},
              'index_name' => 'codeidx',
              'index_type_command' => 'codeidxindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 40,
            'macro' => ''
          },
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
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'kindex',
              'index_ignore_chars' => {},
              'index_name' => 'ky',
              'index_type_command' => 'kindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 42,
            'macro' => ''
          },
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
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 1,
              'index_at_command' => 'pindex',
              'index_ignore_chars' => {},
              'index_name' => 'pg',
              'index_type_command' => 'pindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 43,
            'macro' => ''
          },
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
              'text' => 'macro truc
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 46,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'macro cp
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 49,
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
        'isindex' => 1,
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
        'line_nr' => 36,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[5];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[15]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[15];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[3];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[8];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[9]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[9];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[11];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[12];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'macro_in_index_commands'}{'contents'}[1];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'macro_in_index_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_index_commands'}{'contents'}[1]{'parent'} = $result_trees{'macro_in_index_commands'};

$result_texis{'macro_in_index_commands'} = '@macro cp
cp
@end macro
@macro fn 
fn
@end macro
@macro syncodeindexcommand 
@syncodeindex
@end macro

@syncodeindex cp fn
@syncodeindex cp fn

@macro truc 
truc
@end macro

definedx truc
@defindex truc
after

@macro trucindexcommand 
@trucindex
@end macro

@macro codeidx 
codeidx
@end macro

@defcodeindex codeidx

@macro defcodeindexentry 
a @var{index entry} t@\'e @^{@dotless{i}}
@end macro

@node Top

@trucindex index truc

@codeidxindex a @var{index entry} t@\'e @^{@dotless{i}}

@kindex truc kindex
@pindex pindex codeidx

macro truc
@printindex truc

macro cp
@printindex cp

';


$result_texts{'macro_in_index_commands'} = '


definedx truc
after









macro truc

macro cp

';

$result_nodes{'macro_in_index_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_menus{'macro_in_index_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  }
};

$result_errors{'macro_in_index_commands'} = [
  {
    'error_line' => 'warning: printing an index `cp\' merged in another one, `fn\'
',
    'file_name' => '',
    'line_nr' => 49,
    'macro' => '',
    'text' => 'printing an index `cp\' merged in another one, `fn\'',
    'type' => 'warning'
  }
];


$result_indices{'macro_in_index_commands'} = {
  'index_names' => {
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
    'fn' => {
      'contained_indices' => {
        'cp' => 1,
        'fn' => 1
      },
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'contained_indices' => {
        'ky' => 1
      },
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'contained_indices' => {
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
      'contained_indices' => {
        'truc' => 1
      },
      'in_code' => 0,
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


$result_floats{'macro_in_index_commands'} = {};


$result_indices_sort_strings{'macro_in_index_commands'} = {
  'codeidx' => [
    'a index entry te\' i^'
  ],
  'ky' => [
    'truc kindex'
  ],
  'pg' => [
    'pindex codeidx'
  ],
  'truc' => [
    'index truc'
  ]
};


1;
