use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'split_no_copying'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'split-nocopying.info'
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
            'text_arg' => 'split-nocopying.info'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
              'text' => 'This is the top node.
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
              'contents' => [],
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
                      'text' => 'Ch1'
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
                  'normalized' => 'Ch1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
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
                'command_argument' => 'menu',
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
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
            'line_nr' => 9,
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
              'parent' => {},
              'text' => 'Ch1'
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
            'normalized' => 'Ch1'
          }
        ],
        'normalized' => 'Ch1',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
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
              'parent' => {},
              'text' => 'Ch1'
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
              'text' => 'First chapter.
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 14,
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
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'};
$result_trees{'split_no_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[1]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'split_no_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'split_no_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[1]{'parent'} = $result_trees{'split_no_copying'};
$result_trees{'split_no_copying'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[2];
$result_trees{'split_no_copying'}{'contents'}[2]{'parent'} = $result_trees{'split_no_copying'};
$result_trees{'split_no_copying'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[3]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[3];
$result_trees{'split_no_copying'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'split_no_copying'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'split_no_copying'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'split_no_copying'}{'contents'}[3]{'parent'} = $result_trees{'split_no_copying'};
$result_trees{'split_no_copying'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4]{'args'}[0];
$result_trees{'split_no_copying'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4];
$result_trees{'split_no_copying'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4];
$result_trees{'split_no_copying'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4]{'contents'}[1];
$result_trees{'split_no_copying'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4];
$result_trees{'split_no_copying'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[4];
$result_trees{'split_no_copying'}{'contents'}[4]{'parent'} = $result_trees{'split_no_copying'};
$result_trees{'split_no_copying'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'split_no_copying'}{'contents'}[5];
$result_trees{'split_no_copying'}{'contents'}[5]{'parent'} = $result_trees{'split_no_copying'};

$result_texis{'split_no_copying'} = '\\input texinfo
@setfilename split-nocopying.info

@node Top
@top Top

This is the top node.

@menu
* Ch1::
@end menu

@node Ch1
@chapter Ch1

First chapter.

@bye
';


$result_texts{'split_no_copying'} = '\\input texinfo

Top
***

This is the top node.

* Ch1::

1 Ch1
*****

First chapter.

';

$result_sectioning{'split_no_copying'} = {
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
                    'normalized' => 'Ch1'
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
$result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_no_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'split_no_copying'};

$result_nodes{'split_no_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
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
        'normalized' => 'Ch1'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'split_no_copying'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'split_no_copying'};
$result_nodes{'split_no_copying'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'split_no_copying'};
$result_nodes{'split_no_copying'}{'structure'}{'node_next'} = $result_nodes{'split_no_copying'}{'structure'}{'menu_child'};

$result_menus{'split_no_copying'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'Ch1'
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
$result_menus{'split_no_copying'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'split_no_copying'};

$result_errors{'split_no_copying'} = [];


$result_floats{'split_no_copying'} = {};



$result_converted{'info'}->{'split_no_copying'} = 'This is split-nocopying.info, produced from .

\\input texinfo


File: split-nocopying.info,  Node: Top,  Next: Ch1,  Up: (dir)

Top
***

This is the top node.

* Menu:

* Ch1::


File: split-nocopying.info,  Node: Ch1,  Prev: Top,  Up: Top

1 Ch1
*****

First chapter.



Tag Table:
Node: Top63
Node: Ch1179

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
