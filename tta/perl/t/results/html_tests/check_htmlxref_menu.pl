use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'check_htmlxref_menu'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'type' => 'preamble_before_content'
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
                  'text' => '../there/no_existing_no_manual_direction'
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
                  'text' => 'first'
                }
              ],
              'extra' => {
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'first'
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
        'line_nr' => 2
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
                  'text' => 'top'
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
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'b'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'no_existing_no_manual.info'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'b'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'no_existing_no_manual.info'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 6
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
                      'text' => 'first'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'first'
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
                'line_nr' => 9
              },
              'type' => 'menu_entry'
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
                      'text' => '('
                    },
                    {
                      'text' => 'other_no_existing_no_manual'
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
                'line_nr' => 10
              },
              'type' => 'menu_entry'
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
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'chapter'
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
                'line_nr' => 11
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
                'line_nr' => 12
              }
            }
          ],
          'source_info' => {
            'line_nr' => 8
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
        'line_nr' => 3
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
                  'text' => 'first'
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
                  'text' => 'no_existing_no_manual.info'
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
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'first'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 14
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
                  'text' => 'chapter'
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
                  'text' => 'chap_not_existing'
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
                },
                {
                  'text' => 'node in dir'
                }
              ],
              'extra' => {
                'manual_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'node_content' => {
                  'contents' => [
                    {}
                  ]
                },
                'normalized' => 'node-in-dir'
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
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 16
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
                  'text' => 'Chapter'
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'some_name_inf.inf'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'aa'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 19
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
        'section_number' => '1'
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
  'type' => 'document_root'
};
$result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[1]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[2]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[2]{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'check_htmlxref_menu'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[4]{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'check_htmlxref_menu'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'check_htmlxref_menu'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'check_htmlxref_menu'}{'contents'}[5]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[3];

$result_texis{'check_htmlxref_menu'} = '
@node Top, (../there/no_existing_no_manual_direction), first, (dir)
@top top

@ref{a, b, c, no_existing_no_manual.info}
@ref{a, b, c, no_existing_no_manual.info}

@menu
* first::
* (other_no_existing_no_manual)::
* chapter::
@end menu

@node first, (no_existing_no_manual.info)

@node chapter, (chap_not_existing), (dir)node in dir
@chapter Chapter

@xref{(some_name_inf.inf)aa}.
';


$result_texts{'check_htmlxref_menu'} = 'top
***

a
a

* first::
* (other_no_existing_no_manual)::
* chapter::


1 Chapter
*********

(some_name_inf.inf)aa.
';

$result_sectioning{'check_htmlxref_menu'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0];
$result_sectioning{'check_htmlxref_menu'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'check_htmlxref_menu'};

$result_nodes{'check_htmlxref_menu'} = [
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
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'next' => {
                'extra' => {
                  'manual_content' => {}
                },
                'type' => 'line_arg'
              }
            },
            'normalized' => 'first'
          }
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
  {},
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
        'next' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'line_arg'
        },
        'prev' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => 'node-in-dir'
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'chapter'
    }
  }
];
$result_nodes{'check_htmlxref_menu'}[1] = $result_nodes{'check_htmlxref_menu'}[0]{'extra'}{'node_directions'}{'prev'};

$result_menus{'check_htmlxref_menu'} = [
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
        'next' => {
          'extra' => {
            'manual_content' => {}
          },
          'type' => 'menu_entry_node'
        },
        'up' => {}
      },
      'normalized' => 'first'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'chapter'
    }
  }
];
$result_menus{'check_htmlxref_menu'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'check_htmlxref_menu'}[0];
$result_menus{'check_htmlxref_menu'}[2]{'extra'}{'menu_directions'}{'prev'} = $result_menus{'check_htmlxref_menu'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'check_htmlxref_menu'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'check_htmlxref_menu'}[0];

$result_errors{'check_htmlxref_menu'} = [];


$result_floats{'check_htmlxref_menu'} = {};


$result_converted_errors{'file_html'}->{'check_htmlxref_menu'} = [
  {
    'error_line' => 'warning: no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'
',
    'line_nr' => 2,
    'text' => 'no HTML cross-references entry found for `../there/no_existing_no_manual_direction\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `dir\'
',
    'line_nr' => 2,
    'text' => 'no HTML cross-references entry found for `dir\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 5,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 6,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `other_no_existing_no_manual\'
',
    'line_nr' => 10,
    'text' => 'no HTML cross-references entry found for `other_no_existing_no_manual\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 14,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `no_existing_no_manual.info\'
',
    'line_nr' => 14,
    'text' => 'no HTML cross-references entry found for `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .info suffix in reference for manual `no_existing_no_manual.info\'
',
    'line_nr' => 14,
    'text' => 'do not set .info suffix in reference for manual `no_existing_no_manual.info\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `chap_not_existing\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `chap_not_existing\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `dir\'
',
    'line_nr' => 16,
    'text' => 'no HTML cross-references entry found for `dir\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: do not set .inf suffix in reference for manual `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'do not set .inf suffix in reference for manual `some_name_inf.inf\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: no HTML cross-references entry found for `some_name_inf.inf\'
',
    'line_nr' => 19,
    'text' => 'no HTML cross-references entry found for `some_name_inf.inf\'',
    'type' => 'warning'
  }
];


1;
