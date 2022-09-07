use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'topic_guide'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo.tex
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
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
        'file_name' => 'topic_guide.texi',
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
              'text' => 'A example quide topic collection'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is an example of guide/topic based manual inspired by the Mallard
'
            },
            {
              'parent' => {},
              'text' => 'format.
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'the easy way
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 10,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'the perillous way
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide2'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 11,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'topic_guide.texi',
            'line_nr' => 9,
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
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
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
              'text' => 'guide1'
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
            'normalized' => 'guide1'
          }
        ],
        'normalized' => 'guide1',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 14,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'guide 1'
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
              'parent' => {},
              'text' => 'This is the guide for an easy use.
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'topic1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'topic1 description
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'topic1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 20,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'topic2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'topic2 description
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'topic2'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 21,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'topic5'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'topic5 description
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'topic5'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 22,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 23,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'topic_guide.texi',
            'line_nr' => 19,
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
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 15,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic1'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic2'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is topic 1.
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'More information
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'guide 1
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 32,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
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
            'file_name' => 'topic_guide.texi',
            'line_nr' => 29,
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
            'normalized' => 'topic1'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic2'
          }
        ],
        'normalized' => 'topic1',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 25,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic2'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic3'
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic1'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is topic 2
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'More information
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'guide 1
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 42,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
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
            'file_name' => 'topic_guide.texi',
            'line_nr' => 39,
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
            'normalized' => 'topic2'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic3'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic1'
          }
        ],
        'normalized' => 'topic2',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 35,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic3'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic5'
            }
          ],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic2'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is topic 3
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'More information
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
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
            'file_name' => 'topic_guide.texi',
            'line_nr' => 49,
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
            'normalized' => 'topic3'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic5'
          },
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic2'
          }
        ],
        'normalized' => 'topic3',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 45,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic4'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is topic 4
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'More information
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'guide 2
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide2'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 61,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 62,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'topic_guide.texi',
            'line_nr' => 58,
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
            'normalized' => 'topic4'
          }
        ],
        'normalized' => 'topic4',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 54,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic5'
            }
          ],
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [],
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'topic3'
            }
          ],
          'extra' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'This is topic 5
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'More information
'
                    },
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'guide 1
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 71,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'guide2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'guide 2
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'guide2'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 72,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 73,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'topic_guide.texi',
            'line_nr' => 68,
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
            'normalized' => 'topic5'
          },
          undef,
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'topic3'
          }
        ],
        'normalized' => 'topic5',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 64,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'guide2'
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
            'normalized' => 'guide2'
          }
        ],
        'normalized' => 'guide2',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 75,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'guide 2'
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
              'parent' => {},
              'text' => 'This is the guide for an in depth use
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
          'cmdname' => 'menu',
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'topic5'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'topic5 description
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'topic5'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 81,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'topic4'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => ':: ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'topic4 description
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'preformatted'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'topic4'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 82,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
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
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'topic_guide.texi',
                'line_nr' => 83,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'topic_guide.texi',
            'line_nr' => 80,
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
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'topic_guide.texi',
        'line_nr' => 76,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'topic_guide'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[0]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[1]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[1]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[2]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[3]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[3]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[4];
$result_trees{'topic_guide'}{'contents'}[4]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[5];
$result_trees{'topic_guide'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[5]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[2];
$result_trees{'topic_guide'}{'contents'}[6]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[6];
$result_trees{'topic_guide'}{'contents'}[6]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[6]{'args'}[2]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[6]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[2];
$result_trees{'topic_guide'}{'contents'}[7]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[7];
$result_trees{'topic_guide'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[7]{'args'}[2]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[7]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[8];
$result_trees{'topic_guide'}{'contents'}[8]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[8]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'args'}[2];
$result_trees{'topic_guide'}{'contents'}[9]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[9];
$result_trees{'topic_guide'}{'contents'}[9]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[9]{'args'}[2]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[9]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[10]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[10];
$result_trees{'topic_guide'}{'contents'}[10]{'extra'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[10]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[10]{'args'}[0]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[10]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'contents'}[2];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'contents'}[4]{'parent'} = $result_trees{'topic_guide'}{'contents'}[11];
$result_trees{'topic_guide'}{'contents'}[11]{'parent'} = $result_trees{'topic_guide'};
$result_trees{'topic_guide'}{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'topic_guide'}{'contents'}[12];
$result_trees{'topic_guide'}{'contents'}[12]{'parent'} = $result_trees{'topic_guide'};

$result_texis{'topic_guide'} = '\\input texinfo.tex

@node Top
@top A example quide topic collection

This is an example of guide/topic based manual inspired by the Mallard
format.

@menu
* guide1:: the easy way
* guide2:: the perillous way
@end menu

@node guide1
@chapter guide 1

This is the guide for an easy use.

@menu
* topic1:: topic1 description
* topic2:: topic2 description
* topic5:: topic5 description
@end menu

@node topic1, topic2

This is topic 1.

@menu
More information

* guide1:: guide 1
@end menu

@node topic2, topic3, topic1

This is topic 2

@menu
More information

* guide1:: guide 1
@end menu

@node topic3, topic5, topic2

This is topic 3

@menu
More information

@end menu

@node topic4

This is topic 4

@menu
More information

* guide2:: guide 2
@end menu

@node topic5, , topic3

This is topic 5

@menu
More information

* guide1:: guide 1
* guide2:: guide 2
@end menu

@node guide2
@chapter guide 2

This is the guide for an in depth use

@menu
* topic5:: topic5 description
* topic4:: topic4 description
@end menu

@bye
';


$result_texts{'topic_guide'} = 'A example quide topic collection
********************************

This is an example of guide/topic based manual inspired by the Mallard
format.

* guide1:: the easy way
* guide2:: the perillous way

1 guide 1
*********

This is the guide for an easy use.

* topic1:: topic1 description
* topic2:: topic2 description
* topic5:: topic5 description


This is topic 1.

More information

* guide1:: guide 1


This is topic 2

More information

* guide1:: guide 1


This is topic 3

More information



This is topic 4

More information

* guide2:: guide 2


This is topic 5

More information

* guide1:: guide 1
* guide2:: guide 2

2 guide 2
*********

This is the guide for an in depth use

* topic5:: topic5 description
* topic4:: topic4 description

';

$result_sectioning{'topic_guide'} = {
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
                    'normalized' => 'guide1'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'guide2'
                  },
                  'structure' => {}
                }
              },
              'structure' => {
                'section_level' => 1,
                'section_number' => 2,
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
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0];
$result_sectioning{'topic_guide'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'topic_guide'};

$result_nodes{'topic_guide'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu',
        'extra' => {}
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'menus' => [
          {
            'cmdname' => 'menu',
            'extra' => {}
          }
        ],
        'normalized' => 'guide1'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'menus' => [
              {
                'cmdname' => 'menu',
                'extra' => {}
              }
            ],
            'normalized' => 'topic1'
          },
          'structure' => {
            'menu_child' => {},
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'menus' => [
                  {
                    'cmdname' => 'menu',
                    'extra' => {}
                  }
                ],
                'normalized' => 'topic2'
              },
              'structure' => {
                'menu_child' => {},
                'node_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'menus' => [
                      {
                        'cmdname' => 'menu',
                        'extra' => {}
                      }
                    ],
                    'normalized' => 'topic3'
                  },
                  'structure' => {
                    'node_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'menus' => [
                          {
                            'cmdname' => 'menu',
                            'extra' => {}
                          }
                        ],
                        'normalized' => 'topic5'
                      },
                      'structure' => {
                        'menu_child' => {},
                        'node_prev' => {}
                      }
                    },
                    'node_prev' => {}
                  }
                },
                'node_prev' => {}
              }
            }
          }
        },
        'node_next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_number' => 2
              }
            },
            'menus' => [
              {
                'cmdname' => 'menu',
                'extra' => {}
              }
            ],
            'normalized' => 'guide2'
          },
          'structure' => {
            'menu_child' => {},
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
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'menu_child'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'menu_child'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'menu_child'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'topic_guide'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'topic_guide'};
$result_nodes{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'topic_guide'};
$result_nodes{'topic_guide'}{'structure'}{'node_next'} = $result_nodes{'topic_guide'}{'structure'}{'menu_child'};

$result_menus{'topic_guide'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'guide1'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'topic1'
          },
          'structure' => {
            'menu_child' => {},
            'menu_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'topic2'
              },
              'structure' => {
                'menu_child' => {},
                'menu_next' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'topic5'
                  },
                  'structure' => {
                    'menu_child' => {},
                    'menu_next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'topic4'
                      },
                      'structure' => {
                        'menu_child' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'guide2'
                          },
                          'structure' => {
                            'menu_child' => {},
                            'menu_prev' => {},
                            'menu_up' => {},
                            'menu_up_hash' => {
                              'Top' => 1,
                              'topic4' => 1,
                              'topic5' => 1
                            }
                          }
                        },
                        'menu_prev' => {},
                        'menu_up' => {},
                        'menu_up_hash' => {
                          'guide2' => 1
                        }
                      }
                    },
                    'menu_prev' => {},
                    'menu_up' => {},
                    'menu_up_hash' => {
                      'guide1' => 1,
                      'guide2' => 1
                    }
                  }
                },
                'menu_prev' => {},
                'menu_up' => {},
                'menu_up_hash' => {
                  'guide1' => 1
                }
              }
            },
            'menu_up' => {},
            'menu_up_hash' => {
              'guide1' => 1
            }
          }
        },
        'menu_next' => {},
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1,
          'topic1' => 1,
          'topic2' => 1,
          'topic5' => 1
        }
      }
    }
  }
};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_child'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_child'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'}{'structure'}{'menu_child'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'}{'structure'}{'menu_prev'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_next'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_next'}{'structure'}{'menu_child'};
$result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'topic_guide'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_next'};

$result_errors{'topic_guide'} = [];


$result_floats{'topic_guide'} = {};


1;
