use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sample_utf8'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '\\input texinfo   @c -*-texinfo-*-
',
                  'type' => 'text_before_beginning'
                }
              ],
              'type' => 'preamble_before_beginning'
            },
            {
              'args' => [
                {
                  'text' => ' %**start of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %**start of header
'
                ]
              }
            }
          ],
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'sample_utf8.info'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'setfilename',
              'extra' => {
                'text_arg' => 'sample_utf8.info'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "Sample \x{793a}\x{4f8b} \x{104}\x{118} \x{f9}"
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'settitle',
              'extra' => {},
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'UTF-8'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'utf-8',
                'input_perl_encoding' => 'utf-8-strict',
                'text_arg' => 'UTF-8'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'text' => ' %**end of header
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' %**end of header
'
                ]
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'This is a short example of a complete Texinfo file.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Copyright (C) 2005 Someone.
'
                    },
                    {
                      'text' => "Texinfo\x{4e2d}\x{6587}\x{793a}\x{4f8b}
"
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'sample_utf8.texi',
                    'line_nr' => 13,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'titlepage',
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => "\x{6807}\x{9898}\x{793a}\x{4f8b} \x{104}\x{118} ae \x{105}\x{119} \x{c2} \x{f9}"
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'title',
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'sample_utf8.texi',
                    'line_nr' => 16,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'text' => '
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'page'
                },
                {
                  'contents' => [
                    {
                      'text' => "Texinfo\x{4e2d}\x{6587}\x{793a}\x{4f8b}
"
                    },
                    {
                      'args' => [
                        {
                          'text' => ' 0pt plus 1filll
',
                          'type' => 'misc_arg'
                        }
                      ],
                      'cmdname' => 'vskip',
                      'extra' => {
                        'misc_args' => [
                          ' 0pt plus 1filll
'
                        ]
                      }
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'text' => '
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'insertcopying',
                  'source_info' => {
                    'file_name' => 'sample_utf8.texi',
                    'line_nr' => 20,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'titlepage'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'titlepage'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'sample_utf8.texi',
                    'line_nr' => 21,
                    'macro' => ''
                  }
                }
              ],
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 15,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'args' => [
                {
                  'text' => ' Output the table of the contents at the beginning.
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' Output the table of the contents at the beginning.
'
                ]
              }
            },
            {
              'args' => [
                {
                  'text' => '
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'contents',
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 24,
                'macro' => ''
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "Texinfo\x{4e2d}\x{6587}\x{793a}\x{4f8b}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'source_info' => {
            'file_name' => 'sample_utf8.texi',
            'line_nr' => 30,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => "\x{7b2c}\x{4e00}\x{7ae0}\x{ff08}First Chapter\x{ff09}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => "\x{8fd9}\x{662f}\x{6b64}\x{793a}\x{4f8b}\x{6587}\x{6863}\x{7684}\x{7b2c}\x{4e00}\x{7ae0}
"
                        },
                        {
                          'text' => '                           (with mixed cjk & latin char title)
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
                }
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 34,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => "Second Chapter AE \x{104}\x{118} ae \x{105}\x{119}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::  ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => "this is chapter 2. AE \x{104}\x{118} ae \x{105}\x{119}
"
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
                }
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 36,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Index node'
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::    ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'Complete index.
'
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'Index-node'
                }
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 37,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 38,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'sample_utf8.texi',
            'line_nr' => 33,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 28,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{7b2c}\x{4e00}\x{7ae0}\x{ff08}First Chapter\x{ff09}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
            'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
          }
        ],
        'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 41,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{7b2c}\x{4e00}\x{7ae0}\x{ff08}First Chapter\x{ff09}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'chapter, first'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
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
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'sample_utf8.texi',
            'line_nr' => 44,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => "This is the first chapter. \x{8fd9}\x{662f}\x{7b2c}\x{4e00}\x{7ae0}\x{3002}
"
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{53e6}\x{4e00}\x{4e2a}\x{ff0c}index entry"
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
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
                  'entry_number' => 2,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 47,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{104}\x{118} ae \x{105}\x{119}"
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
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
                  'entry_number' => 3,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 48,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e9} \x{c2}"
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
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
                  'entry_number' => 4,
                  'in_code' => 0,
                  'index_at_command' => 'cindex',
                  'index_ignore_chars' => {},
                  'index_name' => 'cp',
                  'index_type_command' => 'cindex'
                }
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 49,
                'macro' => ''
              },
              'type' => 'index_entry_command'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Here is a numbered list.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'text' => "\x{7b2c}
"
                    },
                    {
                      'text' => 'This is the first item.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 54,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'text' => "\x{104}\x{118}
"
                    },
                    {
                      'text' => 'This is the second item.
'
                    }
                  ],
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 57,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'enumerate'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'enumerate'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'sample_utf8.texi',
                'line_nr' => 59,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'enumerate_specification' => '1'
          },
          'source_info' => {
            'file_name' => 'sample_utf8.texi',
            'line_nr' => 53,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 42,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "Second Chapter AE \x{104}\x{118} ae \x{105}\x{119}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
            'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
          }
        ],
        'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 61,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "Chapter 2 AE \x{104}\x{118} ae \x{105}\x{119}"
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => "Za\x{17c}\x{f3}\x{142}\x{107} g\x{119}\x{15b}l\x{105} ja\x{17a}\x{144}!
"
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 62,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Index node'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
            'normalized' => 'Index-node'
          }
        ],
        'normalized' => 'Index-node'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 66,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Index'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'unnumbered',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'sample_utf8.texi',
            'line_nr' => 69,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'sample_utf8.texi',
        'line_nr' => 67,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'sample_utf8'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sample_utf8'}{'contents'}[3];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sample_utf8'}{'contents'}[3];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sample_utf8'}{'contents'}[3];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'sample_utf8'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'sample_utf8'}{'contents'}[3];
$result_trees{'sample_utf8'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'sample_utf8'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'sample_utf8'}{'contents'}[7]{'args'}[0]{'contents'}[0];

$result_texis{'sample_utf8'} = '\\input texinfo   @c -*-texinfo-*-
@c %**start of header
@setfilename sample_utf8.info
@settitle Sample ?????? ???? ??
@documentencoding UTF-8
@c %**end of header

@copying
This is a short example of a complete Texinfo file.

Copyright (C) 2005 Someone.
Texinfo????????????
@end copying

@titlepage
@title ???????????? ???? ae ???? ?? ??
@page
Texinfo????????????
@vskip 0pt plus 1filll
@insertcopying
@end titlepage

@c Output the table of the contents at the beginning.
@contents

@node Top
@top Texinfo????????????

@insertcopying

@menu
* ????????????First Chapter???:: ?????????????????????????????????
                           (with mixed cjk & latin char title)
* Second Chapter AE ???? ae ????::  this is chapter 2. AE ???? ae ????
* Index node::    Complete index.
@end menu


@node ????????????First Chapter???
@chapter ????????????First Chapter???

@cindex chapter, first

This is the first chapter. ??????????????????
@cindex ????????????index entry
@cindex ???? ae ????
@cindex ?? ??

Here is a numbered list.

@enumerate
@item ???
This is the first item.

@item ????
This is the second item.
@end enumerate

@node Second Chapter AE ???? ae ????
@chapter Chapter 2 AE ???? ae ????

Za???????? g????l?? ja????!

@node Index node
@unnumbered Index

@printindex cp

@bye
';


$result_texts{'sample_utf8'} = '



Texinfo????????????
***************


* ????????????First Chapter???:: ?????????????????????????????????
                           (with mixed cjk & latin char title)
* Second Chapter AE ???? ae ????::  this is chapter 2. AE ???? ae ????
* Index node::    Complete index.


1 ????????????First Chapter???
*************************


This is the first chapter. ??????????????????

Here is a numbered list.

1. ???
This is the first item.

2. ????
This is the second item.

2 Chapter 2 AE ???? ae ????
***********************

Za???????? g????l?? ja????!

Index
*****


';

$result_sectioning{'sample_utf8'} = {
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
            'info' => {},
            'structure' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
                'section_prev' => {},
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            },
            {
              'cmdname' => 'unnumbered',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'isindex' => 1,
                    'normalized' => 'Index-node'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_prev' => {},
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
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0];
$result_sectioning{'sample_utf8'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sample_utf8'};

$result_nodes{'sample_utf8'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'info' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
      },
      'info' => {},
      'structure' => {
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'info' => {},
              'structure' => {
                'section_number' => 2
              }
            },
            'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
          },
          'info' => {},
          'structure' => {
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'associated_section' => {
                  'cmdname' => 'unnumbered',
                  'extra' => {},
                  'info' => {},
                  'structure' => {}
                },
                'isindex' => 1,
                'normalized' => 'Index-node'
              },
              'info' => {},
              'structure' => {
                'node_prev' => {},
                'node_up' => {}
              }
            },
            'node_prev' => {},
            'node_up' => {}
          }
        },
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'sample_utf8'};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'sample_utf8'}{'structure'}{'menu_child'};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'sample_utf8'};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'sample_utf8'};
$result_nodes{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'sample_utf8'};
$result_nodes{'sample_utf8'}{'structure'}{'node_next'} = $result_nodes{'sample_utf8'}{'structure'}{'menu_child'};

$result_menus{'sample_utf8'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_7b2c_4e00_7ae0_ff08First-Chapter_ff09'
      },
      'info' => {},
      'structure' => {
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Second-Chapter-AE-_0104_0118-ae-_0105_0119'
          },
          'info' => {},
          'structure' => {
            'menu_next' => {
              'cmdname' => 'node',
              'extra' => {
                'isindex' => 1,
                'normalized' => 'Index-node'
              },
              'info' => {},
              'structure' => {
                'menu_prev' => {},
                'menu_up' => {},
                'menu_up_hash' => {
                  'Top' => 1
                }
              }
            },
            'menu_prev' => {},
            'menu_up' => {},
            'menu_up_hash' => {
              'Top' => 1
            }
          }
        },
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_next'};
$result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'sample_utf8'};
$result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'sample_utf8'}{'structure'}{'menu_child'};
$result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'sample_utf8'};
$result_menus{'sample_utf8'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'sample_utf8'};

$result_errors{'sample_utf8'} = [];


$result_floats{'sample_utf8'} = {};


$result_indices_sort_strings{'sample_utf8'} = {
  'cp' => [
    "\x{104}\x{118} ae \x{105}\x{119}",
    'chapter, first',
    "\x{e9} \x{c2}",
    "\x{53e6}\x{4e00}\x{4e2a}\x{ff0c}index entry"
  ]
};


1;
