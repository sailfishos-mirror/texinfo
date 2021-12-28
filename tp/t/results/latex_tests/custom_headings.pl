use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'custom_headings'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'custom_headings.info'
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
            'text_arg' => 'custom_headings.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
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
                  'cmdname' => 'thispage',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thissectionname',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thissectionnum',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thissection',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thischaptername',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thischapternum',
                  'parent' => {}
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
          'cmdname' => 'evenheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 3,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'thischapter',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thistitle',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => 'thisfile',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'thischaptername',
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 4,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'cmdname' => 'evenfooting',
          'extra' => {
            'spaces_before_argument' => ' '
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
        }
      ],
      'parent' => {},
      'type' => 'text_root'
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
        'line_nr' => 6,
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
              'text' => 'top sectionning'
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
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
            'normalized' => 'chapter'
          }
        ],
        'normalized' => 'chapter',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
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
              'text' => 'ch--ap'
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
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
              'parent' => {},
              'text' => 'after ch--ap first page
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
          'cmdname' => 'page',
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
              'parent' => {},
              'text' => 'after ch--ap second page
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 10,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'sec1'
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
      'contents' => [
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
      'level' => 2,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 20,
        'macro' => ''
      },
      'number' => '1.1',
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap 2'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'toto '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' titi'
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
          'cmdname' => 'everyheading',
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
          'cmdname' => 'page',
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
              'parent' => {},
              'text' => 'after everyheading before chap 3 first page
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
          'cmdname' => 'page',
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
              'parent' => {},
              'text' => 'after everyheading before chap 3 second page
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 22,
        'macro' => ''
      },
      'number' => 2,
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap 3'
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
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
                  'text' => 'aa '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' bb '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' cc '
                },
                {
                  'cmdname' => '|',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' dd'
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
          'cmdname' => 'everyfooting',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 38,
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
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 34,
        'macro' => ''
      },
      'number' => 3,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[11]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[12]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[13]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[14]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[9]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[10];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[10]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[0]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[1]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[1];
$result_trees{'custom_headings'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'custom_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'custom_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[1]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[2]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[2];
$result_trees{'custom_headings'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[2];
$result_trees{'custom_headings'}{'contents'}[2]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[3];
$result_trees{'custom_headings'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'custom_headings'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'custom_headings'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'custom_headings'}{'contents'}[3]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4]{'contents'}[1];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4]{'contents'}[3];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4]{'contents'}[5];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4]{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'contents'}[8]{'parent'} = $result_trees{'custom_headings'}{'contents'}[4];
$result_trees{'custom_headings'}{'contents'}[4]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[5]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[5];
$result_trees{'custom_headings'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[5];
$result_trees{'custom_headings'}{'contents'}[5]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[3];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[5];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[5]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[6]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[7]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[8]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6]{'contents'}[9];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[9]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'contents'}[10]{'parent'} = $result_trees{'custom_headings'}{'contents'}[6];
$result_trees{'custom_headings'}{'contents'}[6]{'parent'} = $result_trees{'custom_headings'};
$result_trees{'custom_headings'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[1];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'custom_headings'}{'contents'}[7];
$result_trees{'custom_headings'}{'contents'}[7]{'parent'} = $result_trees{'custom_headings'};

$result_texis{'custom_headings'} = '@setfilename custom_headings.info

@evenheading @thispage @thissectionname @| @thissectionnum @thissection @| @thischaptername @thischapternum
@evenfooting @thischapter @thistitle @| @thisfile @| @code{@thischaptername}

@node Top
@top top sectionning

@node chapter
@chapter ch--ap

@page

after ch--ap first page

@page

after ch--ap second page

@section sec1

@chapter chap 2

@everyheading toto @| titi

@page

after everyheading before chap 3 first page

@page

after everyheading before chap 3 second page

@chapter chap 3

@page

@everyfooting aa @| bb @| cc @| dd

';


$result_texts{'custom_headings'} = '

top sectionning
***************

1 ch-ap
*******


after ch-ap first page


after ch-ap second page

1.1 sec1
========

2 chap 2
********



after everyheading before chap 3 first page


after everyheading before chap 3 second page

3 chap 3
********



';

$result_sectioning{'custom_headings'} = {
  'level' => -1,
  'section_childs' => [
    {
      'cmdname' => 'top',
      'extra' => {
        'associated_node' => {
          'cmdname' => 'node',
          'extra' => {
            'normalized' => 'Top',
            'spaces_before_argument' => ' '
          }
        },
        'spaces_before_argument' => ' '
      },
      'level' => 0,
      'section_childs' => [
        {
          'cmdname' => 'chapter',
          'extra' => {
            'associated_node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chapter',
                'spaces_before_argument' => ' '
              }
            },
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 1,
          'section_childs' => [
            {
              'cmdname' => 'section',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'level' => 2,
              'number' => '1.1',
              'section_up' => {}
            }
          ],
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 2,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        },
        {
          'cmdname' => 'chapter',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'level' => 1,
          'number' => 3,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      ],
      'section_up' => {}
    }
  ]
};
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0]{'section_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_prev'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0]{'toplevel_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1]{'section_prev'} = $result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1]{'section_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_prev'} = $result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1]{'toplevel_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[2]{'section_prev'} = $result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[2]{'section_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[2]{'toplevel_prev'} = $result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[1];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_childs'}[2]{'toplevel_up'} = $result_sectioning{'custom_headings'}{'section_childs'}[0];
$result_sectioning{'custom_headings'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'custom_headings'};

$result_nodes{'custom_headings'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 0
    },
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'node_next' => {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'level' => 1,
        'number' => 1
      },
      'normalized' => 'chapter',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
  }
};
$result_nodes{'custom_headings'}{'node_next'}{'node_prev'} = $result_nodes{'custom_headings'};
$result_nodes{'custom_headings'}{'node_next'}{'node_up'} = $result_nodes{'custom_headings'};

$result_menus{'custom_headings'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  }
};

$result_errors{'custom_headings'} = [
  {
    'error_line' => ':4: warning: @thischaptername should not appear in @code
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@thischaptername should not appear in @code',
    'type' => 'warning'
  }
];


$result_floats{'custom_headings'} = {};



$result_converted{'latex'}->{'custom_headings'} = '
\\newpagestyle{custom}{%
\\sethead[\\thepage{} \\sectiontitle{}][\\thesection{} Section \\thesection{} \\sectiontitle{}][\\chaptertitle{} \\thechapter{}]%
{}{}{}%
}%
\\pagestyle{custom}%
\\renewpagestyle{custom}{%
\\sethead[\\thepage{} \\sectiontitle{}][\\thesection{} Section \\thesection{} \\sectiontitle{}][\\chaptertitle{} \\thechapter{}]%
{}{}{}%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\GNUTexinfosettitle{}][][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%

\\chapter{ch--ap}
\\label{anchor:chapter}%

\\newpage{}%
\\phantom{blabla}%

after ch--ap first page

\\newpage{}%
\\phantom{blabla}%

after ch--ap second page

\\section{sec1}

\\chapter{chap 2}

\\renewpagestyle{custom}{%
\\sethead[toto][titi][]%
{toto}{titi}{}%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\GNUTexinfosettitle{}][][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%

\\newpage{}%
\\phantom{blabla}%

after everyheading before chap 3 first page

\\newpage{}%
\\phantom{blabla}%

after everyheading before chap 3 second page

\\chapter{chap 3}

\\newpage{}%
\\phantom{blabla}%

\\renewpagestyle{custom}{%
\\sethead[toto][titi][]%
{toto}{titi}{}%
\\setfoot[aa][bb][cc  dd]%
{aa}{bb}{cc  dd}%
}%
\\pagestyle{custom}%

';

1;
