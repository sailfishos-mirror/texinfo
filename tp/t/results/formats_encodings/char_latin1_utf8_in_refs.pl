use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'char_latin1_utf8_in_refs'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'utf-8'
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
                'text_arg' => 'utf-8'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 3,
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
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'char latin1 utf8 in refs'
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
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
                      'text' => "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff} \x{c4} \x{cb} \x{cf} \x{d6} \x{dc}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                  'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 11,
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
                      'text' => "\x{e9}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                  'normalized' => '_00e9'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 12,
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
                      'text' => "\x{e0} \x{e8} \x{f9}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                  'normalized' => '_00e0-_00e8-_00f9'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 13,
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
                      'text' => "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                  'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 14,
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
                      'text' => "\x{e7}"
                    }
                  ],
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '
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
                  'normalized' => '_00e7'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 15,
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
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 16,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 10,
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
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff} \x{c4} \x{cb} \x{cf} \x{d6} \x{dc}"
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
            'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
          }
        ],
        'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 18,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff} \x{c4} \x{cb} \x{cf} \x{d6} \x{dc}"
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 19,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e9}"
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
            'normalized' => '_00e9'
          }
        ],
        'normalized' => '_00e9'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 21,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e9}"
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 22,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e0} \x{e8} \x{f9}"
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
            'normalized' => '_00e0-_00e8-_00f9'
          }
        ],
        'normalized' => '_00e0-_00e8-_00f9'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 24,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e0} \x{e8} \x{f9}"
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 25,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}"
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
            'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
          }
        ],
        'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}"
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
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 28,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e7}"
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
            'normalized' => '_00e7'
          }
        ],
        'normalized' => '_00e7'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 30,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => "\x{e7}"
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
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff} \x{c4} \x{cb} \x{cf} \x{d6} \x{dc}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 33,
                'macro' => ''
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e9}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_00e9'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 34,
                'macro' => ''
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e0} \x{e8} \x{f9}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_00e0-_00e8-_00f9'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 35,
                'macro' => ''
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 36,
                'macro' => ''
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => "\x{e7}"
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => '_00e7'
                }
              },
              'source_info' => {
                'file_name' => 'char_latin1_utf8_in_refs.texi',
                'line_nr' => 37,
                'macro' => ''
              }
            },
            {
              'text' => '
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
              'contents' => [
                {
                  'text' => "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff}"
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 39,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => "\x{c4} \x{cb} \x{cf} \x{d6} \x{dc}"
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 40,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => "\x{e9}"
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 41,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => "\x{e8}"
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
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
                  'text' => "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}"
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
              'entry_number' => 5,
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 43,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => "\x{e7}"
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
              'entry_number' => 6,
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
            'file_name' => 'char_latin1_utf8_in_refs.texi',
            'line_nr' => 44,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
        'file_name' => 'char_latin1_utf8_in_refs.texi',
        'line_nr' => 31,
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
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'args'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[4]{'extra'}{'menu_entry_description'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[4]{'args'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[4]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[2]{'contents'}[3]{'contents'}[4]{'args'}[1]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[9]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[9]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11]{'extra'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'extra'}{'label'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'extra'}{'label'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[5];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[4]{'extra'}{'label'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[7];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[6]{'extra'}{'label'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[9];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[8]{'extra'}{'label'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[1]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[4]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[5]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[6]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[7]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'args'}[0]{'contents'};
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8];
$result_trees{'char_latin1_utf8_in_refs'}{'contents'}[12]{'contents'}[8]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'char_latin1_utf8_in_refs'}{'contents'}[11];

$result_texis{'char_latin1_utf8_in_refs'} = '\\input texinfo

@documentencoding utf-8

@node Top
@top char latin1 utf8 in refs

@printindex cp

@menu
* ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??::
* ??::
* ?? ?? ??::
* ?? ?? ?? ?? ?? ?? ?? ?? ?? ??::
* ??::
@end menu

@node ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
@chapter ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??

@node ??
@chapter ??

@node ?? ?? ??
@chapter ?? ?? ??

@node ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
@chapter ?? ?? ?? ?? ?? ?? ?? ?? ?? ??

@node ??
@chapter ??

@ref{?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??}
@ref{??}
@ref{?? ?? ??}
@ref{?? ?? ?? ?? ?? ?? ?? ?? ?? ??}
@ref{??}

@cindex ?? ?? ?? ?? ?? ??
@cindex ?? ?? ?? ?? ??
@cindex ??
@cindex ??
@cindex ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
@cindex ??

@bye
';


$result_texts{'char_latin1_utf8_in_refs'} = '
char latin1 utf8 in refs
************************


* ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??::
* ??::
* ?? ?? ??::
* ?? ?? ?? ?? ?? ?? ?? ?? ?? ??::
* ??::

1 ?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
***********************

2 ??
***

3 ?? ?? ??
*******

4 ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
*********************

5 ??
***

?? ?? ?? ?? ?? ?? ?? ?? ?? ?? ??
??
?? ?? ??
?? ?? ?? ?? ?? ?? ?? ?? ?? ??
??


';

$result_sectioning{'char_latin1_utf8_in_refs'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
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
                    'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
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
                    'normalized' => '_00e9'
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
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00e0-_00e8-_00f9'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 3,
                'section_prev' => {},
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
                    'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 4,
                'section_prev' => {},
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
                    'normalized' => '_00e7'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 5,
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
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'section_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'toplevel_prev'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[4]{'structure'}{'toplevel_up'} = $result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0];
$result_sectioning{'char_latin1_utf8_in_refs'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'char_latin1_utf8_in_refs'};

$result_nodes{'char_latin1_utf8_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'isindex' => 1,
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
        'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
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
            'normalized' => '_00e9'
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
                    'section_number' => 3
                  }
                },
                'normalized' => '_00e0-_00e8-_00f9'
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
                        'section_number' => 4
                      }
                    },
                    'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
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
                            'section_number' => 5
                          }
                        },
                        'normalized' => '_00e7'
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
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'char_latin1_utf8_in_refs'};
$result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'node_next'} = $result_nodes{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'};

$result_menus{'char_latin1_utf8_in_refs'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_00e4-_00eb-_00ef-_00f6-_00fc-_00ff-_00c4-_00cb-_00cf-_00d6-_00dc'
      },
      'info' => {},
      'structure' => {
        'menu_next' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => '_00e9'
          },
          'info' => {},
          'structure' => {
            'menu_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => '_00e0-_00e8-_00f9'
              },
              'info' => {},
              'structure' => {
                'menu_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => '_00e2-_00ea-_00ee-_00f4-_00fb-_00c2-_00ca-_00ce-_00d4-_00db'
                  },
                  'info' => {},
                  'structure' => {
                    'menu_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => '_00e7'
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
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'char_latin1_utf8_in_refs'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'char_latin1_utf8_in_refs'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'char_latin1_utf8_in_refs'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'char_latin1_utf8_in_refs'};
$result_menus{'char_latin1_utf8_in_refs'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'char_latin1_utf8_in_refs'};

$result_errors{'char_latin1_utf8_in_refs'} = [];


$result_floats{'char_latin1_utf8_in_refs'} = {};


$result_indices_sort_strings{'char_latin1_utf8_in_refs'} = {
  'cp' => [
    "\x{c4} \x{cb} \x{cf} \x{d6} \x{dc}",
    "\x{e2} \x{ea} \x{ee} \x{f4} \x{fb} \x{c2} \x{ca} \x{ce} \x{d4} \x{db}",
    "\x{e4} \x{eb} \x{ef} \x{f6} \x{fc} \x{ff}",
    "\x{e7}",
    "\x{e9}",
    "\x{e8}"
  ]
};


1;
