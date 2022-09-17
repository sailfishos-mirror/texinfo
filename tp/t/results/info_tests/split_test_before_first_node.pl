use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'split_test_before_first_node'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'split_test_before_first_node.info'
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
            'text_arg' => 'split_test_before_first_node.info'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'truc machin et reuc machin  ze aze zea zae eaz eaz zae
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'In top node
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
                      'text' => 'chap1'
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
                  'normalized' => 'chap1'
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
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
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
              'text' => 'chap1'
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
            'normalized' => 'chap1'
          }
        ],
        'normalized' => 'chap1',
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
              'text' => 'In chap1.
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
        'line_nr' => 15,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'};
$result_trees{'split_test_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[1]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[1];
$result_trees{'split_test_before_first_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'split_test_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'split_test_before_first_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[1]{'parent'} = $result_trees{'split_test_before_first_node'};
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[1];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_description'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[2];
$result_trees{'split_test_before_first_node'}{'contents'}[2]{'parent'} = $result_trees{'split_test_before_first_node'};
$result_trees{'split_test_before_first_node'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[3]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[3];
$result_trees{'split_test_before_first_node'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'split_test_before_first_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'split_test_before_first_node'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[3]{'parent'} = $result_trees{'split_test_before_first_node'};
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4]{'args'}[0];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4]{'contents'}[1];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'split_test_before_first_node'}{'contents'}[4];
$result_trees{'split_test_before_first_node'}{'contents'}[4]{'parent'} = $result_trees{'split_test_before_first_node'};

$result_texis{'split_test_before_first_node'} = '@setfilename split_test_before_first_node.info

truc machin et reuc machin  ze aze zea zae eaz eaz zae

@node Top
@top top

In top node

@menu
* chap1::
@end menu

@node chap1
@chapter chap

In chap1.

';


$result_texts{'split_test_before_first_node'} = '
truc machin et reuc machin  ze aze zea zae eaz eaz zae

top
***

In top node

* chap1::

1 chap
******

In chap1.

';

$result_sectioning{'split_test_before_first_node'} = {
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
                    'normalized' => 'chap1'
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
$result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0];
$result_sectioning{'split_test_before_first_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'split_test_before_first_node'};

$result_nodes{'split_test_before_first_node'} = {
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
        'normalized' => 'chap1'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'split_test_before_first_node'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'split_test_before_first_node'};
$result_nodes{'split_test_before_first_node'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'split_test_before_first_node'};
$result_nodes{'split_test_before_first_node'}{'structure'}{'node_next'} = $result_nodes{'split_test_before_first_node'}{'structure'}{'menu_child'};

$result_menus{'split_test_before_first_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => 'chap1'
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
$result_menus{'split_test_before_first_node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'split_test_before_first_node'};

$result_errors{'split_test_before_first_node'} = [];


$result_floats{'split_test_before_first_node'} = {};


1;
