use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_monolithic_only_toc_out'} = {
  'contents' => [
    {
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
                      'text' => 'no_monolithic.info'
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
                'text_arg' => 'no_monolithic.info'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 3,
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
        'file_name' => 'no_monolithic.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Not monolithic'
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
          'contents' => [
            {
              'text' => 'Not monolitic manual'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'my footnote'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'source_info' => {
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 8,
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
                  'text' => 'top'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_node' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                'menu_entry_node' => {
                  'node_content' => [
                    {}
                  ],
                  'normalized' => 'chapter'
                }
              },
              'source_info' => {
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 13,
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
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 12,
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
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'no_monolithic.texi',
        'line_nr' => 6,
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
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
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
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'no_monolithic.texi',
        'line_nr' => 16,
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
          'contents' => [
            {
              'text' => 'Chapter.
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
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 21,
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
          'cmdname' => 'shortcontents',
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 22,
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
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 24,
            'macro' => ''
          }
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'no_monolithic.texi',
        'line_nr' => 17,
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
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[1];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic_only_toc_out'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'no_monolithic_only_toc_out'}{'contents'}[3]{'args'}[0]{'contents'}[0];

$result_texis{'no_monolithic_only_toc_out'} = '\\input texinfo @c -*-texinfo-*-

@setfilename no_monolithic.info

@node Top
@top Not monolithic

Not monolitic manual@footnote{my footnote}.

@cindex top

@menu
* chapter::
@end menu

@node chapter
@chapter Chapter

Chapter.

@contents
@shortcontents

@printindex cp
@bye
';


$result_texts{'no_monolithic_only_toc_out'} = '
Not monolithic
**************

Not monolitic manual.


* chapter::

1 Chapter
*********

Chapter.


';

$result_sectioning{'no_monolithic_only_toc_out'} = {
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
                    'isindex' => 1,
                    'normalized' => 'chapter'
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
$result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_monolithic_only_toc_out'};

$result_nodes{'no_monolithic_only_toc_out'} = {
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
        'isindex' => 1,
        'normalized' => 'chapter'
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
$result_nodes{'no_monolithic_only_toc_out'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'no_monolithic_only_toc_out'};
$result_nodes{'no_monolithic_only_toc_out'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'no_monolithic_only_toc_out'};
$result_nodes{'no_monolithic_only_toc_out'}{'structure'}{'node_next'} = $result_nodes{'no_monolithic_only_toc_out'}{'structure'}{'menu_child'};

$result_menus{'no_monolithic_only_toc_out'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {},
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'chapter'
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
$result_menus{'no_monolithic_only_toc_out'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'no_monolithic_only_toc_out'};

$result_errors{'no_monolithic_only_toc_out'} = [];


$result_floats{'no_monolithic_only_toc_out'} = {};


$result_indices_sort_strings{'no_monolithic_only_toc_out'} = {
  'cp' => [
    'top'
  ]
};


1;
