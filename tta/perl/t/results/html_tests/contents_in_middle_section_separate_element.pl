use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'contents_in_middle_section_separate_element'} = {
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
        'file_name' => 'contents_in_middle_section.texi',
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
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 9
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
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 10
              }
            }
          ],
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
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
        'file_name' => 'contents_in_middle_section.texi',
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
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 12
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
                      'text' => 'section'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'section'
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
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 17
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
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => 'section1'
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
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 18
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
                'file_name' => 'contents_in_middle_section.texi',
                'line_nr' => 19
              }
            }
          ],
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
            'line_nr' => 16
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
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 13
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'section'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 21
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
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
              'text' => 'The section with contents
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'contents',
          'contents' => [
            {
              'text' => '
',
              'type' => 'rawline_arg'
            }
          ],
          'extra' => {},
          'source_info' => {
            'file_name' => 'contents_in_middle_section.texi',
            'line_nr' => 25
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'section_number' => '1.1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 22
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
          'type' => 'arguments_line'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'section1'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 27
      }
    },
    {
      'cmdname' => 'section',
      'contents' => [
        {
          'contents' => [
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
      'extra' => {
        'section_number' => '1.2'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'file_name' => 'contents_in_middle_section.texi',
        'line_nr' => 28
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    }
  ],
  'type' => 'document_root'
};
$result_trees{'contents_in_middle_section_separate_element'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'contents_in_middle_section_separate_element'}{'contents'}[2]{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'contents_in_middle_section_separate_element'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'contents_in_middle_section_separate_element'}{'contents'}[4]{'contents'}[3]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'contents_in_middle_section_separate_element'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'contents_in_middle_section_separate_element'}{'contents'}[4]{'contents'}[3]{'contents'}[2]{'contents'}[1]{'contents'}[0];

$result_texis{'contents_in_middle_section_separate_element'} = '\\input texinfo @c -*-texinfo-*-

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


$result_texts{'contents_in_middle_section_separate_element'} = 'Contents in section
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

$result_sectioning{'contents_in_middle_section_separate_element'} = {
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
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  },
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'section1'
                        }
                      },
                      'section_directions' => {
                        'prev' => {},
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.2'
                    }
                  }
                ],
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
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0];
$result_sectioning{'contents_in_middle_section_separate_element'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'contents_in_middle_section_separate_element'};

$result_nodes{'contents_in_middle_section_separate_element'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
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
            'normalized' => 'chapter'
          }
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
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'section',
              'extra' => {
                'section_number' => '1.2'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'section1'
          }
        },
        'up' => {}
      },
      'normalized' => 'section'
    }
  },
  {}
];
$result_nodes{'contents_in_middle_section_separate_element'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_in_middle_section_separate_element'}[0];
$result_nodes{'contents_in_middle_section_separate_element'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_in_middle_section_separate_element'}[0];
$result_nodes{'contents_in_middle_section_separate_element'}[1] = $result_nodes{'contents_in_middle_section_separate_element'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_in_middle_section_separate_element'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'contents_in_middle_section_separate_element'}[2];
$result_nodes{'contents_in_middle_section_separate_element'}[2]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_in_middle_section_separate_element'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_in_middle_section_separate_element'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'contents_in_middle_section_separate_element'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'contents_in_middle_section_separate_element'}[3] = $result_nodes{'contents_in_middle_section_separate_element'}[2]{'extra'}{'node_directions'}{'next'};

$result_menus{'contents_in_middle_section_separate_element'} = [
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
      'normalized' => 'chapter'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'section1'
          }
        },
        'up' => {}
      },
      'normalized' => 'section'
    }
  },
  {}
];
$result_menus{'contents_in_middle_section_separate_element'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_in_middle_section_separate_element'}[0];
$result_menus{'contents_in_middle_section_separate_element'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'contents_in_middle_section_separate_element'}[2];
$result_menus{'contents_in_middle_section_separate_element'}[2]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_in_middle_section_separate_element'}[1];
$result_menus{'contents_in_middle_section_separate_element'}[2]{'extra'}{'menu_directions'}{'up'} = $result_menus{'contents_in_middle_section_separate_element'}[1];
$result_menus{'contents_in_middle_section_separate_element'}[3] = $result_menus{'contents_in_middle_section_separate_element'}[2]{'extra'}{'menu_directions'}{'next'};

$result_errors{'contents_in_middle_section_separate_element'} = [];


$result_floats{'contents_in_middle_section_separate_element'} = {};


1;
