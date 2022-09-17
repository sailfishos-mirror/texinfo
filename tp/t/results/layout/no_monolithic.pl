use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_monolithic'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo @c -*-texinfo-*-
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
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'no_monolithic.info'
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
              'cmdname' => 'setfilename',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'no_monolithic.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'no_monolithic.texi',
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
              'parent' => {},
              'text' => 'Not monolithic'
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
              'text' => 'Not monolitic manual'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'my footnote'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'parent' => {},
              'source_info' => {
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
                  'text' => 'top'
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'node' => {},
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 10,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
                      'text' => 'chapter'
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
                  'normalized' => 'chapter'
                }
              },
              'parent' => {},
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
                'file_name' => 'no_monolithic.texi',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 12,
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
              'parent' => {},
              'text' => 'chapter'
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
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
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
              'parent' => {},
              'text' => 'Chapter'
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
              'text' => 'Chapter.
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 21,
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
          'cmdname' => 'shortcontents',
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 22,
            'macro' => ''
          }
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
                  'text' => 'cp'
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
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => 'no_monolithic.texi',
            'line_nr' => 24,
            'macro' => ''
          }
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'no_monolithic.texi',
        'line_nr' => 17,
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
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'};
$result_trees{'no_monolithic'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[1]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'no_monolithic'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'no_monolithic'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'};
$result_trees{'no_monolithic'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'no_monolithic'}{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[3];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[2];
$result_trees{'no_monolithic'}{'contents'}[2]{'parent'} = $result_trees{'no_monolithic'};
$result_trees{'no_monolithic'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[3]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[3];
$result_trees{'no_monolithic'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'no_monolithic'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'no_monolithic'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'no_monolithic'}{'contents'}[3]{'parent'} = $result_trees{'no_monolithic'};
$result_trees{'no_monolithic'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[1];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[3];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[6]{'args'}[0];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[6];
$result_trees{'no_monolithic'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[4];
$result_trees{'no_monolithic'}{'contents'}[4]{'parent'} = $result_trees{'no_monolithic'};
$result_trees{'no_monolithic'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'no_monolithic'}{'contents'}[5];
$result_trees{'no_monolithic'}{'contents'}[5]{'parent'} = $result_trees{'no_monolithic'};

$result_texis{'no_monolithic'} = '\\input texinfo @c -*-texinfo-*-

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


$result_texts{'no_monolithic'} = '
Not monolithic
**************

Not monolitic manual.


* chapter::

1 Chapter
*********

Chapter.


';

$result_sectioning{'no_monolithic'} = {
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
                    'isindex' => 1,
                    'normalized' => 'chapter'
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
$result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_monolithic'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_monolithic'};

$result_nodes{'no_monolithic'} = {
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
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'no_monolithic'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'no_monolithic'};
$result_nodes{'no_monolithic'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'no_monolithic'};
$result_nodes{'no_monolithic'}{'structure'}{'node_next'} = $result_nodes{'no_monolithic'}{'structure'}{'menu_child'};

$result_menus{'no_monolithic'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'isindex' => 1,
        'normalized' => 'chapter'
      },
      'structure' => {
        'menu_up' => {},
        'menu_up_hash' => {
          'Top' => 1
        }
      }
    }
  }
};
$result_menus{'no_monolithic'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'no_monolithic'};

$result_errors{'no_monolithic'} = [];


$result_floats{'no_monolithic'} = {};


$result_indices_sort_strings{'no_monolithic'} = {
  'cp' => [
    'top'
  ]
};


1;
