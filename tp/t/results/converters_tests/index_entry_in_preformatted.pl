use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entry_in_preformatted'} = {
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
            'normalized' => 'chap'
          }
        ],
        'normalized' => 'chap',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
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
          'cmdname' => 'example',
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
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'first'
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
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'parent' => {},
                  'text' => 'text
'
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
                          'text' => 'other'
                        }
                      ],
                      'extra' => {
                        'comment_at_end' => {
                          'args' => [
                            {
                              'parent' => {},
                              'text' => ' comment
',
                              'type' => 'misc_arg'
                            }
                          ],
                          'cmdname' => 'c',
                          'extra' => {
                            'misc_args' => [
                              ' comment
'
                            ]
                          },
                          'parent' => {}
                        },
                        'spaces_after_argument' => ' '
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
                      'number' => 2
                    },
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'type' => 'index_entry_command'
                },
                {
                  'parent' => {},
                  'text' => 'text2
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'last'
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
                      'number' => 3
                    },
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 13,
                    'macro' => ''
                  },
                  'type' => 'index_entry_command'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          }
        }
      ],
      'extra' => {
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
  'type' => 'document_root'
};
$result_trees{'index_entry_in_preformatted'}{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_preformatted'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[2]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[2];
$result_trees{'index_entry_in_preformatted'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[2];
$result_trees{'index_entry_in_preformatted'}{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_preformatted'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[3]{'parent'} = $result_trees{'index_entry_in_preformatted'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[3];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'contents'}[2];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_preformatted'}{'contents'}[4];
$result_trees{'index_entry_in_preformatted'}{'contents'}[4]{'parent'} = $result_trees{'index_entry_in_preformatted'};

$result_texis{'index_entry_in_preformatted'} = '@node Top
@top top

@node chap
@chapter Chapter

@example
@cindex first
text

@cindex other @c comment
text2
@cindex last
@end example
';


$result_texts{'index_entry_in_preformatted'} = 'top
***

1 Chapter
*********

text

text2
';

$result_sectioning{'index_entry_in_preformatted'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0];
$result_sectioning{'index_entry_in_preformatted'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_entry_in_preformatted'};

$result_nodes{'index_entry_in_preformatted'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'structure' => {
    'node_next' => {
      'cmdname' => 'node',
      'extra' => {
        'associated_section' => {
          'cmdname' => 'chapter',
          'extra' => {},
          'structure' => {
            'section_number' => 1
          }
        },
        'normalized' => 'chap'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    }
  }
};
$result_nodes{'index_entry_in_preformatted'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'index_entry_in_preformatted'};
$result_nodes{'index_entry_in_preformatted'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'index_entry_in_preformatted'};

$result_menus{'index_entry_in_preformatted'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {}
};

$result_errors{'index_entry_in_preformatted'} = [];


$result_floats{'index_entry_in_preformatted'} = {};


$result_indices_sort_strings{'index_entry_in_preformatted'} = {
  'cp' => [
    'first',
    'last',
    'other'
  ]
};



$result_converted{'plaintext'}->{'index_entry_in_preformatted'} = 'top
***

1 Chapter
*********

     text

     text2
';


$result_converted{'html_text'}->{'index_entry_in_preformatted'} = '<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
 &nbsp; </p>
</div>
<h2 class="chapter" id="Chapter">1 Chapter</h2>

<div class="example">
<pre class="example-preformatted"><a class="index-entry-id" id="index-first"></a>text

<a class="index-entry-id" id="index-other"></a>text2
<a class="index-entry-id" id="index-last"></a></pre></div>
</div>
</div>
';


$result_converted{'xml'}->{'index_entry_in_preformatted'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node name="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<example endspaces=" ">
<pre xml:space="preserve"><cindex index="cp" spaces=" "><indexterm index="cp" number="1">first</indexterm></cindex>
text

<cindex index="cp" spaces=" "><indexterm index="cp" number="2">other</indexterm></cindex><!-- c comment -->
text2
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">last</indexterm></cindex>
</pre></example>
</chapter>
';


$result_converted{'docbook'}->{'index_entry_in_preformatted'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<screen><indexterm role="cp"><primary>first</primary></indexterm>text

<indexterm role="cp"><primary>other</primary></indexterm><!-- comment -->text2
<indexterm role="cp"><primary>last</primary></indexterm></screen></chapter>
';


$result_converted{'latex'}->{'index_entry_in_preformatted'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily \\index[cp]{first}%
text

\\index[cp]{other}%
text2
\\index[cp]{last}%
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
