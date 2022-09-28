use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'master_menu_fr'} = {
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'fr'
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
              'cmdname' => 'documentlanguage',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'fr'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'no_master_menu_fr.texi',
                'line_nr' => 3,
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
        'file_name' => 'no_master_menu_fr.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'max'
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
                      'text' => 'chap'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
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
                  'normalized' => 'chap'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'no_master_menu_fr.texi',
                'line_nr' => 9,
                'macro' => ''
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'after_menu_description_line'
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
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'detailmenu',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => ' --- The Detailed Node Listing ---'
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
                          'parent' => {},
                          'text' => 'chap'
                        },
                        {
                          'parent' => {},
                          'text' => '
',
                          'type' => 'empty_line'
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
                          'text' => 'section'
                        }
                      ],
                      'parent' => {},
                      'type' => 'menu_entry_node'
                    },
                    {
                      'parent' => {},
                      'text' => '::',
                      'type' => 'menu_entry_separator'
                    },
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '
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
                      'normalized' => 'section'
                    }
                  },
                  'parent' => {},
                  'type' => 'menu_entry'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'detailmenu'
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
                    'text_arg' => 'detailmenu'
                  },
                  'parent' => {}
                }
              ],
              'parent' => {}
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
                'file_name' => 'no_master_menu_fr.texi',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_master_menu_fr.texi',
            'line_nr' => 8,
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
        'file_name' => 'no_master_menu_fr.texi',
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
        'file_name' => 'no_master_menu_fr.texi',
        'line_nr' => 12,
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
                      'text' => 'section'
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_node'
                },
                {
                  'parent' => {},
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '
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
                  'normalized' => 'section'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'no_master_menu_fr.texi',
                'line_nr' => 16,
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
                'file_name' => 'no_master_menu_fr.texi',
                'line_nr' => 17,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_master_menu_fr.texi',
            'line_nr' => 15,
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
        'file_name' => 'no_master_menu_fr.texi',
        'line_nr' => 13,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'section'
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
            'normalized' => 'section'
          }
        ],
        'normalized' => 'section',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'no_master_menu_fr.texi',
        'line_nr' => 19,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec'
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
      'cmdname' => 'section',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'no_master_menu_fr.texi',
        'line_nr' => 20,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[1]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[2];
$result_trees{'master_menu_fr'}{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[3]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[3];
$result_trees{'master_menu_fr'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[3]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4];
$result_trees{'master_menu_fr'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[4];
$result_trees{'master_menu_fr'}{'contents'}[4]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[5]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[5];
$result_trees{'master_menu_fr'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'master_menu_fr'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'master_menu_fr'}{'contents'}[5]{'parent'} = $result_trees{'master_menu_fr'};
$result_trees{'master_menu_fr'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[6]{'args'}[0];
$result_trees{'master_menu_fr'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'master_menu_fr'}{'contents'}[6];
$result_trees{'master_menu_fr'}{'contents'}[6]{'parent'} = $result_trees{'master_menu_fr'};

$result_texis{'master_menu_fr'} = '\\input texinfo.tex

@documentlanguage fr

@node Top
@top max

@menu
* chap::

@detailmenu
 --- The Detailed Node Listing ---

chap

* section::
@end detailmenu
@end menu

@node chap
@chapter chap

@menu
* section::
@end menu

@node section
@section sec
';


$result_texts{'master_menu_fr'} = '
max
***

* chap::

 -- The Detailed Node Listing --

chap

* section::

1 chap
******

* section::

1.1 sec
=======
';

$result_sectioning{'master_menu_fr'} = {
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
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section'
                        },
                        'structure' => {}
                      }
                    },
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  }
                ],
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
$result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0];
$result_sectioning{'master_menu_fr'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'master_menu_fr'};

$result_nodes{'master_menu_fr'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'menus' => [
      {
        'cmdname' => 'menu'
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
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'chap'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {},
              'structure' => {
                'section_number' => '1.1'
              }
            },
            'normalized' => 'section'
          },
          'structure' => {
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
$result_nodes{'master_menu_fr'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'master_menu_fr'}{'structure'}{'menu_child'};
$result_nodes{'master_menu_fr'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'master_menu_fr'};
$result_nodes{'master_menu_fr'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'master_menu_fr'};
$result_nodes{'master_menu_fr'}{'structure'}{'node_next'} = $result_nodes{'master_menu_fr'}{'structure'}{'menu_child'};

$result_menus{'master_menu_fr'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'chap'
      },
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'section'
          },
          'structure' => {
            'menu_up' => {},
            'menu_up_hash' => {
              'chap' => 1
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
$result_menus{'master_menu_fr'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'master_menu_fr'}{'structure'}{'menu_child'};
$result_menus{'master_menu_fr'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'master_menu_fr'};

$result_errors{'master_menu_fr'} = [];


$result_floats{'master_menu_fr'} = {};



$result_converted{'info'}->{'master_menu_fr'} = 'This is , produced from no_master_menu_fr.texi.


File: ,  Node: Top,  Next: chap,  Up: (dir)

max
***

* Menu:

* chap::

 — The Detailed Node Listing —

chap

* section::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 chap
******

* Menu:

* section::


File: ,  Node: section,  Up: chap

1.1 sec
=======



Tag Table:
Node: Top49
Node: chap179
Node: section261

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
