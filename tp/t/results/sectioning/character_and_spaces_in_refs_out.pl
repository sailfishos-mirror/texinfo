use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'character_and_spaces_in_refs_out'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {
          'contents' => [
            {},
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Test refs'
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
                  'cmdname' => 'menu',
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
                              'text' => 'other nodes'
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
                          'normalized' => 'other-nodes'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
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
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  },
                  'parent' => {}
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
                          'text' => 'Testing distant nodes'
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
                  'cmdname' => 'subheading',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  },
                  'parent' => {}
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
                              'text' => 'a  node'
                            }
                          ],
                          'extra' => {
                            'spaces_after_argument' => ' ',
                            'spaces_before_argument' => ' '
                          },
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
                              'text' => 'manual'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ]
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => ':'
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
                              'text' => 'manual'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ]
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'top'
                            }
                          ],
                          'extra' => {
                            'spaces_after_argument' => ' ',
                            'spaces_before_argument' => ' '
                          },
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
                              'text' => 'manual'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ]
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => '('
                            },
                            {
                              'parent' => {},
                              'text' => 'texinfo'
                            },
                            {
                              'parent' => {},
                              'text' => ')'
                            },
                            {
                              'parent' => {},
                              'text' => 'Cross References'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'node_argument' => {
                          'manual_content' => [
                            {}
                          ],
                          'node_content' => [
                            {}
                          ]
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'node'
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
                              'text' => '../manual/doc'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ]
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 14,
                        'macro' => ''
                      },
                      'parent' => {}
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Testing local nodes'
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
                  'cmdname' => 'subheading',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 16,
                    'macro' => ''
                  },
                  'parent' => {}
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
                              'text' => '!_"#$%&\'()*+-.'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'label' => {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => '!_"#$%&\'()*+-.'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => '/;<=>?[\\]^_`|~'
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
                                  'text' => 'other nodes'
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
                                  'text' => 'other nodes'
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
                                'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'other-nodes'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'other-nodes'
                              }
                            ],
                            'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e',
                            'spaces_before_argument' => ' '
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 32,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 18,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => '/;<=>?[\\]^_`|~'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'label' => {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => '/;<=>?[\\]^_`|~'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'local   node'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => '!_"#$%&\'()*+-.'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'other nodes'
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
                                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'local-node'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'other-nodes'
                              }
                            ],
                            'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e',
                            'spaces_before_argument' => ' '
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 34,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 19,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'Top'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'label' => {},
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => 'Top'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 20,
                        'macro' => ''
                      },
                      'parent' => {}
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
                              'text' => 'local   node'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => '  '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'ref',
                      'contents' => [],
                      'extra' => {
                        'label' => {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'local   node'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => '/;<=>?[\\]^_`|~'
                                }
                              ],
                              'parent' => {},
                              'type' => 'line_arg'
                            },
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'other nodes'
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
                                'normalized' => 'local-node'
                              },
                              undef,
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                              },
                              {
                                'node_content' => [
                                  {}
                                ],
                                'normalized' => 'other-nodes'
                              }
                            ],
                            'normalized' => 'local-node',
                            'spaces_before_argument' => '  '
                          },
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 36,
                            'macro' => ''
                          },
                          'parent' => {}
                        },
                        'node_argument' => {
                          'node_content' => [
                            {}
                          ],
                          'normalized' => 'local-node'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 21,
                        'macro' => ''
                      },
                      'parent' => {}
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
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'other nodes'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '!_"#$%&\'()*+-.'
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
                      'text' => 'Top'
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
                      'text' => 'Top'
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
                    'normalized' => 'other-nodes'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  }
                ],
                'normalized' => 'other-nodes',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Chapter with nodes'
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
                  'cmdname' => 'menu',
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
                              'text' => '!_"#$%&\'()*+-.'
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
                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 27,
                        'macro' => ''
                      },
                      'parent' => {},
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
                              'text' => '/;<=>?[\\]^_`|~'
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
                          'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 28,
                        'macro' => ''
                      },
                      'parent' => {},
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
                              'text' => 'local node'
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
                          'normalized' => 'local-node'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 29,
                        'macro' => ''
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
                        'command_argument' => 'menu',
                        'spaces_before_argument' => ' ',
                        'text_arg' => 'menu'
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 30,
                        'macro' => ''
                      },
                      'parent' => {}
                    }
                  ],
                  'extra' => {
                    'end_command' => {}
                  },
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 26,
                    'macro' => ''
                  },
                  'parent' => {}
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              },
              'parent' => {}
            },
            {},
            {},
            {},
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
        },
        'type' => 'before_node_section'
      },
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'extra'}{'node_argument'}{'manual_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'args'}[0]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[7]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[7];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'extra'}{'label'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[5]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'}{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[7]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[10]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[2]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_description'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'args'}[1]{'contents'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[5] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[6] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[7] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[8]{'parent'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'};
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[1] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[2] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'contents'}[1] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'character_and_spaces_in_refs_out'}[1]{'extra'}{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'character_and_spaces_in_refs_out'}[2]{'contents'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[2]{'extra'}{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[0]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[3]{'contents'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[3]{'extra'}{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[2]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[0] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};
$result_trees{'character_and_spaces_in_refs_out'}[4]{'contents'}[1] = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[8];
$result_trees{'character_and_spaces_in_refs_out'}[4]{'extra'}{'unit_command'} = $result_trees{'character_and_spaces_in_refs_out'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[9]{'contents'}[6]{'extra'}{'label'};

$result_texis{'character_and_spaces_in_refs_out'} = '@node Top
@top Test refs

@menu
* other nodes::
@end menu

@subheading Testing distant nodes

@ref{ a  node ,,, manual}
@ref{:,,,manual}
@ref{ top ,,, manual}
@ref{(texinfo)Cross References}
@ref{node,,, ../manual/doc}

@subheading Testing local nodes

@ref{!_"#$%&\'()*+-.}
@ref{/;<=>?[\\]^_`|~}
@ref{ Top}
@ref{  local   node}

@node other nodes, !_"#$%&\'()*+-., Top, Top
@chapter Chapter with nodes

@menu
* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::
@end menu

@node !_"#$%&\'()*+-., /;<=>?[\\]^_`|~, other nodes, other nodes

@node /;<=>?[\\]^_`|~,local   node,!_"#$%&\'()*+-., other nodes

@node  local   node,,/;<=>?[\\]^_`|~,other nodes

@bye
';


$result_texts{'character_and_spaces_in_refs_out'} = 'Test refs
*********

* other nodes::

Testing distant nodes
---------------------

a  node
:
top
(texinfo)Cross References
node

Testing local nodes
-------------------

!_"#$%&\'()*+-.
/;<=>?[\\]^_`|~
Top
local   node

1 Chapter with nodes
********************

* !_"#$%&\'()*+-.::
* /;<=>?[\\]^_`|~::
* local node::




';

$result_sectioning{'character_and_spaces_in_refs_out'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'FastForward' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'other-nodes'
                          },
                          'structure' => {
                            'associated_unit' => {}
                          }
                        }
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'Forward' => {
                            'extra' => {
                              'unit_command' => {
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                                },
                                'structure' => {
                                  'associated_unit' => {}
                                }
                              }
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'Forward' => {
                                  'extra' => {
                                    'unit_command' => {
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                      },
                                      'structure' => {
                                        'associated_unit' => {}
                                      }
                                    }
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'Forward' => {
                                        'extra' => {
                                          'unit_command' => {
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'normalized' => 'local-node'
                                            },
                                            'structure' => {
                                              'associated_unit' => {}
                                            }
                                          }
                                        },
                                        'structure' => {
                                          'directions' => {
                                            'Back' => {},
                                            'FastBack' => {},
                                            'NodeBack' => {},
                                            'NodeForward' => {},
                                            'NodePrev' => {},
                                            'NodeUp' => {},
                                            'This' => {}
                                          },
                                          'unit_prev' => {}
                                        },
                                        'type' => 'unit'
                                      },
                                      'NodeBack' => {},
                                      'NodeForward' => {},
                                      'NodeNext' => {},
                                      'NodePrev' => {},
                                      'NodeUp' => {},
                                      'This' => {}
                                    },
                                    'unit_next' => {},
                                    'unit_prev' => {}
                                  },
                                  'type' => 'unit'
                                },
                                'NodeBack' => {},
                                'NodeForward' => {},
                                'NodeNext' => {},
                                'NodePrev' => {},
                                'NodeUp' => {},
                                'This' => {}
                              },
                              'unit_next' => {},
                              'unit_prev' => {}
                            },
                            'type' => 'unit'
                          },
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {},
                          'Up' => {}
                        },
                        'unit_next' => {},
                        'unit_prev' => {}
                      },
                      'type' => 'unit'
                    },
                    'Forward' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'This' => {}
                  },
                  'unit_next' => {}
                },
                'type' => 'unit'
              }
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0,
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {}
              },
              'structure' => {
                'associated_unit' => {},
                'level' => 1,
                'number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'character_and_spaces_in_refs_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'character_and_spaces_in_refs_out'};

$result_nodes{'character_and_spaces_in_refs_out'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'associated_unit' => {
          'extra' => {
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'FastForward' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'associated_section' => {
                        'cmdname' => 'chapter',
                        'extra' => {},
                        'structure' => {
                          'associated_unit' => {},
                          'level' => 1,
                          'number' => 1
                        }
                      },
                      'menus' => [
                        {
                          'cmdname' => 'menu',
                          'extra' => {}
                        }
                      ],
                      'normalized' => 'other-nodes'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'menu_child' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                        },
                        'structure' => {
                          'associated_unit' => {
                            'extra' => {
                              'unit_command' => {}
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'Forward' => {
                                  'extra' => {
                                    'unit_command' => {
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                      },
                                      'structure' => {
                                        'associated_unit' => {},
                                        'node_next' => {
                                          'cmdname' => 'node',
                                          'extra' => {
                                            'normalized' => 'local-node'
                                          },
                                          'structure' => {
                                            'associated_unit' => {
                                              'extra' => {
                                                'unit_command' => {}
                                              },
                                              'structure' => {
                                                'directions' => {
                                                  'Back' => {},
                                                  'FastBack' => {},
                                                  'NodeBack' => {},
                                                  'NodeForward' => {},
                                                  'NodePrev' => {},
                                                  'NodeUp' => {},
                                                  'This' => {}
                                                },
                                                'unit_prev' => {}
                                              },
                                              'type' => 'unit'
                                            },
                                            'node_prev' => {},
                                            'node_up' => {}
                                          }
                                        },
                                        'node_prev' => {},
                                        'node_up' => {}
                                      }
                                    }
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'Forward' => {},
                                      'NodeBack' => {},
                                      'NodeForward' => {},
                                      'NodeNext' => {},
                                      'NodePrev' => {},
                                      'NodeUp' => {},
                                      'This' => {}
                                    },
                                    'unit_next' => {},
                                    'unit_prev' => {}
                                  },
                                  'type' => 'unit'
                                },
                                'NodeBack' => {},
                                'NodeForward' => {},
                                'NodeNext' => {},
                                'NodePrev' => {},
                                'NodeUp' => {},
                                'This' => {}
                              },
                              'unit_next' => {},
                              'unit_prev' => {}
                            },
                            'type' => 'unit'
                          },
                          'node_next' => {},
                          'node_prev' => {},
                          'node_up' => {}
                        }
                      },
                      'node_next' => {},
                      'node_prev' => {},
                      'node_up' => {}
                    }
                  }
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'unit_next' => {},
                  'unit_prev' => {}
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'This' => {}
            },
            'unit_next' => {}
          },
          'type' => 'unit'
        },
        'level' => 0
      }
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
    'associated_unit' => {},
    'menu_child' => {},
    'node_next' => {}
  }
};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'node_next'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'node_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'node_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'node_prev'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'node_up'} = $result_nodes{'character_and_spaces_in_refs_out'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'character_and_spaces_in_refs_out'}{'structure'}{'menu_child'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'character_and_spaces_in_refs_out'}{'structure'}{'node_next'} = $result_nodes{'character_and_spaces_in_refs_out'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};

$result_menus{'character_and_spaces_in_refs_out'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'extra' => {
        'unit_command' => {}
      },
      'structure' => {
        'directions' => {
          'FastForward' => {
            'extra' => {
              'unit_command' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'other-nodes'
                },
                'structure' => {
                  'associated_unit' => {},
                  'menu_child' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                    },
                    'structure' => {
                      'associated_unit' => {
                        'extra' => {
                          'unit_command' => {}
                        },
                        'structure' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'Forward' => {
                              'extra' => {
                                'unit_command' => {
                                  'cmdname' => 'node',
                                  'extra' => {
                                    'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                                  },
                                  'structure' => {
                                    'associated_unit' => {},
                                    'menu_next' => {
                                      'cmdname' => 'node',
                                      'extra' => {
                                        'normalized' => 'local-node'
                                      },
                                      'structure' => {
                                        'associated_unit' => {
                                          'extra' => {
                                            'unit_command' => {}
                                          },
                                          'structure' => {
                                            'directions' => {
                                              'Back' => {},
                                              'FastBack' => {},
                                              'NodeBack' => {},
                                              'NodeForward' => {},
                                              'NodePrev' => {},
                                              'NodeUp' => {},
                                              'This' => {}
                                            },
                                            'unit_prev' => {}
                                          },
                                          'type' => 'unit'
                                        },
                                        'menu_prev' => {},
                                        'menu_up' => {},
                                        'menu_up_hash' => {
                                          'other-nodes' => 1
                                        }
                                      }
                                    },
                                    'menu_prev' => {},
                                    'menu_up' => {},
                                    'menu_up_hash' => {
                                      'other-nodes' => 1
                                    }
                                  }
                                }
                              },
                              'structure' => {
                                'directions' => {
                                  'Back' => {},
                                  'FastBack' => {},
                                  'Forward' => {},
                                  'NodeBack' => {},
                                  'NodeForward' => {},
                                  'NodeNext' => {},
                                  'NodePrev' => {},
                                  'NodeUp' => {},
                                  'This' => {}
                                },
                                'unit_next' => {},
                                'unit_prev' => {}
                              },
                              'type' => 'unit'
                            },
                            'NodeBack' => {},
                            'NodeForward' => {},
                            'NodeNext' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'unit_next' => {},
                          'unit_prev' => {}
                        },
                        'type' => 'unit'
                      },
                      'menu_next' => {},
                      'menu_up' => {},
                      'menu_up_hash' => {
                        'other-nodes' => 1
                      }
                    }
                  },
                  'menu_up' => {},
                  'menu_up_hash' => {
                    'Top' => 1
                  }
                }
              }
            },
            'structure' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'Forward' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'unit_next' => {},
              'unit_prev' => {}
            },
            'type' => 'unit'
          },
          'Forward' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'This' => {}
        },
        'unit_next' => {}
      },
      'type' => 'unit'
    },
    'menu_child' => {}
  }
};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_next'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'unit_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'menu_next'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_up'} = $result_menus{'character_and_spaces_in_refs_out'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'menu_child'} = $result_menus{'character_and_spaces_in_refs_out'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};

$result_errors{'character_and_spaces_in_refs_out'} = [];


$result_floats{'character_and_spaces_in_refs_out'} = {};


$result_elements{'character_and_spaces_in_refs_out'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top'
        },
        'structure' => {
          'associated_unit' => {},
          'menu_child' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'other-nodes'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'Forward' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => '_0021_005f_0022_0023_0024_0025_0026_0027_0028_0029_002a_002b_002d_002e'
                          },
                          'structure' => {
                            'associated_unit' => {},
                            'menu_next' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => '_002f_003b_003c_003d_003e_003f_005b_005c_005d_005e_005f_0060_007c_007e'
                              },
                              'structure' => {
                                'associated_unit' => {
                                  'extra' => {
                                    'unit_command' => {}
                                  },
                                  'structure' => {
                                    'directions' => {
                                      'Back' => {},
                                      'FastBack' => {},
                                      'Forward' => {
                                        'extra' => {
                                          'unit_command' => {
                                            'cmdname' => 'node',
                                            'extra' => {
                                              'normalized' => 'local-node'
                                            },
                                            'structure' => {
                                              'associated_unit' => {},
                                              'menu_prev' => {},
                                              'menu_up' => {},
                                              'menu_up_hash' => {
                                                'other-nodes' => 1
                                              }
                                            }
                                          }
                                        },
                                        'structure' => {
                                          'directions' => {
                                            'Back' => {},
                                            'FastBack' => {},
                                            'NodeBack' => {},
                                            'NodeForward' => {},
                                            'NodePrev' => {},
                                            'NodeUp' => {},
                                            'This' => {}
                                          }
                                        },
                                        'type' => 'unit'
                                      },
                                      'NodeBack' => {},
                                      'NodeForward' => {},
                                      'NodeNext' => {},
                                      'NodePrev' => {},
                                      'NodeUp' => {},
                                      'This' => {}
                                    }
                                  },
                                  'type' => 'unit'
                                },
                                'menu_next' => {},
                                'menu_prev' => {},
                                'menu_up' => {},
                                'menu_up_hash' => {
                                  'other-nodes' => 1
                                }
                              }
                            },
                            'menu_up' => {},
                            'menu_up_hash' => {
                              'other-nodes' => 1
                            }
                          }
                        }
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'Forward' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        }
                      },
                      'type' => 'unit'
                    },
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {},
                    'Up' => {}
                  }
                },
                'type' => 'unit'
              },
              'menu_child' => {},
              'menu_up' => {},
              'menu_up_hash' => {
                'Top' => 1
              }
            }
          }
        }
      }
    },
    'structure' => {
      'directions' => {
        'FastForward' => {},
        'Forward' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {},
  {},
  {},
  {}
];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_prev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'menu_next'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Back'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'structure'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'menu_child'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'structure'}{'directions'}{'FastForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'character_and_spaces_in_refs_out'}[0];
$result_elements{'character_and_spaces_in_refs_out'}[1] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[2] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};
$result_elements{'character_and_spaces_in_refs_out'}[3] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_elements{'character_and_spaces_in_refs_out'}[4] = $result_elements{'character_and_spaces_in_refs_out'}[0]{'extra'}{'unit_command'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'}{'extra'}{'unit_command'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'};



$result_directions_text{'character_and_spaces_in_refs_out'} = 'element: @node Top
  FastForward: @node other nodes
  Forward: @node other nodes
  NodeForward: @node other nodes
  NodeNext: @node other nodes
  This: @node Top
element: @node other nodes
  Back: @node Top
  FastBack: @node Top
  Forward: @node !_"#$%&\'()*+-.
  NodeBack: @node Top
  NodeForward: @node !_"#$%&\'()*+-.
  NodeNext: @node !_"#$%&\'()*+-.
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node other nodes
  Up: @node Top
element: @node !_"#$%&\'()*+-.
  Back: @node other nodes
  FastBack: @node other nodes
  Forward: @node /;<=>?[\\]^_`|~
  NodeBack: @node other nodes
  NodeForward: @node /;<=>?[\\]^_`|~
  NodeNext: @node /;<=>?[\\]^_`|~
  NodePrev: @node other nodes
  NodeUp: @node other nodes
  This: @node !_"#$%&\'()*+-.
element: @node /;<=>?[\\]^_`|~
  Back: @node !_"#$%&\'()*+-.
  FastBack: @node other nodes
  Forward: @node local   node
  NodeBack: @node !_"#$%&\'()*+-.
  NodeForward: @node local   node
  NodeNext: @node local   node
  NodePrev: @node !_"#$%&\'()*+-.
  NodeUp: @node other nodes
  This: @node /;<=>?[\\]^_`|~
element: @node local   node
  Back: @node /;<=>?[\\]^_`|~
  FastBack: @node other nodes
  NodeBack: @node /;<=>?[\\]^_`|~
  NodeForward: @node !_"#$%&\'()*+-.
  NodePrev: @node /;<=>?[\\]^_`|~
  NodeUp: @node other nodes
  This: @node local   node
';

1;
