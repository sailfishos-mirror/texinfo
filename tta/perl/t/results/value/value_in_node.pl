use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_in_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'node1',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'Node 1',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' node1 Node 1
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'dir'
                },
                {
                  'text' => ')'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                }
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'dir'
                },
                {
                  'text' => ')'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                }
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => '('
                },
                {
                  'text' => 'dir'
                },
                {
                  'text' => ')'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                }
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 3
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Expansion in Node Names'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 1,
                          'element' => {
                            'cmdname' => 'value',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'node1'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => 'Node 1',
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 1,
                          'position' => 6,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'Node 1'
                    },
                    {
                      'text' => '  ',
                      'type' => 'space_at_end_menu_node'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'Node-1'
                  },
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
              'source_info' => {
                'line_nr' => 7
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 8
              }
            }
          ],
          'source_info' => {
            'line_nr' => 6
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 4
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'source_marks' => [
                    {
                      'counter' => 2,
                      'position' => 6,
                      'sourcemark_type' => 'value_expansion',
                      'status' => 'end'
                    }
                  ],
                  'text' => 'Node 1'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Top'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Top'
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Node-1'
      },
      'info' => {
        'spaces_before_argument' => {
          'source_marks' => [
            {
              'counter' => 2,
              'element' => {
                'cmdname' => 'value',
                'contents' => [
                  {
                    'contents' => [
                      {
                        'text' => 'node1'
                      }
                    ],
                    'type' => 'brace_container'
                  }
                ]
              },
              'line' => 'Node 1',
              'position' => 1,
              'sourcemark_type' => 'value_expansion',
              'status' => 'start'
            }
          ],
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 10
      }
    },
    {
      'cmdname' => 'chapter',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Chapter 1'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'sec1',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'Section 1.1',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' sec1 Section 1.1
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 3,
                          'element' => {
                            'cmdname' => 'value',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'sec1'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => 'Section 1.1',
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 3,
                          'position' => 11,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'Section 1.1'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Section-1_002e1'
                  },
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
              'source_info' => {
                'line_nr' => 16
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 17
              }
            }
          ],
          'source_info' => {
            'line_nr' => 15
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 11
      }
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Section 1.1'
                }
              ],
              'type' => 'line_arg'
            },
            {
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Node 1'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Node-1'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            },
            {
              'contents' => [
                {
                  'text' => 'Node 1'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'Node-1'
              },
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                },
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'source_marks' => [
                        {
                          'counter' => 4,
                          'element' => {
                            'cmdname' => 'value',
                            'contents' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'node1'
                                  }
                                ],
                                'type' => 'brace_container'
                              }
                            ]
                          },
                          'line' => 'Node 1',
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'start'
                        },
                        {
                          'counter' => 4,
                          'position' => 6,
                          'sourcemark_type' => 'value_expansion',
                          'status' => 'end'
                        }
                      ],
                      'text' => 'Node 1'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'Node-1'
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 21
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Section-1_002e1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 19
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'value_in_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'value_in_node'}{'contents'}[2]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'value_in_node'}{'contents'}[3]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[3]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[3]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[3]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[4]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[5]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[5]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[5]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'value_in_node'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'value_in_node'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'value_in_node'} = '@set node1 Node 1

@node Top, (dir), (dir), (dir)
@top Expansion in Node Names

@menu
* Node 1  ::
@end menu

@node Node 1,, Top, Top
@chapter Chapter 1

@set sec1 Section 1.1

@menu
* Section 1.1::
@end menu

@node Section 1.1, , Node 1, Node 1

@xref{Node 1}.
';


$result_texts{'value_in_node'} = '
Expansion in Node Names
***********************

* Node 1  ::

1 Chapter 1
***********


* Section 1.1::


Node 1.
';

$result_sectioning{'value_in_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'Node-1'
                  }
                },
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'value_in_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'value_in_node'};

$result_nodes{'value_in_node'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'prev' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'up' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'Top'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '1'
        }
      },
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'Node-1'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'Section-1_002e1'
    }
  }
];
$result_nodes{'value_in_node'}[1]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_in_node'}[0];
$result_nodes{'value_in_node'}[1]{'extra'}{'node_directions'}{'up'} = $result_nodes{'value_in_node'}[0];
$result_nodes{'value_in_node'}[2]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'value_in_node'}[1];
$result_nodes{'value_in_node'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'value_in_node'}[1];

$result_menus{'value_in_node'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'menus' => [
        {}
      ],
      'normalized' => 'Node-1'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'Section-1_002e1'
    }
  }
];
$result_menus{'value_in_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'value_in_node'}[0];
$result_menus{'value_in_node'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'value_in_node'}[1];

$result_errors{'value_in_node'} = [];


$result_floats{'value_in_node'} = {};


1;
