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
                      'text' => 'c--ode'
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
                      'text' => 'd--fn'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'dfn',
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
                      'text' => 'v--ar'
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
                      'text' => 's--trong'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'strong',
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
                      'text' => 'k--bd'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'kbd',
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
                      'text' => 's--amp'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
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
                              'text' => 'd--fn in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dfn',
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
                              'text' => 'c--ode in var'
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
                              'text' => 'v--ar in code'
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
                              'text' => 'k--bd in strong'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'kbd',
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
                              'text' => 's--trong in samp'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
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
                              'text' => 's--amp in strong'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
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
                      'text' => 'c--ite'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'cite',
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
                              'text' => 'c--ite in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'cite',
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
                              'text' => 'c--ode in cite'
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
                      'text' => 'c--ode'
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
                      'text' => 's--lanted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
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
                      'text' => 'b--'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'b',
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
                      'text' => 't--'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 't',
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
                              'text' => 's--lanted in code'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'slanted',
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
              'cmdname' => 'code',
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
                              'text' => 'c--ode in slanted'
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
                        'line_nr' => 26,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
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
                              'text' => 's--lanted in b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'slanted',
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
              'cmdname' => 'b',
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
                              'text' => 'b-- in slanted'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
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
                              'text' => 's--lanted in t'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'slanted',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 29,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 't',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
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
                              'text' => 't-- in slanted'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 't',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 30,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'v--ar in t'
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
                        'line_nr' => 31,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 't',
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
                              'text' => 't-- in var'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 't',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 32,
                        'macro' => ''
                      }
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
                'line_nr' => 32,
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'v--ar in example'
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
                    'line_nr' => 35,
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
                          'text' => 'c--ite in example'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'cite',
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
                'line_nr' => 37,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 34,
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
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[5]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[6]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[7]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[8]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[9]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[10]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[12]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[13]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[14]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'contents'}[15]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[11]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[12]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[2];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[1];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13];
$result_trees{'combined_fonts'}{'contents'}[4]{'contents'}[13]{'parent'} = $result_trees{'combined_fonts'}{'contents'}[4];
$result_trees{'combined_fonts'}{'contents'}[4]{'parent'} = $result_trees{'combined_fonts'};

$result_texis{'combined_fonts'} = '@setfilename combined_fonts.info

@node Top
@top top section

@node chapter
@chapter chapter

@code{c--ode}, @dfn{d--fn}, @var{v--ar}, @strong{s--trong}, @kbd{k--bd}, @samp{s--amp}.

@code{@dfn{d--fn in code}}
@var{@code{c--ode in var}}
@code{@var{v--ar in code}}
@strong{@kbd{k--bd in strong}}
@samp{@strong{s--trong in samp}}
@strong{@samp{s--amp in strong}}

@cite{c--ite}

@code{@cite{c--ite in code}}
@cite{@code{c--ode in cite}}

@code{c--ode} @slanted{s--lanted} @b{b--} @t{t--}

@code{@slanted{s--lanted in code}}
@slanted{@code{c--ode in slanted}}
@b{@slanted{s--lanted in b}}
@slanted{@b{b-- in slanted}}
@t{@slanted{s--lanted in t}}
@slanted{@t{t-- in slanted}}
@t{@var{v--ar in t}}
@var{@t{t-- in var}}

@example
@var{v--ar in example}
@cite{c--ite in example}
@end example
';


$result_texts{'combined_fonts'} = '
top section
***********

1 chapter
*********

c--ode, d-fn, v-ar, s-trong, k--bd, s--amp.

d--fn in code
c--ode in var
v--ar in code
k--bd in strong
s--trong in samp
s--amp in strong

c-ite

c--ite in code
c--ode in cite

c--ode s-lanted b- t--

s--lanted in code
c--ode in slanted
s-lanted in b
b- in slanted
s--lanted in t
t-- in slanted
v--ar in t
t-- in var

v--ar in example
c--ite in example
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


1;
