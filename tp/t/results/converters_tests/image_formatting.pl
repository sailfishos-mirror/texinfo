use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'image_formatting'} = {
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
              'text' => 'chap'
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
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
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
                'line_nr' => 7,
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
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile,l--i'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
                'line_nr' => 8,
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
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'l--i'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile,,l--e'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'l--e'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile,,,alt'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
                'line_nr' => 10,
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
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'alt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile,,,,e-d-xt'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e--xt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile,aze,az,alt,e--xt'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aze'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'az'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'alt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'e--xt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f-ile,aze,,a--lt'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f-ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aze'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a--lt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
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
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'image'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'file'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'f--ile'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => '.,aze,az,alt,'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'file'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'file ext'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' e--xt'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
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
                'line_nr' => 14,
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'f--ile'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'file',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      }
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'cmdname' => '.',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aze'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'az'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'alt'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'file ext'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'file',
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
                      'text' => ' e--xt'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
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
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'image'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
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
                      'text' => 'image'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
              },
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                    'line_nr' => 18,
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
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
                  },
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
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile,l--i'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                    'line_nr' => 19,
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
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--i'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile,,l--e'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'l--e'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
                  },
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile,,,alt'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'alt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile,,,,e-d-xt'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                    'line_nr' => 22,
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
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e--xt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile,aze,az,alt,e--xt'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                          'text' => 'f--ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aze'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'az'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'alt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'e--xt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
                  },
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
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f-ile,aze,,a--lt'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'f-ile'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aze'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'a--lt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'image'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'file'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'f--ile'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => '.,aze,az,alt,'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'file'
                        },
                        {
                          'cmdname' => '{',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => 'file ext'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
                        },
                        {
                          'parent' => {},
                          'text' => ' e--xt'
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
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
                                  'text' => 'f--ile'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'file',
                          'contents' => [],
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 25,
                            'macro' => ''
                          }
                        },
                        {
                          'cmdname' => '@',
                          'parent' => {}
                        },
                        {
                          'cmdname' => '.',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'aze'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'az'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'alt'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    },
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'file ext'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'file',
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
                          'text' => ' e--xt'
                        },
                        {
                          'cmdname' => '}',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
                  },
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
                          'parent' => {},
                          'text' => 'image'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'image'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'image',
                  'contents' => [],
                  'extra' => {
                    'input_perl_encoding' => 'utf-8'
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
                'line_nr' => 27,
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
            'line_nr' => 17,
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
                  'text' => 'f--ile'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a very long alt argument that could span more than one line who knows'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'image',
          'contents' => [],
          'extra' => {
            'input_perl_encoding' => 'utf-8'
          },
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'in para
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'f--ile'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a very long alt argument that could span more than one line who knows'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'image',
              'contents' => [],
              'extra' => {
                'input_perl_encoding' => 'utf-8'
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
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'image_formatting'}{'contents'}[0]{'parent'} = $result_trees{'image_formatting'};
$result_trees{'image_formatting'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[1]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'image_formatting'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'image_formatting'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[1]{'parent'} = $result_trees{'image_formatting'};
$result_trees{'image_formatting'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[2]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[2]{'parent'} = $result_trees{'image_formatting'};
$result_trees{'image_formatting'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[3]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[3];
$result_trees{'image_formatting'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'image_formatting'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'image_formatting'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[3]{'parent'} = $result_trees{'image_formatting'};
$result_trees{'image_formatting'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[31]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[32]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[32]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[32];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[32]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[33]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[34]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[34];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[34]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'contents'}[35]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[8]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[9]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[10]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[11]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[12]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[13]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[14]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[15]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[16]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[17]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[18]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[19]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[20]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[21]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[22]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[23]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[24]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[25]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[26]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[27]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[15]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[16]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[17]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[18]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'contents'}[19]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[28]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[29]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'args'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[30]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[31]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[32]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[32]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[32]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[32];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[32]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[33]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[34]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[34]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[34]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[34];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[34]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[35]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[0];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[3];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8];
$result_trees{'image_formatting'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'image_formatting'}{'contents'}[4];
$result_trees{'image_formatting'}{'contents'}[4]{'parent'} = $result_trees{'image_formatting'};

$result_texis{'image_formatting'} = '@node Top
@top top

@node chap
@chapter Chapter

@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}

@example
@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}
@end example

@image{f--ile,,,a very long alt argument that could span more than one line who knows}

in para
@image{f--ile,,,a very long alt argument that could span more than one line who knows}.
';


$result_texts{'image_formatting'} = 'top
***

1 Chapter
*********

@image{f--ile} f--ile
@image{f--ile,l--i} f--ile
@image{f--ile,,l--e} f--ile
@image{f--ile,,,alt} f--ile
@image{f--ile,,,,e-d-xt} f--ile
@image{f--ile,aze,az,alt,e--xt} f--ile
@image{f-ile,aze,,a--lt} f-ile
@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} f--ile@.
image image

@image{f--ile} f--ile
@image{f--ile,l--i} f--ile
@image{f--ile,,l--e} f--ile
@image{f--ile,,,alt} f--ile
@image{f--ile,,,,e-d-xt} f--ile
@image{f--ile,aze,az,alt,e--xt} f--ile
@image{f-ile,aze,,a--lt} f-ile
@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} f--ile@.
image image

f--ile

in para
f--ile.
';

$result_sectioning{'image_formatting'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'image_formatting'};

$result_nodes{'image_formatting'} = {
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
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'image_formatting'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'image_formatting'};
$result_nodes{'image_formatting'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'image_formatting'};

$result_menus{'image_formatting'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'image_formatting'} = [];


$result_floats{'image_formatting'} = {};



$result_converted{'plaintext'}->{'image_formatting'} = 'top
***

1 Chapter
*********

‘@image{f--ile}’ Image description""\\. ‘@image{f--ile,l--i}’ Image description""\\. ‘@image{f--ile,,l--e}’ Image description""\\.
‘@image{f--ile,,,alt}’ Image description""\\. ‘@image{f--ile,,,,e-d-xt}’ Image description""\\.
‘@image{f--ile,aze,az,alt,e--xt}’ Image description""\\. ‘@image{f-ile,aze,,a--lt}’ [a-lt]
‘@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}’ [alt] aaa
bbb
ccc aaa
bbb
ccc

     @image{f--ile} Image description""\\.
     @image{f--ile,l--i} Image description""\\.
     @image{f--ile,,l--e} Image description""\\.
     @image{f--ile,,,alt} Image description""\\.
     @image{f--ile,,,,e-d-xt} Image description""\\.
     @image{f--ile,aze,az,alt,e--xt} Image description""\\.
     @image{f-ile,aze,,a--lt} [a-lt]
     @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} [alt]
     aaa
bbb
ccc aaa
bbb
ccc

Image description""\\.

   in para Image description""\\..
';


$result_converted{'html_text'}->{'image_formatting'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<p><code class="code">@image{f--ile}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,l--i}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,l--e}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,,alt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f--ile,,,,e-d-xt}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,aze,az,alt,e--xt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f-ile,aze,,a--lt}</code> <img class="image" src="f-ile.jpg" alt="a&ndash;lt">
<code class="code">@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</code> <img class="image" src="f--ile@.file%20ext%20e--xt%7d" alt="alt">
<img class="image" src="image.jpg" alt="image"> <img class="image" src="image.jpg" alt="image">
</p>
<div class="example">
<pre class="example-preformatted"><code class="code">@image{f--ile}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,l--i}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,l--e}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,,alt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f--ile,,,,e-d-xt}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,aze,az,alt,e--xt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f-ile,aze,,a--lt}</code> <img class="image" src="f-ile.jpg" alt="a&ndash;lt">
<code class="code">@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</code> <img class="image" src="f--ile@.file%20ext%20e--xt%7d" alt="alt">
<img class="image" src="image.jpg" alt="image"> <img class="image" src="image.jpg" alt="image">
</pre></div>

<img class="image" src="f--ile.png" alt="a very long alt argument that could span more than one line who knows">

<p>in para
<img class="image" src="f--ile.png" alt="a very long alt argument that could span more than one line who knows">.
</p></div>
</div>
';

$result_converted_errors{'html_text'}->{'image_formatting'} = [
  {
    'error_line' => 'warning: @image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'file_name' => '',
    'line_nr' => 15,
    'macro' => '',
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'
',
    'file_name' => '',
    'line_nr' => 24,
    'macro' => '',
    'text' => '@image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'
',
    'file_name' => '',
    'line_nr' => 25,
    'macro' => '',
    'text' => '@image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'file_name' => '',
    'line_nr' => 26,
    'macro' => '',
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'file_name' => '',
    'line_nr' => 26,
    'macro' => '',
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'image_formatting'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para><code>&arobase;image&lbrace;f--ile&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile></image>
<code>&arobase;image&lbrace;f--ile,l--i&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>l--i</imagewidth></image>
<code>&arobase;image&lbrace;f--ile,,l--e&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageheight>l--e</imageheight></image>
<code>&arobase;image&lbrace;f--ile,,,alt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><alttext>alt</alttext></image>
<code>&arobase;image&lbrace;f--ile,,,,e-d-xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f--ile,aze,az,alt,e--xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f-ile,aze,,a--lt&rbrace;</code> <image where="inline"><imagefile>f-ile</imagefile><imagewidth>aze</imagewidth><alttext>a&textndash;lt</alttext></image>
<code>&arobase;image&lbrace;&arobase;file&lbrace;f--ile&rbrace;&arobase;&arobase;&arobase;.,aze,az,alt,&arobase;file&lbrace;file ext&rbrace; e--xt&arobase;&rbrace;</code> <image where="inline"><imagefile><file>f--ile</file>&arobase;&eosperiod;</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension><file>file ext</file> e--xt&rbrace;</imageextension></image>
<image where="inline"><imagefile>image</imagefile></image> <image where="inline"><imagefile>image</imagefile></image>
</para>
<example endspaces=" ">
<pre xml:space="preserve"><code>&arobase;image&lbrace;f--ile&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile></image>
<code>&arobase;image&lbrace;f--ile,l--i&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>l--i</imagewidth></image>
<code>&arobase;image&lbrace;f--ile,,l--e&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageheight>l--e</imageheight></image>
<code>&arobase;image&lbrace;f--ile,,,alt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><alttext>alt</alttext></image>
<code>&arobase;image&lbrace;f--ile,,,,e-d-xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f--ile,aze,az,alt,e--xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f-ile,aze,,a--lt&rbrace;</code> <image where="inline"><imagefile>f-ile</imagefile><imagewidth>aze</imagewidth><alttext>a--lt</alttext></image>
<code>&arobase;image&lbrace;&arobase;file&lbrace;f--ile&rbrace;&arobase;&arobase;&arobase;.,aze,az,alt,&arobase;file&lbrace;file ext&rbrace; e--xt&arobase;&rbrace;</code> <image where="inline"><imagefile><file>f--ile</file>&arobase;&eosperiod;</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension><file>file ext</file> e--xt&rbrace;</imageextension></image>
<image where="inline"><imagefile>image</imagefile></image> <image where="inline"><imagefile>image</imagefile></image>
</pre></example>

<image><imagefile>f--ile</imagefile><alttext>a very long alt argument that could span more than one line who knows</alttext></image>

<para>in para
<image where="inline"><imagefile>f--ile</imagefile><alttext>a very long alt argument that could span more than one line who knows</alttext></image>.
</para></chapter>
';


$result_converted{'docbook'}->{'image_formatting'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para><literal>@image{f--ile}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,l--i}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,l--e}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,alt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,,e-d-xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,aze,az,alt,e--xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f-ile,aze,,a--lt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f-ile.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<literal>@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile@..jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject> <inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject>
</para>
<screen><literal>@image{f--ile}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,l--i}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,l--e}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,alt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,,e-d-xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,aze,az,alt,e--xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f-ile,aze,,a--lt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f-ile.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<literal>@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile@..jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject> <inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject>
</screen>
<informalfigure><mediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></mediaobject></informalfigure>

<para>in para
<inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>.
</para></chapter>
';

$result_converted_errors{'docbook'}->{'image_formatting'} = [
  {
    'error_line' => 'warning: @image file `f-ile\' not found, using `f-ile.jpg\'
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@image file `f-ile\' not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' not found, using `f--ile@..jpg\'
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@image file `f--ile@.\' not found, using `f--ile@..jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f-ile\' not found, using `f-ile.jpg\'
',
    'file_name' => '',
    'line_nr' => 24,
    'macro' => '',
    'text' => '@image file `f-ile\' not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' not found, using `f--ile@..jpg\'
',
    'file_name' => '',
    'line_nr' => 25,
    'macro' => '',
    'text' => '@image file `f--ile@.\' not found, using `f--ile@..jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'latex'}->{'image_formatting'} = '\\label{anchor:Top}%
\\chapter{Chapter}
\\label{anchor:chap}%

\\texttt{@image\\{f{-}{-}ile\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,l{-}{-}i\\}} \\includegraphics[width=l--i]{f--ile}
\\texttt{@image\\{f{-}{-}ile,,l{-}{-}e\\}} \\includegraphics[height=l--e]{f--ile}
\\texttt{@image\\{f{-}{-}ile,,,alt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,,,,e-d-xt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,aze,az,alt,e{-}{-}xt\\}} \\includegraphics[width=aze,height=az]{f--ile}
\\texttt{@image\\{f-ile,aze,,a{-}{-}lt\\}} \\includegraphics[width=aze]{f-ile}
\\texttt{@image\\{@file\\{f{-}{-}ile\\}@@@.,aze,az,alt,@file\\{file ext\\} e{-}{-}xt@\\}} \\includegraphics[width=aze,height=az]{f--ile@.}
\\includegraphics{image} \\includegraphics{image}

\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em \\parskip=0pt \\parindent=0pt \\ttfamily{}%
\\texttt{@image\\{f{-}{-}ile\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,l{-}{-}i\\}} \\includegraphics[width=l--i]{f--ile}
\\texttt{@image\\{f{-}{-}ile,,l{-}{-}e\\}} \\includegraphics[height=l--e]{f--ile}
\\texttt{@image\\{f{-}{-}ile,,,alt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,,,,e-d-xt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,aze,az,alt,e{-}{-}xt\\}} \\includegraphics[width=aze,height=az]{f--ile}
\\texttt{@image\\{f-ile,aze,,a{-}{-}lt\\}} \\includegraphics[width=aze]{f-ile}
\\texttt{@image\\{@file\\{f{-}{-}ile\\}@@@.,aze,az,alt,@file\\{file ext\\} e{-}{-}xt@\\}} \\includegraphics[width=aze,height=az]{f--ile@.}
\\includegraphics{image} \\includegraphics{image}
\\endgroup{}%

\\includegraphics{f--ile}

in para
\\includegraphics{f--ile}.
';


$result_converted{'info'}->{'image_formatting'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

‘@image{f--ile}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,l--i}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,,l--e}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
‘@image{f--ile,,,alt}’  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,,,,e-d-xt}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
‘@image{f--ile,aze,az,alt,e--xt}’  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ] ‘@image{f-ile,aze,,a--lt}’ [a-lt]
‘@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}’ [alt] aaa
bbb
ccc aaa
bbb
ccc

     @image{f--ile}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,l--i}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,l--e}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,,alt}  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,,,e-d-xt}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,aze,az,alt,e--xt}  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ]
     @image{f-ile,aze,,a--lt} [a-lt]
     @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} [alt]
     aaa
bbb
ccc aaa
bbb
ccc

 [image src="f--ile.png" alt="a very long alt argument that could span more than one line who knows" text="Image description\\"\\"\\\\." ]


   in para  [image src="f--ile.png" alt="a very long alt argument that could span more than one line who knows" text="Image description\\"\\"\\\\." ].


Tag Table:
Node: Top27
Node: chap102

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
