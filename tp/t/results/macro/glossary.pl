use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'glossary'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '\\input texinfo.tex
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
                      'text' => 'glossary'
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
                'text_arg' => 'glossary'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 3,
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
                  'text' => 'glossarytext',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@table @asis
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 7,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'arg_line' => ' glossarytext
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 5,
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
                  'text' => 'glossary',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end table
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 13,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'arg_line' => ' glossary
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 9,
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
                  'text' => 'gentry',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'id',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'name',
                  'type' => 'macro_arg'
                },
                {
                  'text' => 'text',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@ifhtml
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ref{\\id\\,\\name\\}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifhtml
',
                  'type' => 'raw'
                },
                {
                  'text' => '@ifnothtml
',
                  'type' => 'raw'
                },
                {
                  'text' => '\\name\\ (@pxref{\\id\\})
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end ifnothtml
',
                  'type' => 'raw'
                },
                {
                  'text' => '@unmacro expandglossary
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro expandglossary{glossary}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@unmacro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '\\\\glossary\\\\
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item \\name\\ @anchor{\\id\\}
',
                  'type' => 'raw'
                },
                {
                  'text' => '\\text\\
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'text' => '@expandglossary {@glossarytext{}}
',
                  'type' => 'raw'
                },
                {
                  'text' => '
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 33,
                    'macro' => ''
                  }
                }
              ],
              'info' => {
                'arg_line' => ' gentry {id, name, text}
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 15,
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
        'file_name' => 'glossary.texi',
        'line_nr' => 35,
        'macro' => ''
      }
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
                      'text' => 'glossary'
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
                  'normalized' => 'glossary'
                }
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 39,
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
                'file_name' => 'glossary.texi',
                'line_nr' => 40,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'glossary.texi',
            'line_nr' => 38,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'The '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'id1'
                    }
                  ],
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'name1'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'id1'
                }
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 42,
                'macro' => 'gentry'
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'text' => 'expandglossary',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'unmacro',
              'extra' => {
                'misc_args' => [
                  'expandglossary'
                ]
              },
              'info' => {
                'arg_line' => ' expandglossary
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'expandglossary',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'glossary',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@unmacro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '\\glossary\\
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item name1 @anchor{id1}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'text1, arg1 
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 42,
                    'macro' => 'gentry'
                  }
                }
              ],
              'info' => {
                'arg_line' => ' expandglossary{glossary}
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 42,
                'macro' => 'gentry'
              }
            },
            {
              'args' => [
                {
                  'text' => 'glossarytext',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'unmacro',
              'extra' => {
                'misc_args' => [
                  'glossarytext'
                ]
              },
              'info' => {
                'arg_line' => ' glossarytext
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'glossarytext',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@glossarytext{}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item name1 @anchor{id1}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'text1, arg1 
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 42,
                    'macro' => 'expandglossary'
                  }
                }
              ],
              'info' => {
                'arg_line' => ' glossarytext
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 42,
                'macro' => 'expandglossary'
              }
            },
            {
              'text' => ' is used in many cases while
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'id2'
                    }
                  ],
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'name2'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'extra' => {
                'label' => {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'id2'
                        }
                      ],
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'id2'
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 47,
                    'macro' => 'glossarytext'
                  }
                },
                'node_argument' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'id2'
                }
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 43,
                'macro' => 'gentry'
              }
            },
            {
              'text' => '
'
            },
            {
              'args' => [
                {
                  'text' => 'expandglossary',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'unmacro',
              'extra' => {
                'misc_args' => [
                  'expandglossary'
                ]
              },
              'info' => {
                'arg_line' => ' expandglossary
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'expandglossary',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'glossary',
                  'type' => 'macro_arg'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@unmacro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '@macro glossarytext
',
                  'type' => 'raw'
                },
                {
                  'text' => '\\glossary\\
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item name2 @anchor{id2}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'text2
',
                  'type' => 'raw'
                },
                {
                  'text' => '@end macro
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 43,
                    'macro' => 'gentry'
                  }
                }
              ],
              'info' => {
                'arg_line' => ' expandglossary{glossary}
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 43,
                'macro' => 'gentry'
              }
            },
            {
              'args' => [
                {
                  'text' => 'glossarytext',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'unmacro',
              'extra' => {
                'misc_args' => [
                  'glossarytext'
                ]
              },
              'info' => {
                'arg_line' => ' glossarytext
'
              }
            },
            {
              'args' => [
                {
                  'text' => 'glossarytext',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'macro',
              'contents' => [
                {
                  'text' => '@glossarytext{}
',
                  'type' => 'raw'
                },
                {
                  'text' => '@item name2 @anchor{id2}
',
                  'type' => 'raw'
                },
                {
                  'text' => 'text2
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'macro'
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
                    'text_arg' => 'macro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => 'glossary.texi',
                    'line_nr' => 43,
                    'macro' => 'expandglossary'
                  }
                }
              ],
              'info' => {
                'arg_line' => ' glossarytext
'
              },
              'source_info' => {
                'file_name' => 'glossary.texi',
                'line_nr' => 43,
                'macro' => 'expandglossary'
              }
            },
            {
              'text' => ' is quite specific
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
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'glossary.texi',
        'line_nr' => 36,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'glossary'
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
            'normalized' => 'glossary'
          }
        ],
        'normalized' => 'glossary'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'glossary.texi',
        'line_nr' => 45,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'glossary'
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
          'text' => ' ',
          'type' => 'ignorable_spaces_after_command'
        },
        {
          'contents' => [
            {
              'text' => 'name2 '
            },
            {},
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
            },
            {
              'text' => 'text2
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
        'file_name' => 'glossary.texi',
        'line_nr' => 46,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'glossary'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'glossary'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'glossary'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[8]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[8]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'glossary'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'glossary'}{'contents'}[4]{'contents'}[2]{'contents'}[1] = $result_trees{'glossary'}{'contents'}[2]{'contents'}[3]{'contents'}[8]{'extra'}{'label'};

$result_texis{'glossary'} = '\\input texinfo.tex

@setfilename glossary

@macro glossarytext
@table @asis
@end macro

@macro glossary
@glossarytext
@end table

@end macro

@macro gentry {id, name, text}
@ifhtml
@ref{\\id\\,\\name\\}
@end ifhtml
@ifnothtml
\\name\\ (@pxref{\\id\\})
@end ifnothtml
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\\\glossary\\\\
@item \\name\\ @anchor{\\id\\}
\\text\\
@end macro
@end macro
@expandglossary {@glossarytext{}}

@end macro

@node Top
@top Top

@menu 
* glossary::
@end menu

The @ref{id1,name1}
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\glossary\\
@item name1 @anchor{id1}
text1, arg1 
@end macro
@end macro
@unmacro glossarytext
@macro glossarytext
@glossarytext{}
@item name1 @anchor{id1}
text1, arg1 
@end macro
 is used in many cases while
@ref{id2,name2}
@unmacro expandglossary
@macro expandglossary{glossary}
@unmacro glossarytext
@macro glossarytext
\\glossary\\
@item name2 @anchor{id2}
text2
@end macro
@end macro
@unmacro glossarytext
@macro glossarytext
@glossarytext{}
@item name2 @anchor{id2}
text2
@end macro
 is quite specific

@node glossary
@chapter glossary

 name2 @anchor{id2}
text2


';


$result_texts{'glossary'} = '



Top
***

* glossary::

The id1
 is used in many cases while
id2
 is quite specific

1 glossary
**********

name2 text2


';

$result_sectioning{'glossary'} = {
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
                    'normalized' => 'glossary'
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
$result_sectioning{'glossary'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'glossary'}{'structure'}{'section_childs'}[0];
$result_sectioning{'glossary'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'glossary'}{'structure'}{'section_childs'}[0];
$result_sectioning{'glossary'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'glossary'}{'structure'}{'section_childs'}[0];
$result_sectioning{'glossary'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'glossary'};

$result_nodes{'glossary'} = {
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
        'normalized' => 'glossary'
      },
      'info' => {},
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'glossary'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'glossary'};
$result_nodes{'glossary'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'glossary'};
$result_nodes{'glossary'}{'structure'}{'node_next'} = $result_nodes{'glossary'}{'structure'}{'menu_child'};

$result_menus{'glossary'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'glossary'
      },
      'info' => {},
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'glossary'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'glossary'};

$result_errors{'glossary'} = [
  {
    'error_line' => 'warning: @ifhtml should only appear at the beginning of a line (possibly involving @gentry)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 42,
    'macro' => 'gentry',
    'text' => '@ifhtml should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'recursive call of macro glossarytext is not allowed; use @rmacro if needed (possibly involving @glossarytext)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossarytext',
    'text' => 'recursive call of macro glossarytext is not allowed; use @rmacro if needed',
    'type' => 'error'
  },
  {
    'error_line' => '@item outside of table or list (possibly involving @glossarytext)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossarytext',
    'text' => '@item outside of table or list',
    'type' => 'error'
  },
  {
    'error_line' => 'unmatched `@end table\' (possibly involving @glossary)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 47,
    'macro' => 'glossary',
    'text' => 'unmatched `@end table\'',
    'type' => 'error'
  },
  {
    'error_line' => '@ref reference to nonexistent node `id1\' (possibly involving @gentry)
',
    'file_name' => 'glossary.texi',
    'line_nr' => 42,
    'macro' => 'gentry',
    'text' => '@ref reference to nonexistent node `id1\'',
    'type' => 'error'
  }
];


$result_floats{'glossary'} = {};


1;
