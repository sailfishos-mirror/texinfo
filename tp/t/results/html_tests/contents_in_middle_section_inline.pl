use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'contents_in_middle_section_inline'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
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
          'contents' => [],
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
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 3,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Contents in section'
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
        },
        {
          'contents' => [
            {
              'text' => 'Content in section.
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
                'spaces_after_argument' => {
                  'text' => ' 
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'chapter'
                }
              },
              'source_info' => {
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 9,
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
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 10,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
            'line_nr' => 8,
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'chapter'
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 12,
        'macro' => ''
      }
    },
    {
      'args' => [
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
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
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => 'section'
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'section'
                }
              },
              'source_info' => {
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 17,
                'macro' => ''
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
                      'text' => 'section1'
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
                'menu_entry_node_label' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'section1'
                }
              },
              'source_info' => {
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 18,
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
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'menu'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 19,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
            'line_nr' => 16,
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 13,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section'
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
            'normalized' => 'section'
          }
        ],
        'normalized' => 'section'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 21,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section'
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
          'contents' => [
            {
              'text' => 'The section with contents
'
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
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
            'line_nr' => 25,
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
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 22,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section1'
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
            'normalized' => 'section1'
          }
        ],
        'normalized' => 'section1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 27,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'section 1'
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
          'contents' => [
            {
              'text' => 'Section 1.
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
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 28,
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
$result_trees{'contents_in_middle_section_inline'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'contents_in_middle_section_inline'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[3];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[3];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'extra'}{'menu_entry_node_label'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[4]{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[7]{'extra'}{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'contents_in_middle_section_inline'}{'contents'}[7]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'contents_in_middle_section_inline'}{'contents'}[7]{'args'}[0]{'contents'}[0];

$result_texis{'contents_in_middle_section_inline'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top Contents in section

Content in section.

@menu 
* chapter::
@end menu

@node chapter
@chapter Chapter 1


@menu
* section::
* section1::
@end menu

@node section
@section section

The section with contents
@contents

@node section1
@section section 1

Section 1.

@bye
';


$result_texts{'contents_in_middle_section_inline'} = 'Contents in section
*******************

Content in section.

* chapter::

1 Chapter 1
***********


* section::
* section1::

1.1 section
===========

The section with contents

1.2 section 1
=============

Section 1.

';

$result_sectioning{'contents_in_middle_section_inline'} = {
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
                    'normalized' => 'chapter'
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
                          'normalized' => 'section'
                        },
                        'info' => {},
                        'structure' => {}
                      }
                    },
                    'info' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.1',
                      'section_up' => {}
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section1'
                        },
                        'info' => {},
                        'structure' => {}
                      }
                    },
                    'info' => {},
                    'structure' => {
                      'section_level' => 2,
                      'section_number' => '1.2',
                      'section_prev' => {},
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
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_inline'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'contents_in_middle_section_inline'};

$result_nodes{'contents_in_middle_section_inline'} = {
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
        'menus' => [
          {
            'cmdname' => 'menu'
          }
        ],
        'normalized' => 'chapter'
      },
      'info' => {},
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {},
              'info' => {},
              'structure' => {
                'section_number' => '1.1'
              }
            },
            'normalized' => 'section'
          },
          'info' => {},
          'structure' => {
            'node_next' => {
              'cmdname' => 'node',
              'extra' => {
                'associated_section' => {
                  'cmdname' => 'section',
                  'extra' => {},
                  'info' => {},
                  'structure' => {
                    'section_number' => '1.2'
                  }
                },
                'normalized' => 'section1'
              },
              'info' => {},
              'structure' => {
                'node_prev' => {},
                'node_up' => {}
              }
            },
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
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'};
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'};
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'contents_in_middle_section_inline'};
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'contents_in_middle_section_inline'};
$result_nodes{'contents_in_middle_section_inline'}{'structure'}{'node_next'} = $result_nodes{'contents_in_middle_section_inline'}{'structure'}{'menu_child'};

$result_menus{'contents_in_middle_section_inline'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'chapter'
      },
      'info' => {},
      'structure' => {
        'menu_child' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'section'
          },
          'info' => {},
          'structure' => {
            'menu_next' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'section1'
              },
              'info' => {},
              'structure' => {
                'menu_prev' => {},
                'menu_up' => {},
                'menu_up_hash' => {
                  'chapter' => 1
                }
              }
            },
            'menu_up' => {},
            'menu_up_hash' => {
              'chapter' => 1
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
$result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'};
$result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'};
$result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'};
$result_menus{'contents_in_middle_section_inline'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'contents_in_middle_section_inline'};

$result_errors{'contents_in_middle_section_inline'} = [];


$result_floats{'contents_in_middle_section_inline'} = {};


1;
