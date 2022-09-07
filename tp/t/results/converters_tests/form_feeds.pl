use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'form_feeds'} = {
  'contents' => [
    {
      'contents' => [],
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
        }
      ],
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
        'line_nr' => 1,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'firstnode'
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
              'parent' => {},
              'text' => 'aa'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'bb
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
              'text' => 'cc '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'dd
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
                      'text' => 'end in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
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
                      'text' => 'begin in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 13,
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'middle in code'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
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
                      'text' => 'firstnode'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'first-node'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
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
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in example
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
                  'text' => 'around center'
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
            'spaces_before_argument' => '  '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 23,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in center'
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in indicateurl'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => '  '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'indicateurl',
              'contents' => [],
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
          'cmdname' => 'deffn',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'truc'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'category',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'machin'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'name',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'bidule'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
                    },
                    {
                      'extra' => {
                        'def_role' => 'spaces'
                      },
                      'parent' => {},
                      'text' => '  ',
                      'type' => 'spaces'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'chose'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => '  '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'arg'
                        }
                      ],
                      'extra' => {
                        'def_role' => 'arg',
                        'spaces_after_argument' => ' ',
                        'spaces_before_argument' => '  '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'type' => 'bracketed_def_content'
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
                'def_command' => 'deffn',
                'def_parsed_hash' => {
                  'category' => {},
                  'name' => {}
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
                  'index_at_command' => 'deffn',
                  'index_ignore_chars' => {},
                  'index_name' => 'fn',
                  'index_type_command' => 'deffn',
                  'node' => {},
                  'number' => 1
                },
                'original_def_cmdname' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
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
                      'text' => 'T
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
                      'text' => 'deffn'
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
                'text_arg' => 'deffn'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
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
                  'text' => 'a float
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
                          'text' => 'within '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    },
                    {
                      'parent' => {},
                      'text' => '',
                      'type' => 'empty_line'
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'empty_spaces_before_paragraph'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cation '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    },
                    {
                      'parent' => {},
                      'text' => '',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'caption',
              'contents' => [],
              'extra' => {
                'float' => {},
                'spaces_before_argument' => ' '
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
              'text' => '  ',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Toto
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
                          'text' => 'shc within '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    },
                    {
                      'parent' => {},
                      'text' => '',
                      'type' => 'empty_line'
                    },
                    {
                      'parent' => {},
                      'text' => ' ',
                      'type' => 'empty_spaces_before_paragraph'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'shortcaption '
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    },
                    {
                      'parent' => {},
                      'text' => '',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'shortcaption',
              'contents' => [],
              'extra' => {
                'float' => {},
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '  ',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'After shc
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
                'line_nr' => 36,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'shortcaption' => {},
            'type' => {
              'normalized' => ''
            }
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
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'first-node'
          }
        ],
        'normalized' => 'first-node',
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
$result_trees{'form_feeds'}{'contents'}[0]{'parent'} = $result_trees{'form_feeds'};
$result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[1]{'parent'} = $result_trees{'form_feeds'};
$result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[11]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[12]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[13]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[14]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[15]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[16]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[17]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'extra'}{'label'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[18]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[19]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'extra'}{'end_command'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[20]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[21]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[22]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[22];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[22]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[23]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[23]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[23]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[23];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[23]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[24]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[25]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[26]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[6];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[8];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'category'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'def_parsed_hash'}{'name'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'index_entry'}{'content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'extra'}{'end_command'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[27]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[28]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'extra'}{'float'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[3];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'extra'}{'float'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[5]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[6];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[6]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7]{'args'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'extra'}{'caption'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[1];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'extra'}{'end_command'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[7];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'extra'}{'shortcaption'} = $result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'contents'}[4];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[29]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'contents'}[30]{'parent'} = $result_trees{'form_feeds'}{'contents'}[2];
$result_trees{'form_feeds'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'form_feeds'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'form_feeds'}{'contents'}[2]{'parent'} = $result_trees{'form_feeds'};

$result_texis{'form_feeds'} = '@node Top

@node firstnode

 

aabb

cc  dd

@code{end in code}

@code{begin in code}

@code{middle in code}

@xref{firstnode}

@example 
in example
@end example

@center  around center 
@center in center

@indicateurl{  in indicateurl}

@deffn { truc } { machin }  { bidule }  {  chose } {  arg }
T
@end deffn

@float
a float
@caption{ within  cation }  Toto
@shortcaption{ shc within  shortcaption }  After shc
@end float 

';


$result_texts{'form_feeds'} = '

 

aabb

cc dd

end in code

begin in code

middle in code

firstnode

in example

around center
in center

in indicateurl

truc: machin bidule  chose arg
T

a float
Toto
After shc

';

$result_nodes{'form_feeds'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'first-node'
      },
      'structure' => {
        'node_prev' => {}
      }
    }
  }
};
$result_nodes{'form_feeds'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'form_feeds'};

$result_menus{'form_feeds'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'form_feeds'} = [];


$result_floats{'form_feeds'} = {
  '' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'type' => {
          'normalized' => ''
        }
      },
      'structure' => {}
    }
  ]
};
$result_floats{'form_feeds'}{''}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'form_feeds'}{''}[0];
$result_floats{'form_feeds'}{''}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'form_feeds'}{''}[0];


$result_indices_sort_strings{'form_feeds'} = {
  'fn' => [
    'machin'
  ]
};



$result_converted{'plaintext'}->{'form_feeds'} = 'aa

   bb

   cc

   dd

   ‘end in code’

   ‘begin in code’

   ‘middlein code’

   *Note firstnode::

     in example

                             around center
                               in center

   ‘in indicateurl’

 -- truc: machin bidule chose arg
     T

a float
Toto
After shc

within

cation

';


$result_converted{'html_text'}->{'form_feeds'} = '<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="node">Top</h1>

<hr>
<a class="node-id" id="first-node"></a><div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h4 class="node">first&#12;node</h4>

&#12; &#12;

<p>aa</p>&#12;<p>bb
</p>
<p>cc </p>&#12;<p>dd
</p>
<p><code class="code">end in code&#12;</code>
</p>
<p><code class="code">&#12;begin in code</code>
</p>
<p><code class="code">middle&#12; in code</code>
</p>
<p>See <a class="xref" href="#first-node">first&#12;node</a>
</p>
<div class="example">
<pre class="example-preformatted">in example
</pre></div>

<div class="center">around center
</div><div class="center">in &#12;center
</div>
<p>&lsquo;<code class="indicateurl">in indicateurl</code>&rsquo;
</p>
<dl class="first-deffn">
<dt class="deffn" id="index-machin"><span class="category-def">truc: </span><span><strong class="def-name">machin</strong> <var class="def-var-arguments">bidule  chose arg</var><a class="copiable-link" href=\'#index-machin\'> &para;</a></span></dt>
<dd><p>T
</p></dd></dl>

<div class="float">
<p>a float
</p><p>Toto
</p><p>After shc
</p><div class="caption"><p>within </p>&#12;<p>cation </p>&#12;</div></div>
';


$result_converted{'xml'}->{'form_feeds'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">first&formfeed;node</nodenext></node>

<node name="first-node" spaces=" "><nodename>first&formfeed;node</nodename><nodeprev automatic="on">Top</nodeprev></node>

&formfeed; &formfeed;

<para>aa</para>&formfeed;<para>bb
</para>
<para>cc </para>&formfeed; <para>dd
</para>
<para><code>end in code&formfeed;</code>
</para>
<para><code>&formfeed;begin in code</code>
</para>
<para><code>middle&formfeed; in code</code>
</para>
<para><xref label="first-node"><xrefnodename>first&formfeed;node</xrefnodename></xref>
</para>
<example endspaces=" "> &formfeed;
<pre xml:space="preserve">in example
</pre></example>

<center spaces=" \\f ">around center &formfeed;</center>
<center spaces=" ">in &formfeed;center</center>

<para><indicateurl spaces=" \\f ">in indicateurl</indicateurl>
</para>
<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">machin</indexterm><defcategory bracketed="on" spaces=" \\f">truc</defcategory> <deffunction bracketed="on" spaces=" ">machin</deffunction>  <defparam bracketed="on" spaces=" ">bidule</defparam>  <defparam bracketed="on" spaces=" \\f ">chose</defparam> <defparam bracketed="on" spaces="  ">arg</defparam></definitionterm>
<definitionitem><para>T
</para></definitionitem></deffn>

<float type="" endspaces=" ">
<para>a float
</para><caption spaces="\\f "><para>within </para>&formfeed; <para>cation </para>&formfeed;</caption> &formfeed; <para>Toto
</para><shortcaption spaces="\\f "><para>shc within </para>&formfeed; <para>shortcaption </para>&formfeed;</shortcaption> &formfeed; <para>After shc
</para></float> &formfeed;

';


$result_converted{'docbook'}->{'form_feeds'} = '<anchor id="first-node"/>

   

<para>aa</para> <para>bb
</para>
<para>cc </para> <para>dd
</para>
<para><literal>end in code </literal>
</para>
<para><literal> begin in code</literal>
</para>
<para><literal>middle  in code</literal>
</para>
<para>See <link linkend="first-node">first node</link>
</para>
<screen>in example
</screen>
<simpara role="center">around center</simpara>
<simpara role="center">in  center</simpara>

<para><literal>in indicateurl</literal>
</para>
<synopsis><indexterm role="fn"><primary>machin</primary></indexterm><phrase role="category"><emphasis role="bold">truc</emphasis>:</phrase> <function>machin</function>  <emphasis role="arg">bidule</emphasis>  <emphasis role="arg">chose</emphasis> <emphasis role="arg">arg</emphasis></synopsis>
<blockquote><para>T
</para></blockquote>
<para>a float
</para><para>Toto
</para><para>After shc
</para>
';


$result_converted{'latex_text'}->{'form_feeds'} = '\\label{anchor:Top}%
\\label{anchor:first-node}%

\\par{}

aa\\par{}
bb

cc \\par{}
 dd

\\texttt{end in code}

\\texttt{begin in code}

\\texttt{middle in code}

See \\hyperref[anchor:first-node]{[firstnode], page~\\pageref*{anchor:first-node}}

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily in example
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}

\\begin{center}
around center
\\end{center}
\\begin{center}
in center
\\end{center}

`\\texttt{in indicateurl}\'


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill
\\hangindent=2em
\\texttt{machin \\EmbracOn{}\\textnormal{\\textsl{bidule  chose arg}}\\EmbracOff{}}& [truc]
\\end{tabularx}

\\index[fn]{machin@\\texttt{machin}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
T
\\end{quote}

\\begin{TexinfoFloat}
a float
\\caption[shc within \\par{}
 shortcaption \\par{}
]{within \\par{}
 cation \\par{}
}
\\par{}Toto
\\par{}After shc
\\end{TexinfoFloat}

';

1;
