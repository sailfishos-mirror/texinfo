use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protected_node_parentheses'} = {
  'contents' => [
    {
      'contents' => [
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
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
          'cmdname' => 'menu',
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
              'args' => [
                {
                  'parent' => {},
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '('
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 6,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'manual) name'
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
                    {},
                    {}
                  ],
                  'normalized' => '_0028manual_0029-name'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              },
              'parent' => {},
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '('
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'manual) name'
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
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '('
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'asis',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 11,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => 'manual2) name2'
                }
              ],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'contents' => [],
          'extra' => {
            'node_content' => [
              {},
              {}
            ],
            'normalized' => '_0028manual2_0029-name2'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_spaces_after_close_brace'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => '('
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'asis',
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 13,
                        'macro' => ''
                      },
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'manual2) name2'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ref',
              'contents' => [],
              'extra' => {
                'label' => {},
                'node_argument' => {
                  'node_content' => [
                    {},
                    {}
                  ],
                  'normalized' => '_0028manual2_0029-name2'
                }
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'node_content' => [
          {},
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {},
              {}
            ],
            'normalized' => '_0028manual_0029-name'
          }
        ],
        'normalized' => '_0028manual_0029-name',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 9,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'protected_node_parentheses'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'};
$result_trees{'protected_node_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[1]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'};
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[2];
$result_trees{'protected_node_parentheses'}{'contents'}[2]{'parent'} = $result_trees{'protected_node_parentheses'};
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'extra'}{'label'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'protected_node_parentheses'}{'contents'}[3];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'extra'}{'node_content'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[1] = $result_trees{'protected_node_parentheses'}{'contents'}[3]{'args'}[0]{'contents'}[1];
$result_trees{'protected_node_parentheses'}{'contents'}[3]{'parent'} = $result_trees{'protected_node_parentheses'};

$result_texis{'protected_node_parentheses'} = '
@node Top
@top top

@menu
* @asis{(}manual) name::
@end menu

@node @asis{(}manual) name

@anchor{@asis{(}manual2) name2}

@ref{@asis{(}manual2) name2}.
';


$result_texts{'protected_node_parentheses'} = '
top
***

* (manual) name::



(manual2) name2.
';

$result_sectioning{'protected_node_parentheses'} = {
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
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'protected_node_parentheses'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'protected_node_parentheses'};

$result_nodes{'protected_node_parentheses'} = {
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
        'normalized' => '_0028manual_0029-name'
      },
      'structure' => {
        'node_prev' => {},
        'node_up' => {}
      }
    },
    'node_next' => {}
  }
};
$result_nodes{'protected_node_parentheses'}{'structure'}{'menu_child'}{'structure'}{'node_prev'} = $result_nodes{'protected_node_parentheses'};
$result_nodes{'protected_node_parentheses'}{'structure'}{'menu_child'}{'structure'}{'node_up'} = $result_nodes{'protected_node_parentheses'};
$result_nodes{'protected_node_parentheses'}{'structure'}{'node_next'} = $result_nodes{'protected_node_parentheses'}{'structure'}{'menu_child'};

$result_menus{'protected_node_parentheses'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'menu_child' => {
      'cmdname' => 'node',
      'extra' => {
        'normalized' => '_0028manual_0029-name'
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
$result_menus{'protected_node_parentheses'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_menus{'protected_node_parentheses'};

$result_errors{'protected_node_parentheses'} = [];


$result_floats{'protected_node_parentheses'} = {};



$result_converted{'info'}->{'protected_node_parentheses'} = 'This is , produced from .


File: ,  Node: Top,  Next: (manual) name,  Up: (dir)

top
***

* Menu:

* (manual) name::


File: ,  Node: (manual) name,  Prev: Top,  Up: Top

*note (manual2) name2::.


Tag Table:
Node: Top27
Node: (manual) name120
Ref: (manual2) name2174

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'protected_node_parentheses'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
Next: <a href="#g_t_0028manual_0029-name" accesskey="n" rel="next">(manual) name</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>


<hr>
<a class="node-id" id="g_t_0028manual_0029-name"></a><div class="nav-panel">
<p>
Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h4 class="node">(manual) name</h4>

<a class="anchor" id="g_t_0028manual2_0029-name2"></a>
<p><a class="ref" href="#g_t_0028manual2_0029-name2">(manual2) name2</a>.
</p></div>



</body>
</html>
';

1;
