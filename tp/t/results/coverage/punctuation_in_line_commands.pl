use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'punctuation_in_line_commands'} = {
  'contents' => [
    {
      'contents' => [
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
              'text' => 'node! After punc'
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
        'isindex' => 1,
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'node_0021-After-punc'
          }
        ],
        'normalized' => 'node_0021-After-punc',
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
              'text' => 'top! After punc'
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
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'asis',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
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
                              'text' => 'item! After punc'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'text_arg' => 'table'
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
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
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
                  'text' => 'quotation arg! After punc'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In quotation
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
                      'text' => 'exdent quotation! After punc'
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
              'cmdname' => 'exdent',
              'extra' => {
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
                      'text' => 'quotation'
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
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
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
                  'text' => 'float type! After punc'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'float label! After punc'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In float
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'shortcaption! After punc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'shortcaption',
              'extra' => {
                'float' => {}
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'float'
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
                'text_arg' => 'float'
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
            'float_section' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'float-label_0021-After-punc',
            'shortcaption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'float type! After punc'
            }
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'float type! After punc'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'label with caption'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
',
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In float with caption.
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'caption! After punc'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'extra' => {
                'float' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
                      'text' => 'float'
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
                'text_arg' => 'float'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'float_section' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'label-with-caption',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'float type! After punc'
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'float type! After punc'
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
          'cmdname' => 'listoffloats',
          'extra' => {
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'float type! After punc'
            }
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 24,
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
                  'text' => 'index! After punc'
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
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
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
                  'text' => 'heading! After punc'
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
          'cmdname' => 'heading',
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
                  'text' => 'titlefont! After punc'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'titlefont',
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
'
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
                  'text' => 'center! After punc'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => ' '
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
            'line_nr' => 34,
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
          'cmdname' => 'contents',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 36,
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
        'line_nr' => 3,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'punctuation_in_line_commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'};
$result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'};
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'extra'}{'float'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'extra'}{'float_section'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'extra'}{'shortcaption'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'extra'}{'type'}{'content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'extra'}{'float'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[3];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'extra'}{'caption'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'extra'}{'float_section'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[1]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'extra'}{'type'}{'content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'extra'}{'type'}{'content'}[0] = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'args'}[0]{'contents'};
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[1];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[13]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[13]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[13];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[13]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[14]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[15]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[15];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[15]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[16]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[17]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[18];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[18]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[19]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[20]{'args'}[0];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[20];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[20]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[21]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[22];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[22]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'contents'}[23]{'parent'} = $result_trees{'punctuation_in_line_commands'}{'contents'}[2];
$result_trees{'punctuation_in_line_commands'}{'contents'}[2]{'parent'} = $result_trees{'punctuation_in_line_commands'};

$result_texis{'punctuation_in_line_commands'} = '
@node node! After punc
@top top! After punc

@table @asis
@item item! After punc
@end table

@quotation quotation arg! After punc
In quotation
@exdent exdent quotation! After punc
@end quotation

@float float type! After punc, float label! After punc
In float
@shortcaption{shortcaption! After punc}
@end float

@float float type! After punc, label with caption
In float with caption.
@caption{caption! After punc}
@end float

@listoffloats float type! After punc

@cindex index! After punc

@heading heading! After punc

@titlefont{titlefont! After punc}

@center center! After punc

@printindex cp

@contents

';


$result_texts{'punctuation_in_line_commands'} = '
top! After punc
***************

item! After punc

quotation arg! After punc
In quotation
exdent quotation! After punc

float type! After punc, float label! After punc
In float


float type! After punc, label with caption
In float with caption.




heading! After punc
===================

titlefont! After punc

center! After punc



';

$result_sectioning{'punctuation_in_line_commands'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
              'normalized' => 'node_0021-After-punc'
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
$result_sectioning{'punctuation_in_line_commands'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'punctuation_in_line_commands'};

$result_nodes{'punctuation_in_line_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'normalized' => 'node_0021-After-punc'
  }
};

$result_menus{'punctuation_in_line_commands'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'node_0021-After-punc'
  }
};

$result_errors{'punctuation_in_line_commands'} = [];


$result_floats{'punctuation_in_line_commands'} = {
  'float type! After punc' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'float_section' => {
          'cmdname' => 'top',
          'extra' => {},
          'structure' => {}
        },
        'normalized' => 'float-label_0021-After-punc',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'content' => [
            {
              'text' => 'float type! After punc'
            }
          ],
          'normalized' => 'float type! After punc'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    },
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'float_section' => {},
        'normalized' => 'label-with-caption',
        'type' => {
          'content' => [
            {
              'text' => 'float type! After punc'
            }
          ],
          'normalized' => 'float type! After punc'
        }
      },
      'structure' => {
        'float_number' => 2
      }
    }
  ]
};
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0];
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1];
$result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[1]{'extra'}{'float_section'} = $result_floats{'punctuation_in_line_commands'}{'float type! After punc'}[0]{'extra'}{'float_section'};


$result_indices_sort_strings{'punctuation_in_line_commands'} = {
  'cp' => [
    'index! After punc'
  ]
};



$result_converted{'plaintext'}->{'punctuation_in_line_commands'} = 'top! After punc
***************

item! After punc

     quotation arg! After punc: In quotation
exdent quotation!  After punc

In float


float type! After punc 1: shortcaption!  After punc

In float with caption.


float type! After punc 2: caption!  After punc

* Menu:

* float type! After punc 1: float label! After punc.
                                         shortcaption!  After punc
* float type! After punc 2: label with caption.
                                         caption!  After punc

heading! After punc
===================

titlefont! After punc
*********************

                          center! After punc

* Menu:

* index! After punc:                     node! After punc.     (line 25)

top! After punc
';


$result_converted{'html_text'}->{'punctuation_in_line_commands'} = '
<div class="top-level-extent" id="node_0021-After-punc">
<h1 class="top" id="top_0021-After-punc">top! After punc</h1>

<dl class="table">
<dt>item! After punc</dt>
</dl>

<blockquote class="quotation">
<p><b class="b">quotation arg! After punc:</b> In quotation
</p><p class="exdent">exdent quotation! After punc
</p></blockquote>

<div class="float" id="float-label_0021-After-punc">
<p>In float
</p>
<div class="shortcaption"><p><strong class="strong">float type! After punc 1: </strong>shortcaption! After punc</p></div></div>
<div class="float" id="label-with-caption">
<p>In float with caption.
</p>
<div class="caption"><p><strong class="strong">float type! After punc 2: </strong>caption! After punc</p></div></div>
<dl class="listoffloats">
<dt><a href="#float-label_0021-After-punc">float type! After punc 1</a></dt><dd class="shortcaption-in-listoffloats"><p>shortcaption! After punc</p></dd>
<dt><a href="#label-with-caption">float type! After punc 2</a></dt><dd class="caption-in-listoffloats"><p>caption! After punc</p></dd>
</dl>

<a class="index-entry-id" id="index-index_0021-After-punc"></a>

<h3 class="heading" id="heading_0021-After-punc">heading! After punc</h3>

<h1 class="titlefont">titlefont! After punc</h1>

<div class="center">center! After punc
</div>
<div class="printindex cp-printindex">
<table class="cp-entries-printindex" border="0">
<tr><td></td><th class="entries-header-printindex">Index Entry</th><td>&nbsp;</td><th class="sections-header-printindex"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_i_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td class="printindex-index-entry"><a href="#index-index_0021-After-punc">index! After punc</a>:</td><td>&nbsp;</td><td class="printindex-index-section"><a href="#node_0021-After-punc">node! After punc</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
</div>


</div>
';


$result_converted{'xml'}->{'punctuation_in_line_commands'} = '
<node name="node_0021-After-punc" spaces=" "><nodename>node! After punc</nodename></node>
<top spaces=" "><sectiontitle>top! After punc</sectiontitle>

<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">item! After punc</itemformat></item>
</tableterm></tableentry></table>

<quotation spaces=" " endspaces=" "><quotationtype>quotation arg! After punc</quotationtype>
<para>In quotation
</para><exdent spaces=" ">exdent quotation! After punc</exdent>
</quotation>

<float name="float-label_0021-After-punc" type="float type! After punc" number="1" spaces=" " endspaces=" "><floattype>float type! After punc</floattype><floatname spaces=" ">float label! After punc</floatname>
<para>In float
</para><shortcaption><para>shortcaption! After punc</para></shortcaption>
</float>

<float name="label-with-caption" type="float type! After punc" number="2" spaces=" " endspaces=" "><floattype>float type! After punc</floattype><floatname spaces=" ">label with caption</floatname>
<para>In float with caption.
</para><caption><para>caption! After punc</para></caption>
</float>

<listoffloats type="float type! After punc" spaces=" ">float type! After punc</listoffloats>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index! After punc</indexterm></cindex>

<heading spaces=" ">heading! After punc</heading>

<titlefont>titlefont! After punc</titlefont>

<center spaces=" ">center! After punc</center>

<printindex spaces=" " value="cp" line="cp"></printindex>

<contents></contents>

</top>
';


$result_converted{'latex_text'}->{'punctuation_in_line_commands'} = '
\\part*{{top! After punc}}
\\label{anchor:node_0021-After-punc}%

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
item! After punc}}]
\\end{description}

\\begin{quote}
\\textbf{quotation arg! After punc:} In quotation
\\leavevmode{}\\\\
\\hbox{\\kern -\\leftmargin}%
exdent quotation! After punc
\\\\
\\end{quote}

\\begin{TexinfoFloatfloattypeAfterpunc}
In float
\\caption{shortcaption! After punc}

\\label{anchor:float-label_0021-After-punc}%
\\end{TexinfoFloatfloattypeAfterpunc}

\\begin{TexinfoFloatfloattypeAfterpunc}
In float with caption.
\\caption{caption! After punc}

\\label{anchor:label-with-caption}%
\\end{TexinfoFloatfloattypeAfterpunc}

\\listof{TexinfoFloatfloattypeAfterpunc}{}

\\index[cp]{index"! After punc}%

\\section*{{heading! After punc}}

{\\huge \\bfseries titlefont! After punc}

\\begin{center}
center! After punc
\\end{center}

\\printindex[cp]


';


$result_converted{'docbook'}->{'punctuation_in_line_commands'} = '<chapter label="" id="node_0021-After-punc">
<title>top! After punc</title>

<variablelist><varlistentry><term>item! After punc
</term></varlistentry></variablelist>
<blockquote><para><emphasis role="bold">quotation arg! After punc:</emphasis> In quotation
</para><simpara role="exdent">exdent quotation! After punc</simpara>
</blockquote>
<anchor id="float-label_0021-After-punc"/>
<para>In float
</para>

<anchor id="label-with-caption"/>
<para>In float with caption.
</para>


<indexterm role="cp"><primary>index! After punc</primary></indexterm>

<bridgehead renderas="sect1">heading! After punc</bridgehead>

titlefont! After punc

<simpara role="center">center! After punc</simpara>

<index role="cp"></index>


</chapter>
';

1;
