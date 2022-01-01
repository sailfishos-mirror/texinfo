use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'part_node_chapter_after_top'} = [
  {
    'contents' => [
      {
        'contents' => [],
        'parent' => {
          'contents' => [
            {},
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
                'line_nr' => 1,
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
                              'parent' => {},
                              'text' => 'a node after part'
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
                          'normalized' => 'a-node-after-part'
                        }
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      },
                      'parent' => {},
                      'type' => 'menu_entry'
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
              'extra' => {
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
                      'text' => 'part'
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
              'cmdname' => 'part',
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
                      'text' => 'a node after part'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'chapter'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'node',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'After a node after part
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
                'node_content' => [
                  {}
                ],
                'nodes_manuals' => [
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'a-node-after-part'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'chapter'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  }
                ],
                'normalized' => 'a-node-after-part',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 11,
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
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a node after part'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'line_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
',
                    'spaces_before_argument' => ' '
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
                  },
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'a-node-after-part'
                  },
                  undef,
                  {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'Top'
                  }
                ],
                'normalized' => 'chapter',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 14,
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
              'cmdname' => 'chapter',
              'contents' => [],
              'extra' => {
                'associated_part' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 15,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
          'type' => 'document_root'
        },
        'type' => 'before_node_section'
      },
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {},
      'unit_node' => {},
      'unit_section' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {},
      {},
      {},
      {}
    ],
    'extra' => {
      'unit_command' => {},
      'unit_node' => {},
      'unit_section' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[1]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[2]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[3]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[2]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[3]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[1]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[3]{'contents'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'extra'}{'associated_part'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'parent'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'};
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[1] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'contents'}[2] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'extra'}{'unit_command'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'part_node_chapter_after_top'}[0]{'extra'}{'unit_section'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'part_node_chapter_after_top'}[1]{'contents'}[0] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'part_node_chapter_after_top'}[1]{'contents'}[1] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'part_node_chapter_after_top'}[1]{'contents'}[2] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[1]{'contents'}[3] = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'part_node_chapter_after_top'}[1]{'extra'}{'unit_command'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'part_node_chapter_after_top'}[1]{'extra'}{'unit_node'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'part_node_chapter_after_top'}[1]{'extra'}{'unit_section'} = $result_trees{'part_node_chapter_after_top'}[0]{'contents'}[0]{'parent'}{'contents'}[6];

$result_texis{'part_node_chapter_after_top'} = '@node Top
@top top

@menu
* a node after part::
* chapter::
@end menu

@part part

@node a node after part, chapter, Top, Top
After a node after part

@node chapter, a node after part,, Top
@chapter chapter 
';


$result_texts{'part_node_chapter_after_top'} = 'top
***

* a node after part::
* chapter::

part
****

After a node after part

1 chapter
*********
';

$result_sectioning{'part_node_chapter_after_top'} = {
  'structure' => {
    'level' => -1,
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {},
                  'unit_node' => {},
                  'unit_section' => {}
                },
                'structure' => {
                  'directions' => {
                    'FastForward' => {
                      'extra' => {
                        'unit_command' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_node' => {
                              'cmdname' => 'node',
                              'extra' => {
                                'normalized' => 'chapter'
                              },
                              'structure' => {
                                'associated_unit' => {}
                              }
                            },
                            'associated_part' => {
                              'cmdname' => 'part',
                              'extra' => {
                                'part_associated_section' => {}
                              },
                              'structure' => {
                                'associated_unit' => {},
                                'level' => 0,
                                'section_childs' => [
                                  {}
                                ],
                                'section_prev' => {},
                                'section_up' => {}
                              }
                            }
                          },
                          'structure' => {
                            'associated_unit' => {},
                            'level' => 1,
                            'number' => 1,
                            'section_up' => {},
                            'toplevel_prev' => {},
                            'toplevel_up' => {}
                          }
                        },
                        'unit_node' => {},
                        'unit_section' => {}
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'NodeUp' => {},
                          'This' => {}
                        },
                        'unit_prev' => {}
                      },
                      'type' => 'unit'
                    },
                    'Forward' => {},
                    'Next' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'This' => {}
                  },
                  'unit_next' => {}
                },
                'type' => 'unit'
              }
            }
          }
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0,
          'section_up' => {}
        }
      },
      {}
    ]
  }
};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_node'}{'structure'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'extra'}{'part_associated_section'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'section_childs'}[0] = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'section_prev'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'section_up'} = $result_sectioning{'part_node_chapter_after_top'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'section_up'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_prev'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'toplevel_up'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_node'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_section'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'part_node_chapter_after_top'};
$result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[1] = $result_sectioning{'part_node_chapter_after_top'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'};

$result_nodes{'part_node_chapter_after_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {
        'associated_unit' => {
          'extra' => {
            'unit_command' => {},
            'unit_node' => {},
            'unit_section' => {}
          },
          'structure' => {
            'directions' => {
              'FastForward' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_part' => {
                        'cmdname' => 'part',
                        'extra' => {},
                        'structure' => {
                          'associated_unit' => {},
                          'level' => 0
                        }
                      }
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'level' => 1,
                      'number' => 1
                    }
                  },
                  'unit_node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'associated_section' => {},
                      'normalized' => 'chapter'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'node_next' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'a-node-after-part'
                        },
                        'structure' => {
                          'associated_unit' => {},
                          'node_next' => {},
                          'node_prev' => {},
                          'node_up' => {}
                        }
                      },
                      'node_up' => {}
                    }
                  },
                  'unit_section' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodeUp' => {},
                    'This' => {}
                  },
                  'unit_prev' => {}
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'Next' => {},
              'NodeForward' => {},
              'NodeNext' => {},
              'This' => {}
            },
            'unit_next' => {}
          },
          'type' => 'unit'
        },
        'level' => 0
      }
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
    'associated_unit' => {},
    'menu_child' => {},
    'node_next' => {}
  }
};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'} = $result_nodes{'part_node_chapter_after_top'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'extra'}{'associated_section'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'}{'structure'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'}{'structure'}{'node_next'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'part_node_chapter_after_top'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'part_node_chapter_after_top'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_up'} = $result_nodes{'part_node_chapter_after_top'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_section'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'part_node_chapter_after_top'}{'structure'}{'associated_unit'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'part_node_chapter_after_top'}{'structure'}{'menu_child'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'};
$result_nodes{'part_node_chapter_after_top'}{'structure'}{'node_next'} = $result_nodes{'part_node_chapter_after_top'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'node_next'};

$result_menus{'part_node_chapter_after_top'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'structure' => {
    'associated_unit' => {
      'extra' => {
        'unit_command' => {
          'cmdname' => 'top',
          'extra' => {},
          'structure' => {
            'associated_unit' => {},
            'level' => 0
          }
        },
        'unit_node' => {},
        'unit_section' => {}
      },
      'structure' => {
        'directions' => {
          'FastForward' => {
            'extra' => {
              'unit_command' => {
                'cmdname' => 'chapter',
                'extra' => {
                  'associated_part' => {
                    'cmdname' => 'part',
                    'extra' => {},
                    'structure' => {
                      'associated_unit' => {},
                      'level' => 0
                    }
                  }
                },
                'structure' => {
                  'associated_unit' => {},
                  'level' => 1,
                  'number' => 1
                }
              },
              'unit_node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chapter'
                },
                'structure' => {
                  'associated_unit' => {},
                  'menu_prev' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'a-node-after-part'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'menu_next' => {},
                      'menu_up' => {},
                      'menu_up_hash' => {
                        'Top' => 1
                      }
                    }
                  },
                  'menu_up' => {},
                  'menu_up_hash' => {
                    'Top' => 1
                  }
                }
              },
              'unit_section' => {}
            },
            'structure' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodeUp' => {},
                'This' => {}
              },
              'unit_prev' => {}
            },
            'type' => 'unit'
          },
          'Forward' => {},
          'Next' => {},
          'NodeForward' => {},
          'NodeNext' => {},
          'This' => {}
        },
        'unit_next' => {}
      },
      'type' => 'unit'
    },
    'menu_child' => {}
  }
};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'} = $result_menus{'part_node_chapter_after_top'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'menu_prev'}{'structure'}{'associated_unit'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'menu_prev'}{'structure'}{'menu_next'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'menu_prev'}{'structure'}{'menu_up'} = $result_menus{'part_node_chapter_after_top'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'menu_up'} = $result_menus{'part_node_chapter_after_top'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_section'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'part_node_chapter_after_top'}{'structure'}{'menu_child'} = $result_menus{'part_node_chapter_after_top'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_node'}{'structure'}{'menu_prev'};

$result_errors{'part_node_chapter_after_top'} = [];


$result_floats{'part_node_chapter_after_top'} = {};


$result_elements{'part_node_chapter_after_top'} = [
  {
    'extra' => {
      'unit_command' => {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'associated_unit' => {},
          'level' => 0
        }
      },
      'unit_node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top'
        },
        'structure' => {
          'associated_unit' => {},
          'menu_child' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'a-node-after-part'
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'unit_command' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'associated_part' => {
                        'cmdname' => 'part',
                        'extra' => {},
                        'structure' => {
                          'associated_unit' => {},
                          'level' => 0
                        }
                      }
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'level' => 1,
                      'number' => 1
                    }
                  },
                  'unit_node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chapter'
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'menu_prev' => {},
                      'menu_up' => {},
                      'menu_up_hash' => {
                        'Top' => 1
                      }
                    }
                  },
                  'unit_section' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodeUp' => {},
                    'This' => {}
                  }
                },
                'type' => 'unit'
              },
              'menu_next' => {},
              'menu_up' => {},
              'menu_up_hash' => {
                'Top' => 1
              }
            }
          }
        }
      },
      'unit_section' => {}
    },
    'structure' => {
      'directions' => {
        'FastForward' => {},
        'Forward' => {},
        'Next' => {},
        'NodeForward' => {},
        'NodeNext' => {},
        'This' => {}
      }
    },
    'type' => 'unit'
  },
  {}
];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'}{'structure'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'}{'structure'}{'associated_unit'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'}{'structure'}{'menu_prev'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'}{'structure'}{'menu_up'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_section'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'menu_next'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_node'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'};
$result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_section'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_command'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'FastForward'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'part_node_chapter_after_top'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'part_node_chapter_after_top'}[0];
$result_elements{'part_node_chapter_after_top'}[1] = $result_elements{'part_node_chapter_after_top'}[0]{'extra'}{'unit_node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};



$result_directions_text{'part_node_chapter_after_top'} = 'element: @top top
  FastForward: @chapter chapter
  Forward: @chapter chapter
  Next: @chapter chapter
  NodeForward: @chapter chapter
  NodeNext: @chapter chapter
  This: @top top
element: @chapter chapter
  Back: @top top
  FastBack: @top top
  NodeBack: @top top
  NodeForward: @chapter chapter
  NodeNext: @chapter chapter
  NodeUp: @top top
  This: @chapter chapter
';


$result_converted{'info'}->{'part_node_chapter_after_top'} = 'This is , produced from .


File: ,  Node: Top,  Next: a node after part,  Up: (dir)

top
***

* Menu:

* a node after part::
* chapter::


File: ,  Node: a node after part,  Next: chapter,  Prev: Top,  Up: Top

After a node after part


File: ,  Node: chapter,  Next: a node after part,  Up: Top

1 chapter
*********



Tag Table:
Node: Top27
Node: a node after part140
Node: chapter239

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'part_node_chapter_after_top'} = '<!DOCTYPE html>
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
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<div class="top" id="Top">
<div class="header">
<p>
Next: <a href="#a-node-after-part" accesskey="n" rel="next">a node after part</a> &nbsp; </p>
</div>
<h1 class="top" id="top">top</h1>


<hr>
</div>
<div class="part" id="part">
<div class="header">
<p>
Next: <a href="#chapter" accesskey="n" rel="next">chapter</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#chapter" accesskey="1">chapter</a></li>
</ul>
<h4 class="node-heading" id="a-node-after-part">a node after part</h4>
<p>After a node after part
</p>
<hr>
<div class="chapter" id="chapter">
<div class="header">
<p>
Next: <a href="#a-node-after-part" accesskey="n" rel="next">a node after part</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; </p>
</div>
<h2 class="chapter" id="chapter-1">1 chapter</h2>
</div>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_node_chapter_after_top'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">a node after part</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">a node after part</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator="::">chapter</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<part spaces=" "><sectiontitle>part</sectiontitle>

<node name="a-node-after-part" spaces=" "><nodename>a node after part</nodename><nodenext spaces=" ">chapter</nodenext><nodeprev spaces=" ">Top</nodeprev><nodeup spaces=" ">Top</nodeup></node>
<para>After a node after part
</para>
<node name="chapter" spaces=" "><nodename>chapter</nodename><nodenext spaces=" ">a node after part</nodenext><nodeprev></nodeprev><nodeup spaces=" ">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter </sectiontitle>
</chapter>
</part>
';

1;
