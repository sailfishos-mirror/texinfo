use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node_part_chapter_after_chapter'} = [
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
                              'text' => 'chapter node'
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
                          'normalized' => 'chapter-node'
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
                              'text' => 'part chapter node'
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
                          'normalized' => 'part-chapter-node'
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
                      'text' => 'chapter node'
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
                    'normalized' => 'chapter-node'
                  }
                ],
                'normalized' => 'chapter-node',
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
                      'text' => 'chapter node'
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
                }
              ],
              'extra' => {
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
                      'text' => 'part chapter node'
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
                    'normalized' => 'part-chapter-node'
                  }
                ],
                'normalized' => 'part-chapter-node',
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 13,
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
                      'text' => 'chapter with part node'
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
                  'cmdname' => 'contents',
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 18,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'associated_part' => {},
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 16,
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
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {},
      {}
    ],
    'extra' => {
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'type' => 'unit'
  },
  {
    'contents' => [
      {},
      {},
      {}
    ],
    'extra' => {
      'node' => {},
      'section' => {},
      'unit_command' => {}
    },
    'type' => 'unit'
  }
];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_description'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'args'}[1]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'args'}[0];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'extra'}{'associated_part'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7]{'parent'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'};
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[1] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[2] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[0]{'extra'}{'unit_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[1]{'contents'}[1] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'node_part_chapter_after_chapter'}[1]{'extra'}{'unit_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[0] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[1] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'node_part_chapter_after_chapter'}[2]{'contents'}[2] = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'node'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'section'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];
$result_trees{'node_part_chapter_after_chapter'}[2]{'extra'}{'unit_command'} = $result_trees{'node_part_chapter_after_chapter'}[0]{'contents'}[0]{'parent'}{'contents'}[7];

$result_texis{'node_part_chapter_after_chapter'} = '@node Top
@top top

@menu
* chapter node::
* part chapter node::
@end menu

@node chapter node

@chapter chapter node

@node part chapter node
@part part

@chapter chapter with part node

@contents
';


$result_texts{'node_part_chapter_after_chapter'} = 'top
***

* chapter node::
* part chapter node::


1 chapter node
**************

part
****

2 chapter with part node
************************

';

$result_sectioning{'node_part_chapter_after_chapter'} = {
  'structure' => {
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
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'node' => {},
                  'section' => {},
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'FastForward' => {
                      'extra' => {
                        'node' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'chapter-node',
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'associated_unit' => {}
                          }
                        },
                        'section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_node' => {},
                            'spaces_before_argument' => ' '
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
                        'unit_command' => {}
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'FastForward' => {
                            'extra' => {
                              'node' => {
                                'cmdname' => 'node',
                                'extra' => {
                                  'normalized' => 'part-chapter-node',
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'associated_unit' => {}
                                }
                              },
                              'section' => {
                                'cmdname' => 'chapter',
                                'extra' => {
                                  'associated_node' => {},
                                  'associated_part' => {
                                    'cmdname' => 'part',
                                    'extra' => {
                                      'part_associated_section' => {},
                                      'spaces_before_argument' => ' '
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
                                  },
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'associated_unit' => {},
                                  'level' => 1,
                                  'number' => 2,
                                  'section_up' => {},
                                  'toplevel_prev' => {},
                                  'toplevel_up' => {}
                                }
                              },
                              'unit_command' => {}
                            },
                            'structure' => {
                              'directions' => {
                                'Back' => {},
                                'FastBack' => {},
                                'NodeBack' => {},
                                'NodePrev' => {},
                                'NodeUp' => {},
                                'This' => {}
                              },
                              'unit_prev' => {}
                            },
                            'type' => 'unit'
                          },
                          'Forward' => {},
                          'NodeBack' => {},
                          'NodeForward' => {},
                          'NodeNext' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {},
                          'Up' => {}
                        },
                        'unit_next' => {},
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
          },
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0,
          'section_childs' => [
            {}
          ],
          'section_up' => {}
        }
      },
      {}
    ]
  }
};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_node'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_node'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'extra'}{'part_associated_section'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'section_childs'}[0] = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'section_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0];
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0] = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'node_part_chapter_after_chapter'};
$result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[1] = $result_sectioning{'node_part_chapter_after_chapter'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'};

$result_nodes{'node_part_chapter_after_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'structure' => {
        'associated_unit' => {
          'extra' => {
            'node' => {},
            'section' => {},
            'unit_command' => {}
          },
          'structure' => {
            'directions' => {
              'FastForward' => {
                'extra' => {
                  'node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'associated_section' => {
                        'cmdname' => 'chapter',
                        'extra' => {
                          'spaces_before_argument' => ' '
                        },
                        'structure' => {
                          'associated_unit' => {},
                          'level' => 1,
                          'number' => 1
                        }
                      },
                      'normalized' => 'chapter-node',
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'node_next' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'associated_section' => {
                            'cmdname' => 'chapter',
                            'extra' => {
                              'associated_part' => {
                                'cmdname' => 'part',
                                'extra' => {
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'associated_unit' => {
                                    'extra' => {
                                      'node' => {},
                                      'section' => {},
                                      'unit_command' => {}
                                    },
                                    'structure' => {
                                      'directions' => {
                                        'Back' => {},
                                        'FastBack' => {},
                                        'NodeBack' => {},
                                        'NodePrev' => {},
                                        'NodeUp' => {},
                                        'This' => {}
                                      },
                                      'unit_prev' => {}
                                    },
                                    'type' => 'unit'
                                  },
                                  'level' => 0
                                }
                              },
                              'spaces_before_argument' => ' '
                            },
                            'structure' => {
                              'associated_unit' => {},
                              'level' => 1,
                              'number' => 2
                            }
                          },
                          'normalized' => 'part-chapter-node',
                          'spaces_before_argument' => ' '
                        },
                        'structure' => {
                          'associated_unit' => {},
                          'node_prev' => {},
                          'node_up' => {}
                        }
                      },
                      'node_prev' => {},
                      'node_up' => {}
                    }
                  },
                  'section' => {},
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'FastForward' => {},
                    'Forward' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {},
                    'Up' => {}
                  },
                  'unit_next' => {},
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
        'extra' => {
          'end_command' => {
            'cmdname' => 'end',
            'extra' => {
              'command_argument' => 'menu',
              'spaces_before_argument' => ' ',
              'text_arg' => 'menu'
            }
          }
        }
      }
    ],
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'associated_unit' => {},
    'menu_child' => {},
    'node_next' => {}
  }
};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'associated_unit'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_prev'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_up'} = $result_nodes{'node_part_chapter_after_chapter'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'extra'}{'associated_section'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'node_part_chapter_after_chapter'}{'structure'}{'menu_child'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_nodes{'node_part_chapter_after_chapter'}{'structure'}{'node_next'} = $result_nodes{'node_part_chapter_after_chapter'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};

$result_menus{'node_part_chapter_after_chapter'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'associated_unit' => {
      'extra' => {
        'node' => {},
        'section' => {
          'cmdname' => 'top',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'structure' => {
            'associated_unit' => {},
            'level' => 0
          }
        },
        'unit_command' => {}
      },
      'structure' => {
        'directions' => {
          'FastForward' => {
            'extra' => {
              'node' => {
                'cmdname' => 'node',
                'extra' => {
                  'normalized' => 'chapter-node',
                  'spaces_before_argument' => ' '
                },
                'structure' => {
                  'associated_unit' => {},
                  'menu_next' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'part-chapter-node',
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'associated_unit' => {
                        'extra' => {
                          'node' => {},
                          'section' => {
                            'cmdname' => 'chapter',
                            'extra' => {
                              'associated_part' => {
                                'cmdname' => 'part',
                                'extra' => {
                                  'spaces_before_argument' => ' '
                                },
                                'structure' => {
                                  'associated_unit' => {},
                                  'level' => 0
                                }
                              },
                              'spaces_before_argument' => ' '
                            },
                            'structure' => {
                              'associated_unit' => {},
                              'level' => 1,
                              'number' => 2
                            }
                          },
                          'unit_command' => {}
                        },
                        'structure' => {
                          'directions' => {
                            'Back' => {},
                            'FastBack' => {},
                            'NodeBack' => {},
                            'NodePrev' => {},
                            'NodeUp' => {},
                            'This' => {}
                          },
                          'unit_prev' => {}
                        },
                        'type' => 'unit'
                      },
                      'menu_prev' => {},
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
              'section' => {
                'cmdname' => 'chapter',
                'extra' => {
                  'spaces_before_argument' => ' '
                },
                'structure' => {
                  'associated_unit' => {},
                  'level' => 1,
                  'number' => 1
                }
              },
              'unit_command' => {}
            },
            'structure' => {
              'directions' => {
                'Back' => {},
                'FastBack' => {},
                'FastForward' => {},
                'Forward' => {},
                'NodeBack' => {},
                'NodeForward' => {},
                'NodeNext' => {},
                'NodePrev' => {},
                'NodeUp' => {},
                'This' => {},
                'Up' => {}
              },
              'unit_next' => {},
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
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_menus{'node_part_chapter_after_chapter'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'extra'}{'section'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'extra'}{'section'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'menu_prev'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'menu_up'} = $result_menus{'node_part_chapter_after_chapter'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_up'} = $result_menus{'node_part_chapter_after_chapter'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Next'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_next'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'node_part_chapter_after_chapter'}{'structure'}{'menu_child'} = $result_menus{'node_part_chapter_after_chapter'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};

$result_errors{'node_part_chapter_after_chapter'} = [
  {
    'error_line' => ':14: warning: @node precedes @part, but parts may not be associated with nodes
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => '@node precedes @part, but parts may not be associated with nodes',
    'type' => 'warning'
  }
];


$result_floats{'node_part_chapter_after_chapter'} = {};


$result_elements{'node_part_chapter_after_chapter'} = [
  {
    'extra' => {
      'node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top',
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'associated_unit' => {},
          'menu_child' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'chapter-node',
              'spaces_before_argument' => ' '
            },
            'structure' => {
              'associated_unit' => {
                'extra' => {
                  'node' => {},
                  'section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'associated_unit' => {},
                      'level' => 1,
                      'number' => 1
                    }
                  },
                  'unit_command' => {}
                },
                'structure' => {
                  'directions' => {
                    'Back' => {},
                    'FastBack' => {},
                    'FastForward' => {
                      'extra' => {
                        'node' => {
                          'cmdname' => 'node',
                          'extra' => {
                            'normalized' => 'part-chapter-node',
                            'spaces_before_argument' => ' '
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
                        'section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'associated_part' => {
                              'cmdname' => 'part',
                              'extra' => {
                                'spaces_before_argument' => ' '
                              },
                              'structure' => {
                                'associated_unit' => {},
                                'level' => 0
                              }
                            },
                            'spaces_before_argument' => ' '
                          },
                          'structure' => {
                            'associated_unit' => {},
                            'level' => 1,
                            'number' => 2
                          }
                        },
                        'unit_command' => {}
                      },
                      'structure' => {
                        'directions' => {
                          'Back' => {},
                          'FastBack' => {},
                          'NodeBack' => {},
                          'NodePrev' => {},
                          'NodeUp' => {},
                          'This' => {}
                        }
                      },
                      'type' => 'unit'
                    },
                    'Forward' => {},
                    'NodeBack' => {},
                    'NodeForward' => {},
                    'NodeNext' => {},
                    'NodePrev' => {},
                    'NodeUp' => {},
                    'This' => {},
                    'Up' => {}
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
      'section' => {
        'cmdname' => 'top',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'associated_unit' => {},
          'level' => 0
        }
      },
      'unit_command' => {}
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
  {},
  {}
];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'extra'}{'section'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_prev'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'menu_up'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_part'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'menu_next'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'menu_up'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'unit_command'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'section'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'FastForward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'Next'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'node_part_chapter_after_chapter'}[0];
$result_elements{'node_part_chapter_after_chapter'}[1] = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'};
$result_elements{'node_part_chapter_after_chapter'}[2] = $result_elements{'node_part_chapter_after_chapter'}[0]{'extra'}{'node'}{'structure'}{'menu_child'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'node_part_chapter_after_chapter'} = 'element: @top top
  FastForward: @chapter chapter node
  Forward: @chapter chapter node
  Next: @chapter chapter with part node
  NodeForward: @chapter chapter node
  NodeNext: @chapter chapter node
  This: @top top
element: @chapter chapter node
  Back: @top top
  FastBack: @top top
  FastForward: @chapter chapter with part node
  Forward: @chapter chapter with part node
  NodeBack: @top top
  NodeForward: @chapter chapter with part node
  NodeNext: @chapter chapter with part node
  NodePrev: @top top
  NodeUp: @top top
  This: @chapter chapter node
  Up: @top top
element: @chapter chapter with part node
  Back: @chapter chapter node
  FastBack: @chapter chapter node
  NodeBack: @chapter chapter node
  NodePrev: @chapter chapter node
  NodeUp: @top top
  This: @chapter chapter with part node
';


$result_converted{'plaintext'}->{'node_part_chapter_after_chapter'} = 'top
***

1 chapter node
**************

2 chapter with part node
************************

top
1 chapter node
part
2 chapter with part node
';


$result_converted{'info'}->{'node_part_chapter_after_chapter'} = 'This is , produced from .


File: ,  Node: Top,  Next: chapter node,  Up: (dir)

top
***

* Menu:

* chapter node::
* part chapter node::


File: ,  Node: chapter node,  Next: part chapter node,  Prev: Top,  Up: Top

1 chapter node
**************


File: ,  Node: part chapter node,  Prev: chapter node,  Up: Top

2 chapter with part node
************************



Tag Table:
Node: Top27
Node: chapter node140
Node: part chapter node250

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'node_part_chapter_after_chapter'} = '<!DOCTYPE html>
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
<link href="#SEC_Contents" rel="contents" title="Table of Contents">
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
Next: <a href="#chapter-node" accesskey="n" rel="next">chapter node</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
<h1 class="top" id="top">top</h1>


<div class="Contents_element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">
<ul class="no-bullet">
<li>
<ul class="no-bullet">
  <li><a id="toc-chapter-node-1" href="#chapter-node">1 chapter node</a></li>
</ul></li>
<li><a id="toc-part" href="#part">part</a>
<ul class="no-bullet">
  <li><a id="toc-chapter-with-part-node" href="#part-chapter-node">2 chapter with part node</a></li>
</ul></li>

</ul>
</div>
</div>
<hr>
<div class="chapter" id="chapter-node">
<div class="header">
<p>
Next: <a href="#part-chapter-node" accesskey="n" rel="next">chapter with part node</a>, Previous: <a href="#Top" accesskey="p" rel="prev">top</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>

<h2 class="chapter" id="chapter-node-1">1 chapter node</h2>

<hr>
</div>
<div class="chapter" id="part-chapter-node">
<div class="header">
<p>
Previous: <a href="#chapter-node" accesskey="p" rel="prev">chapter node</a>, Up: <a href="#Top" accesskey="u" rel="up">top</a> &nbsp; [<a href="#SEC_Contents" title="Table of contents" rel="contents">Contents</a>]</p>
</div>
</div>
</div>
<div class="part" id="part">
<h1 class="part">part</h1>
<hr>

<ul class="section-toc">
<li><a href="#part-chapter-node" accesskey="1">chapter with part node</a></li>
</ul>
<h2 class="chapter" id="chapter-with-part-node">2 chapter with part node</h2>

</div>



</body>
</html>
';


$result_converted{'xml'}->{'node_part_chapter_after_chapter'} = '<node name="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter node</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<menu endspaces=" ">
<menuentry leadingtext="* "><menunode separator="::">chapter node</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry leadingtext="* "><menunode separator="::">part chapter node</menunode><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

</top>
<node name="chapter-node" spaces=" "><nodename>chapter node</nodename><nodenext automatic="on">part chapter node</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>

<chapter spaces=" "><sectiontitle>chapter node</sectiontitle>

</chapter>
<node name="part-chapter-node" spaces=" "><nodename>part chapter node</nodename><nodeprev automatic="on">chapter node</nodeprev><nodeup automatic="on">Top</nodeup></node>
<part spaces=" "><sectiontitle>part</sectiontitle>

<chapter spaces=" "><sectiontitle>chapter with part node</sectiontitle>

<contents></contents>
</chapter>
</part>
';

1;
