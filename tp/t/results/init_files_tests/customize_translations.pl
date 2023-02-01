use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'customize_translations'} = {
  'contents' => [
    {
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
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
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
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
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
      'cmdname' => 'top',
      'contents' => [
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
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
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
            'normalized' => 'Chapter'
          }
        ],
        'normalized' => 'Chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap'
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
                  'text' => 'fr'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'text_arg' => 'fr'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 12,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 8,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chapter fr'
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
            'normalized' => 'Chapter-fr'
          }
        ],
        'normalized' => 'Chapter-fr'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 13,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap fr'
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 16,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 14,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section fr'
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
            'normalized' => 'section-fr'
          }
        ],
        'normalized' => 'section-fr'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 18,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'sec fr'
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
      'cmdname' => 'section',
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
                  'text' => 'de'
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
          'cmdname' => 'documentlanguage',
          'extra' => {
            'text_arg' => 'de'
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 19,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Chapter de'
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
            'normalized' => 'Chapter-de'
          }
        ],
        'normalized' => 'Chapter-de'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 22,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chap de'
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'error',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 25,
                'macro' => ''
              }
            },
            {
              'text' => '.
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 23,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Last chapter'
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
            'normalized' => 'Last-chapter'
          }
        ],
        'normalized' => 'Last-chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Last Chapter'
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 28,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'customize_translations'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[9]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[9]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[9]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[11]{'extra'}{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[11]{'args'}[0]{'contents'}[0];
$result_trees{'customize_translations'}{'contents'}[11]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'customize_translations'}{'contents'}[11]{'args'}[0]{'contents'}[0];

$result_texis{'customize_translations'} = '
@contents

@node Top
@top top

@node Chapter
@chapter chap

@error{}.

@documentlanguage fr
@node Chapter fr
@chapter chap fr

@error{}.

@node section fr
@section sec fr

@documentlanguage de
@node Chapter de
@chapter chap de

@error{}.

@node Last chapter
@chapter Last Chapter

';


$result_texts{'customize_translations'} = '

top
***

1 chap
******

error-->.

2 chap fr
*********

error-->.

2.1 sec fr
==========

3 chap de
*********

error-->.

4 Last Chapter
**************

';

$result_sectioning{'customize_translations'} = {
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
                    'normalized' => 'Chapter'
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
                    'normalized' => 'Chapter-fr'
                  },
                  'info' => {},
                  'structure' => {}
                }
              },
              'info' => {},
              'structure' => {
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section-fr'
                        },
                        'info' => {},
                        'structure' => {}
                      }
                    },
                    'info' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '2.1',
                      'section_up' => {}
                    }
                  }
                ],
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
                    'normalized' => 'Chapter-de'
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
                    'normalized' => 'Last-chapter'
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
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2]{'structure'}{'toplevel_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_prev'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[2];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[3]{'structure'}{'toplevel_up'} = $result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0];
$result_sectioning{'customize_translations'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'customize_translations'};

$result_nodes{'customize_translations'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
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
            'section_number' => 1
          }
        },
        'normalized' => 'Chapter'
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
            'normalized' => 'Chapter-fr'
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
                'normalized' => 'Chapter-de'
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
                    'normalized' => 'Last-chapter'
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
    }
  }
};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'customize_translations'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'customize_translations'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'customize_translations'}{'structure'}{'node_next'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'customize_translations'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'customize_translations'};
$result_nodes{'customize_translations'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'customize_translations'};

$result_menus{'customize_translations'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'customize_translations'} = [];


$result_floats{'customize_translations'} = {};


1;
