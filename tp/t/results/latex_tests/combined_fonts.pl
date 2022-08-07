use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'combined_fonts'} = {
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
                      'text' => 'combined_fonts.info'
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
                'text_arg' => 'combined_fonts.info'
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
        'line_nr' => 3,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'top section'
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
        'line_nr' => 4,
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
        'line_nr' => 6,
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
                      'text' => 'code'
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
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'dfn'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dfn',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'var'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'strong'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'kbd'
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
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ', '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'samp'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'dfn in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dfn',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      }
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
                              'text' => 'code in var'
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
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
              'contents' => [],
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
'
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
                              'text' => 'var in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'var',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      }
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
                              'text' => 'kbd in strong'
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
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
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
                              'text' => 'strong in samp'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
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
                              'text' => 'samp in strong'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 16,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
              'contents' => [],
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
                      'text' => 'cite'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'cite',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'cite in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'cite',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 20,
                        'macro' => ''
                      }
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
                'line_nr' => 20,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'code in cite'
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
                        'line_nr' => 21,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'cite',
              'contents' => [],
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
                      'text' => 'code'
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
                'line_nr' => 23,
                'macro' => ''
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
                      'parent' => {},
                      'text' => 'slanted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
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
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'b',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'slanted in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'slanted',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 24,
                        'macro' => ''
                      }
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
                'line_nr' => 24,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'code in slanted'
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
                        'line_nr' => 25,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'slanted in b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'slanted',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 26,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'b',
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
                              'text' => 'b in slanted'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 27,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
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
                          'text' => 'var in example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'var',
                  'contents' => [],
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'cite in example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'cite',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 31,
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
                'line_nr' => 32,
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
            'line_nr' => 29,
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
        'line_nr' => 7,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'};
$result_trees{'combined_fonts'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[1]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'combined_fonts'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'combined_fonts'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'};
$result_trees{'combined_fonts'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'};
$result_trees{'combined_fonts'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[3]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'combined_fonts'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'combined_fonts'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'};
$result_trees{'combined_fonts'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[6];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[8];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[10];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[4]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[5]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[8]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[12]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[13]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'extra'}{'command'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'};

$result_texis{'combined_fonts'} = '@setfilename combined_fonts.info

@node Top
@top top section

@node chapter
@chapter chapter

@code{code}, @dfn{dfn}, @var{var}, @strong{strong}, @kbd{kbd}, @samp{samp}.

@code{@dfn{dfn in code}}
@var{@code{code in var}}
@code{@var{var in code}}
@strong{@kbd{kbd in strong}}
@samp{@strong{strong in samp}}
@strong{@samp{samp in strong}}

@cite{cite}

@code{@cite{cite in code}}
@cite{@code{code in cite}}

@code{code} @slanted{slanted} @b{b}
@code{@slanted{slanted in code}}
@slanted{@code{code in slanted}}
@b{@slanted{slanted in b}}
@slanted{@b{b in slanted}}

@example
@var{var in example}
@cite{cite in example}
@end example
';


$result_texts{'combined_fonts'} = '
top section
***********

1 chapter
*********

code, dfn, var, strong, kbd, samp.

dfn in code
code in var
var in code
kbd in strong
strong in samp
samp in strong

cite

cite in code
code in cite

code slanted b
slanted in code
code in slanted
slanted in b
b in slanted

var in example
cite in example
';

$result_sectioning{'combined_fonts'} = {
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
$result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0];
$result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0];
$result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0];
$result_sectioning{'combined_fonts'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'combined_fonts'};

$result_nodes{'combined_fonts'} = {
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
$result_nodes{'combined_fonts'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'combined_fonts'};
$result_nodes{'combined_fonts'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'combined_fonts'};

$result_menus{'combined_fonts'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'combined_fonts'} = [];


$result_floats{'combined_fonts'} = {};



$result_converted{'latex'}->{'combined_fonts'} = '
\\begin{document}
\\label{anchor:Top}%
\\chapter{{chapter}}
\\label{anchor:chapter}%

\\texttt{code}, \\textsl{dfn}, \\textsl{var}, \\textbf{strong}, {\\ttfamily\\textsl{kbd}}, `\\texttt{samp}\'.

\\texttt{\\textsl{dfn in code}}
\\textsl{\\texttt{code in var}}
\\texttt{\\textsl{var in code}}
\\textbf{{\\ttfamily\\textsl{kbd in strong}}}
`\\texttt{\\textbf{strong in samp}}\'
\\textbf{`\\texttt{samp in strong}\'}

\\textsl{cite}

\\texttt{\\GNUTexinfocommandstylecodetextcite{cite in code}}
\\textsl{\\texttt{code in cite}}

\\texttt{code} \\textsl{slanted} \\textbf{b}
\\texttt{\\textsl{slanted in code}}
\\textsl{\\texttt{code in slanted}}
\\textbf{\\textsl{slanted in b}}
\\textsl{\\textbf{b in slanted}}

\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em \\parskip=0pt \\parindent=0pt \\ttfamily%
\\textsl{var in example}
\\GNUTexinfocommandstylecodetextcite{cite in example}
\\endgroup{}%
';

1;
