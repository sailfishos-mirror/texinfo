use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'float_and_refs'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'float_and_refs.info'
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
            'text_arg' => 'float_and_refs.info'
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
        'line_nr' => 3,
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
        'line_nr' => 4,
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
      'cmdname' => 'chapter',
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
              'contents' => [],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'no type'
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
                  'text' => 'no type
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
                          'text' => 'no type float'
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
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              },
              'parent' => {}
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'short no type float'
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
              'contents' => [],
              'extra' => {
                'float' => {}
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'float_section' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'no-type',
            'shortcaption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'normalized' => ''
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'number' => '1.1',
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
                  'text' => 'Thing'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'with type'
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
                  'text' => 'Something with
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
                          'text' => 'with type float'
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
              'contents' => [],
              'extra' => {
                'float' => {}
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'short with type float'
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
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              },
              'parent' => {}
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'float_section' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'with-type',
            'shortcaption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'Thing'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
            'macro' => ''
          },
          'number' => '1.1',
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
                  'text' => 'Figure'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'my figure'
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
                  'text' => 'In figure
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
                          'text' => 'caption for figure'
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
              'contents' => [],
              'extra' => {
                'float' => {}
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'short caption for figure'
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
              'contents' => [],
              'extra' => {
                'float' => {}
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              },
              'parent' => {}
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
                'command_argument' => 'float',
                'spaces_before_argument' => ' ',
                'text_arg' => 'float'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'caption' => {},
            'end_command' => {},
            'float_section' => {},
            'node_content' => [
              {}
            ],
            'normalized' => 'my-figure',
            'shortcaption' => {},
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'Figure'
            }
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'number' => '1.1',
          'parent' => {}
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'refs'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no type'
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
                  'normalized' => 'no-type'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'no type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'no-type'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 30,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'no type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'no-type'
                }
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
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 32,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'no type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'five'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 33,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
                      'text' => 'with type'
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
                  'normalized' => 'with-type'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 35,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'with type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'with-type'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 36,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'with type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'with-type'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 37,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'with type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'with type'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'five'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 39,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
                      'text' => 'my figure'
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
                  'normalized' => 'my-figure'
                }
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
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'my figure'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'my-figure'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 42,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'my figure'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
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
                  'normalized' => 'my-figure'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 43,
                'macro' => ''
              },
              'parent' => {}
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
                      'text' => 'my figure'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
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
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'my figure'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'two'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'three'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'four'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'five'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ]
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 45,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 27,
        'macro' => ''
      },
      'number' => 2,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'};
$result_trees{'float_and_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[1]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'};
$result_trees{'float_and_refs'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[2]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'};
$result_trees{'float_and_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[3]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'};
$result_trees{'float_and_refs'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'caption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'float_section'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'extra'}{'shortcaption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'caption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'float_section'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'shortcaption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'extra'}{'type'}{'content'}[0] = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'extra'}{'float'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'caption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'float_section'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'shortcaption'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'extra'}{'type'}{'content'}[0] = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'};
$result_trees{'float_and_refs'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'extra'}{'label'} = $result_trees{'float_and_refs'}{'contents'}[4]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[1];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[2];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[3];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[4];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[4]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'float_and_refs'}{'contents'}[5];
$result_trees{'float_and_refs'}{'contents'}[5]{'parent'} = $result_trees{'float_and_refs'};

$result_texis{'float_and_refs'} = '@setfilename float_and_refs.info

@node Top
@top top

@node chapter
@chapter chapter

@float , no type
no type
@caption{no type float}
@shortcaption{short no type float}
@end float

@float Thing, with type
Something with
@caption{with type float}
@shortcaption{short with type float}
@end float

@float Figure, my figure
In figure
@caption{caption for figure}
@shortcaption{short caption for figure}
@end float

@chapter refs

@xref{no type}.
@xref{no type, two}.
@xref{no type, two, three}.
@xref{no type, two, three, four}.
@xref{no type, two, three, four, five}.

@xref{with type}.
@xref{with type, two}.
@xref{with type, two, three}.
@xref{with type, two, three, four}.
@xref{with type, two, three, four, five}.

@xref{my figure}.
@xref{my figure, two}.
@xref{my figure, two, three}.
@xref{my figure, two, three, four}.
@xref{my figure, two, three, four, five}.

';


$result_texts{'float_and_refs'} = '
top
***

1 chapter
*********

no type
no type



Thing, with type
Something with



Figure, my figure
In figure



2 refs
******

no type.
no type.
no type.
no type.
no type.

with type.
with type.
with type.
with type.
with type.

my figure.
my figure.
my figure.
my figure.
my figure.

';

$result_sectioning{'float_and_refs'} = {
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
                'normalized' => 'chapter',
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
        },
        {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 2,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[1]{'section_up'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_up'} = $result_sectioning{'float_and_refs'}{'section_childs'}[0];
$result_sectioning{'float_and_refs'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'float_and_refs'};

$result_nodes{'float_and_refs'} = {
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
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'float_and_refs'}{'node_next'}{'node_prev'} = $result_nodes{'float_and_refs'};
$result_nodes{'float_and_refs'}{'node_next'}{'node_up'} = $result_nodes{'float_and_refs'};

$result_menus{'float_and_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'float_and_refs'} = [];


$result_floats{'float_and_refs'} = {
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
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'float',
            'spaces_before_argument' => ' ',
            'text_arg' => 'float'
          }
        },
        'float_section' => {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1
        },
        'normalized' => 'no-type',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'spaces_before_argument' => ' ',
        'type' => {
          'normalized' => ''
        }
      },
      'number' => '1.1'
    }
  ],
  'Figure' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'float',
            'spaces_before_argument' => ' ',
            'text_arg' => 'float'
          }
        },
        'float_section' => {},
        'normalized' => 'my-figure',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'spaces_before_argument' => ' ',
        'type' => {
          'content' => [
            {
              'text' => 'Figure'
            }
          ],
          'normalized' => 'Figure'
        }
      },
      'number' => '1.1'
    }
  ],
  'Thing' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'caption' => {
          'cmdname' => 'caption',
          'extra' => {
            'float' => {}
          }
        },
        'end_command' => {
          'cmdname' => 'end',
          'extra' => {
            'command_argument' => 'float',
            'spaces_before_argument' => ' ',
            'text_arg' => 'float'
          }
        },
        'float_section' => {},
        'normalized' => 'with-type',
        'shortcaption' => {
          'cmdname' => 'shortcaption',
          'extra' => {
            'float' => {}
          }
        },
        'spaces_before_argument' => ' ',
        'type' => {
          'content' => [
            {
              'text' => 'Thing'
            }
          ],
          'normalized' => 'Thing'
        }
      },
      'number' => '1.1'
    }
  ]
};
$result_floats{'float_and_refs'}{''}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{''}[0];
$result_floats{'float_and_refs'}{''}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{''}[0];
$result_floats{'float_and_refs'}{'Figure'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{'Figure'}[0];
$result_floats{'float_and_refs'}{'Figure'}[0]{'extra'}{'float_section'} = $result_floats{'float_and_refs'}{''}[0]{'extra'}{'float_section'};
$result_floats{'float_and_refs'}{'Figure'}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{'Figure'}[0];
$result_floats{'float_and_refs'}{'Thing'}[0]{'extra'}{'caption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{'Thing'}[0];
$result_floats{'float_and_refs'}{'Thing'}[0]{'extra'}{'float_section'} = $result_floats{'float_and_refs'}{''}[0]{'extra'}{'float_section'};
$result_floats{'float_and_refs'}{'Thing'}[0]{'extra'}{'shortcaption'}{'extra'}{'float'} = $result_floats{'float_and_refs'}{'Thing'}[0];



$result_converted{'latex'}->{'float_and_refs'} = '
\\chapter{chapter}
\\label{anchor:chapter}%

\\begin{TexinfoFloat}
no type
\\caption[short no type float]{no type float}


\\label{anchor:no-type}%
\\end{TexinfoFloat}

\\begin{TexinfoFloatThing}
Something with
\\caption[short with type float]{with type float}


\\label{anchor:with-type}%
\\end{TexinfoFloatThing}

\\begin{figure}
In figure
\\caption[short caption for figure]{caption for figure}


\\label{anchor:my-figure}%
\\end{figure}

\\chapter{refs}

See \\hyperref[anchor:no-type]{\\ref*{anchor:no-type}}.
See \\hyperref[anchor:no-type]{\\ref*{anchor:no-type}}.
See \\hyperref[anchor:no-type]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textit{five}.

See \\hyperref[anchor:with-type]{Thing~\\ref*{anchor:with-type}}.
See \\hyperref[anchor:with-type]{Thing~\\ref*{anchor:with-type}}.
See \\hyperref[anchor:with-type]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textit{five}.

See \\hyperref[anchor:my-figure]{Figure~\\ref*{anchor:my-figure}}.
See \\hyperref[anchor:my-figure]{Figure~\\ref*{anchor:my-figure}}.
See \\hyperref[anchor:my-figure]{three}.
See Section ``three\'\' in \\texttt{four}.
See Section ``three\'\' in \\textit{five}.

';

1;
