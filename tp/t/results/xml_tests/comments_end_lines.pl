use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'comments_end_lines'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'parent' => {},
                  'type' => 'command_as_argument_inserted'
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize it
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
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
                      'text' => 'itemize'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comment itemize
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comment itemize
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => '  '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
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
            'command_as_argument' => {}
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
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'enumerate'
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
            'enumerate_specification' => '1'
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
                  'cmdname' => 'asis',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
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
                              'text' => 'it'
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
                        'line_nr' => 9,
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
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' table
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' table
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
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
                'line_nr' => 10,
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
            'line_nr' => 8,
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
                  'text' => 'Quot no arg
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
                      'text' => 'quotation'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' quot no arg
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' quot no arg
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
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
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'group',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in gr
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
                      'text' => 'group'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'group'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
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
                  'text' => 'in ex
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
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
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
                'line_nr' => 22,
                'macro' => ''
              }
            }
          ],
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
',
          'type' => 'empty_line'
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
                          'text' => '0.4 0.6'
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
                  'cmdname' => 'columnfractions',
                  'extra' => {
                    'misc_args' => [
                      '0.4',
                      '0.6'
                    ],
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 24,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'item',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a '
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 1
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => 'tab',
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' ',
                          'type' => 'ignorable_spaces_after_command'
                        },
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'b
'
                            }
                          ],
                          'parent' => {},
                          'type' => 'paragraph'
                        }
                      ],
                      'extra' => {
                        'cell_number' => 2
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
                    'row_number' => 1
                  },
                  'parent' => {},
                  'type' => 'row'
                }
              ],
              'parent' => {},
              'type' => 'multitable_body'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'multitable'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'multitable'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 26,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'columnfractions' => {},
            'max_columns' => 2,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'f'
                }
              ],
              'parent' => {},
              'type' => 'block_line_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'g'
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
          'cmdname' => 'float',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In f
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
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => '  '
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
                'line_nr' => 30,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'g',
            'spaces_before_argument' => ' ',
            'type' => {
              'content' => [
                {}
              ],
              'normalized' => 'f'
            }
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'flushright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'flushright
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
                      'text' => 'flushright'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'flushright'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 34,
                'macro' => ''
              }
            }
          ],
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'raggedright',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'raggedright
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
                      'text' => 'raggedright'
                    }
                  ],
                  'extra' => {
                    'comment_at_end' => {
                      'args' => [
                        {
                          'parent' => {},
                          'text' => ' comm
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'c',
                      'extra' => {
                        'misc_args' => [
                          ' comm
'
                        ]
                      },
                      'parent' => {}
                    },
                    'spaces_after_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'raggedright'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 38,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 36,
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
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'extra'}{'columnfractions'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'extra'}{'node_content'}[0] = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[1]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'extra'}{'type'}{'content'}[0] = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'contents'}[1]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18];
$result_trees{'comments_end_lines'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'comments_end_lines'}{'contents'}[0];
$result_trees{'comments_end_lines'}{'contents'}[0]{'parent'} = $result_trees{'comments_end_lines'};

$result_texis{'comments_end_lines'} = '@itemize
@item itemize it
@end itemize  @c comment itemize

@enumerate
@end enumerate @c comm

@table @asis
@item it
@end table @c table

@quotation
Quot no arg
@end quotation @c quot no arg

@group
in gr
@end group @c comm

@example
in ex
@end example @c comm

@multitable @columnfractions 0.4 0.6
@item a @tab b
@end multitable @c comm

@float f,g
In f
@end float  @c comm

@flushright
flushright
@end flushright @c comm

@raggedright
raggedright
@end raggedright @c comm
';


$result_texts{'comments_end_lines'} = 'itemize it


it

Quot no arg

in gr

in ex

a b

f, g
In f

flushright

raggedright
';

$result_errors{'comments_end_lines'} = [];


$result_floats{'comments_end_lines'} = {
  'f' => [
    {
      'cmdname' => 'float',
      'extra' => {
        'normalized' => 'g',
        'type' => {
          'content' => [
            {
              'text' => 'f'
            }
          ],
          'normalized' => 'f'
        }
      },
      'structure' => {
        'float_number' => 1
      }
    }
  ]
};



$result_converted{'xml'}->{'comments_end_lines'} = '<itemize commandarg="bullet" endspaces=" "><itemprepend><formattingcommand command="bullet" automatic="on"/></itemprepend>
<listitem><prepend>&bullet;</prepend> <para>itemize it
</para></listitem></itemize>  <!-- c comment itemize -->

<enumerate first="1" endspaces=" ">
</enumerate> <!-- c comm -->

<table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">it</itemformat></item>
</tableterm></tableentry></table> <!-- c table -->

<quotation endspaces=" ">
<para>Quot no arg
</para></quotation> <!-- c quot no arg -->

<group endspaces=" ">
<para>in gr
</para></group> <!-- c comm -->

<example endspaces=" ">
<pre xml:space="preserve">in ex
</pre></example> <!-- c comm -->

<multitable spaces=" " endspaces=" "><columnfractions line="0.4 0.6"><columnfraction value="0.4"></columnfraction><columnfraction value="0.6"></columnfraction></columnfractions>
<tbody><row><entry command="item"> <para>a </para></entry><entry command="tab"> <para>b
</para></entry></row></tbody></multitable> <!-- c comm -->

<float name="g" type="f" number="1" spaces=" " endspaces=" "><floattype>f</floattype><floatname>g</floatname>
<para>In f
</para></float>  <!-- c comm -->

<flushright endspaces=" ">
<para>flushright
</para></flushright> <!-- c comm -->

<raggedright endspaces=" ">
<para>raggedright
</para></raggedright> <!-- c comm -->
';

1;
