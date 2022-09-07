use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'raw_commands_and_end_of_lines'} = {
  'contents' => [
    {
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Surrounded by empty lines.
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
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
                'text_arg' => 'html'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
            'line_nr' => 2,
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
              'text' => 'Block commands on a line
'
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
              'cmdname' => 'html',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    },
                    {
                      'parent' => {},
                      'text' => 'in block l2
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html'
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
                    'text_arg' => 'html'
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
                'end_command' => {}
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
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'html',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html'
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
                    'text_arg' => 'html'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 15,
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
                'line_nr' => 13,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'html',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html after the closing command.'
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
                    'text_arg' => 'html after the closing command.'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 20,
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
                'line_nr' => 18,
                'macro' => ''
              }
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'html',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html'
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
                    'text_arg' => 'html'
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
                'end_command' => {}
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
              'text' => '. A symbol on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'html',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html. A symbol after the closing command.'
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
                    'text_arg' => 'html. A symbol after the closing command.'
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
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              }
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
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Surrounded by empty lines.
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'tex'
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
                'text_arg' => 'tex'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 33,
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
            'line_nr' => 31,
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
              'text' => 'Block commands on a line
'
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
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex'
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
                    'text_arg' => 'tex'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 38,
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
                'line_nr' => 36,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex'
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
                    'text_arg' => 'tex'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 43,
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
                'line_nr' => 41,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex after the closing command.'
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
                    'text_arg' => 'tex after the closing command.'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 48,
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
                'line_nr' => 46,
                'macro' => ''
              }
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex'
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
                    'text_arg' => 'tex'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 52,
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
                'line_nr' => 50,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. A symbol on a line.
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
              'text' => 'Before the opening command '
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
              'cmdname' => 'tex',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in block
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'rawpreformatted'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'tex. A symbol after the closing command.'
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
                    'text_arg' => 'tex. A symbol after the closing command.'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 57,
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
                'line_nr' => 55,
                'macro' => ''
              }
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
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'Surrounded by empty lines.
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 59,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
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
              'text' => 'Block commands on a line
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in block
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 64,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in block
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 69,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'end commands on a line.
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
              'text' => 'Before the opening command '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in block
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 74,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => ' ',
          'type' => 'empty_spaces_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'after the closing command.
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
              'text' => 'Before the opening command '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in block
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 78,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '. A symbol on a line.
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
              'text' => 'Before the opening command '
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'in block
',
              'type' => 'raw'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 83,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '. A symbol after the closing command.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[18]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[19]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[20]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'contents'}[2]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[21]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[22]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'contents'}[1];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[23]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[24]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[25]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[26]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[27]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[28]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[28];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[28]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[29]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[30]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[31]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[31];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[31]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[32]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[33]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[33];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[33]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[34]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[35]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[36]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[36];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[36]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[37]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[38]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[38];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[38]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[39]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[40]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[41]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[41];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[41]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[42]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[43]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[43];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[43]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[44]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[45]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[46]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[46];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[46]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[47]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[48]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[48];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[48]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49]{'contents'}[1]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[49]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[50]{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[50];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'contents'}[50]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0];
$result_trees{'raw_commands_and_end_of_lines'}{'contents'}[0]{'parent'} = $result_trees{'raw_commands_and_end_of_lines'};

$result_texis{'raw_commands_and_end_of_lines'} = '
@html
Surrounded by empty lines.
@end html

Block commands on a line
@html
in block
in block l2
@end html
end commands on a line.

Before the opening command @html
in block
@end html
end commands on a line.

Before the opening command @html
in block
@end html after the closing command.

Before the opening command @html
in block
@end html
. A symbol on a line.

Before the opening command @html
in block
@end html. A symbol after the closing command.

@tex
Surrounded by empty lines.
@end tex

Block commands on a line
@tex
in block
@end tex
end commands on a line.

Before the opening command @tex
in block
@end tex
end commands on a line.

Before the opening command @tex
in block
@end tex after the closing command.

Before the opening command @tex
in block
@end tex
. A symbol on a line.

Before the opening command @tex
in block
@end tex. A symbol after the closing command.

@verbatim
Surrounded by empty lines.
@end verbatim

Block commands on a line
@verbatim
in block
@end verbatim
end commands on a line.

Before the opening command @verbatim
in block
@end verbatim
end commands on a line.

Before the opening command @verbatim
in block
@end verbatim after the closing command.

Before the opening command @verbatim
in block
@end verbatim
. A symbol on a line.

Before the opening command @verbatim
in block
@end verbatim. A symbol after the closing command.
';


$result_texts{'raw_commands_and_end_of_lines'} = '

Block commands on a line
end commands on a line.

Before the opening command end commands on a line.

Before the opening command 
Before the opening command . A symbol on a line.

Before the opening command 

Block commands on a line
end commands on a line.

Before the opening command end commands on a line.

Before the opening command 
Before the opening command . A symbol on a line.

Before the opening command 
Surrounded by empty lines.

Block commands on a line
in block
end commands on a line.

Before the opening command in block
end commands on a line.

Before the opening command in block
after the closing command.

Before the opening command in block
. A symbol on a line.

Before the opening command in block
. A symbol after the closing command.
';

$result_errors{'raw_commands_and_end_of_lines'} = [
  {
    'error_line' => 'warning: @html should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 13,
    'macro' => '',
    'text' => '@html should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @html should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 18,
    'macro' => '',
    'text' => '@html should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @end html:  after the closing command.
',
    'file_name' => '',
    'line_nr' => 20,
    'macro' => '',
    'text' => 'superfluous argument to @end html:  after the closing command.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @html should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 22,
    'macro' => '',
    'text' => '@html should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @html should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 27,
    'macro' => '',
    'text' => '@html should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @end html: . A symbol after the closing command.
',
    'file_name' => '',
    'line_nr' => 29,
    'macro' => '',
    'text' => 'superfluous argument to @end html: . A symbol after the closing command.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @tex should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 41,
    'macro' => '',
    'text' => '@tex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tex should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 46,
    'macro' => '',
    'text' => '@tex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @end tex:  after the closing command.
',
    'file_name' => '',
    'line_nr' => 48,
    'macro' => '',
    'text' => 'superfluous argument to @end tex:  after the closing command.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @tex should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 50,
    'macro' => '',
    'text' => '@tex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @tex should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 55,
    'macro' => '',
    'text' => '@tex should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'superfluous argument to @end tex: . A symbol after the closing command.
',
    'file_name' => '',
    'line_nr' => 57,
    'macro' => '',
    'text' => 'superfluous argument to @end tex: . A symbol after the closing command.',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @verbatim should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 69,
    'macro' => '',
    'text' => '@verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatim should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 74,
    'macro' => '',
    'text' => '@verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: superfluous argument to @end verbatim:  after the closing command.
',
    'file_name' => '',
    'line_nr' => 76,
    'macro' => '',
    'text' => 'superfluous argument to @end verbatim:  after the closing command.',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatim should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 78,
    'macro' => '',
    'text' => '@verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @verbatim should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 83,
    'macro' => '',
    'text' => '@verbatim should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: superfluous argument to @end verbatim: . A symbol after the closing command.
',
    'file_name' => '',
    'line_nr' => 85,
    'macro' => '',
    'text' => 'superfluous argument to @end verbatim: . A symbol after the closing command.',
    'type' => 'warning'
  }
];


$result_floats{'raw_commands_and_end_of_lines'} = {};



$result_converted{'plaintext'}->{'raw_commands_and_end_of_lines'} = 'Block commands on a line end commands on a line.

   Before the opening command end commands on a line.

   Before the opening command

   Before the opening command .  A symbol on a line.

   Before the opening command

   Block commands on a line end commands on a line.

   Before the opening command end commands on a line.

   Before the opening command

   Before the opening command .  A symbol on a line.

   Before the opening command

Surrounded by empty lines.

   Block commands on a line
in block
   end commands on a line.

   Before the opening command
in block
   end commands on a line.

   Before the opening command
in block
   after the closing command.

   Before the opening command
in block
   .  A symbol on a line.

   Before the opening command
in block
   .  A symbol after the closing command.
';

1;
