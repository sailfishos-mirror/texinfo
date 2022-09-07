use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'formats_in_menu'} = {
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
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'gcc'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
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
                          'text' => 'text
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
                              'cmdname' => 'asis',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 5,
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
                                          'text' => 'item'
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
                                    'line_nr' => 6,
                                    'macro' => ''
                                  }
                                }
                              ],
                              'parent' => {},
                              'type' => 'table_term'
                            },
                            {
                              'contents' => [
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => '* table line::
'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'preformatted'
                                }
                              ],
                              'parent' => {},
                              'type' => 'table_item'
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
                            'text_arg' => 'table'
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 8,
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
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'menu_entry_description'
                }
              ],
              'extra' => {
                'menu_entry_description' => {},
                'menu_entry_node' => {
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
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
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'info'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
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
                          'text' => 'some @ verb{x atim
',
                          'type' => 'raw'
                        },
                        {
                          'parent' => {},
                          'text' => '* texinfo:: in @ verbatim
',
                          'type' => 'raw'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'verbatim'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            }
                          ],
                          'cmdname' => 'end',
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {}
                        }
                      ],
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
',
                      'type' => 'empty_line_after_command'
                    },
                    {
                      'contents' => [],
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
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
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
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'manual2'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
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
                          'text' => '%
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
                                  'text' => '
',
                                  'type' => 'empty_line'
                                },
                                {
                                  'parent' => {},
                                  'text' => '<i></i>
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
                                'line_nr' => 19,
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
                          'text' => 'Log$
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
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 15,
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
                      'text' => '('
                    },
                    {
                      'parent' => {},
                      'text' => 'truc'
                    },
                    {
                      'parent' => {},
                      'text' => ')'
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
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'description
'
                                },
                                {
                                  'parent' => {},
                                  'text' => '* acronym::'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'acronym',
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
                  'manual_content' => [
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 21,
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
                  'cmdname' => 'example',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '* subsubsection::
'
                        },
                        {
                          'parent' => {},
                          'text' => 'Menu comment
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
                        'line_nr' => 27,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 24,
                    'macro' => ''
                  }
                },
                {
                  'contents' => [
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
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          }
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'formats_in_menu'}{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'};
$result_trees{'formats_in_menu'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'extra'}{'menu_entry_description'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[3];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'extra'}{'menu_entry_node'}{'manual_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'args'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[2];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[6];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'}{'contents'}[1];
$result_trees{'formats_in_menu'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'formats_in_menu'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'formats_in_menu'}{'contents'}[1]{'parent'} = $result_trees{'formats_in_menu'};

$result_texis{'formats_in_menu'} = '@node Top

@menu
* (gcc):: text
@table @asis
@item item
* table line::
@end table

* (info)::
@verbatim
some @ verb{x atim
* texinfo:: in @ verbatim
@end verbatim
* (manual2):: %
@html

<i></i>
@end html
Log$
* (truc):: @acronym{description
* acronym::}

@example
* subsubsection::
Menu comment
@end example

@end menu
';


$result_texts{'formats_in_menu'} = '
* (gcc):: text
item
* table line::

* (info)::
some @ verb{x atim
* texinfo:: in @ verbatim
* (manual2):: %
Log$
* (truc):: description
* acronym::

* subsubsection::
Menu comment

';

$result_nodes{'formats_in_menu'} = {
  'cmdname' => 'node',
  'extra' => {
    'menus' => [
      {
        'cmdname' => 'menu'
      }
    ],
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'gcc'
          }
        ]
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'formats_in_menu'}{'structure'}{'node_next'} = $result_nodes{'formats_in_menu'}{'structure'}{'menu_child'};

$result_menus{'formats_in_menu'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'gcc'
          }
        ]
      }
    }
  }
};

$result_errors{'formats_in_menu'} = [];


$result_floats{'formats_in_menu'} = {};



$result_converted{'plaintext'}->{'formats_in_menu'} = '* Menu:

* (gcc):: text
item
     * table line::

* (info)::
some @ verb{x atim
* texinfo:: in @ verbatim
* (manual2):: %
Log$
* (truc):: description
* acronym::

     * subsubsection::
     Menu comment

';


$result_converted{'html'}->{'formats_in_menu'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
div.example {margin-left: 3.2em}
pre.menu-comment-preformatted {font-family: serif}
pre.menu-preformatted {font-family: serif}
td.menu-entry-description {vertical-align: top}
td.menu-entry-destination {vertical-align: top}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<h1 class="node" id="Top">Top</h1>

<table class="menu" border="0" cellspacing="0">
<tr><td class="menu-entry-destination">&bull; <a href="gcc.html#Top" accesskey="1">(gcc)</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">text
<dl class="table">
<dt>item</dt>
<dd><pre class="menu-preformatted">* table line::
</pre></dd>
</dl>
</td></tr>
<tr><th class="menu-comment" colspan="3"><pre class="menu-comment-preformatted">

</pre></th></tr><tr><td class="menu-entry-destination">&bull; <a href="info.html#Top" accesskey="2">(info)</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">
<pre class="verbatim">some @ verb{x atim
* texinfo:: in @ verbatim
</pre></td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="manual2.html#Top" accesskey="3">(manual2)</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description">%

<i></i>
Log$
</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="truc.html#Top" accesskey="4">(truc)</a>:</td><td>&nbsp;&nbsp;</td><td class="menu-entry-description"><abbr class="acronym">description
* acronym::</abbr>
</td></tr>
<tr><th class="menu-comment" colspan="3"><pre class="menu-comment-preformatted">

</pre><div class="example">
<pre class="example-preformatted">* subsubsection::
Menu comment
</pre></div>
<pre class="menu-comment-preformatted">

</pre></th></tr></table>



</body>
</html>
';

$result_converted_errors{'html'}->{'formats_in_menu'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'formats_in_menu'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">(gcc)</nodenext></node>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator=":: ">(gcc)</menunode><menudescription><pre xml:space="preserve">text
</pre><table commandarg="asis" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="asis">item</itemformat></item>
</tableterm><tableitem><pre xml:space="preserve">* table line::
</pre></tableitem></tableentry></table>
</menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre></menucomment><menuentry leadingtext="* "><menunode separator="::">(info)</menunode><menudescription><pre xml:space="preserve">
</pre><verbatim xml:space="preserve" endspaces=" ">
some @ verb{x atim
* texinfo:: in @ verbatim
</verbatim>
<pre xml:space="preserve"></pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator=":: ">(manual2)</menunode><menudescription><pre xml:space="preserve">%
<html endspaces=" ">

&lt;i&gt;&lt;/i&gt;
</html>
Log$
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator=":: ">(truc)</menunode><menudescription><pre xml:space="preserve"><acronym><acronymword>description
* acronym::</acronymword></acronym>
</pre></menudescription></menuentry><menucomment><pre xml:space="preserve">
</pre><example endspaces=" ">
<pre xml:space="preserve">* subsubsection::
Menu comment
</pre></example>
<pre xml:space="preserve">
</pre></menucomment></menu>
';

1;
