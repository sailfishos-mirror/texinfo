use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entry_in_footnote_separate'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'separate'
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
          'cmdname' => 'footnotestyle',
          'extra' => {
            'misc_args' => [
              'separate'
            ],
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
                      'text' => 'First'
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
                  'normalized' => 'First'
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
                'line_nr' => 6,
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top node'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in footnote
'
                        },
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'index entry in footnote'
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
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 9,
                            'macro' => ''
                          },
                          'parent' => {},
                          'type' => 'index_entry_command'
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Blah
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Blih
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
                              'text' => 'counting entry'
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
                          'number' => 2
                        },
                        'spaces_before_argument' => ' '
                      },
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 15,
                        'macro' => ''
                      },
                      'parent' => {},
                      'type' => 'index_entry_command'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
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
              'text' => 'First'
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
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
            'normalized' => 'First'
          }
        ],
        'normalized' => 'First',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 18,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_description'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[3];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'extra'}{'menu_entry_node'}{'node_content'}[0] = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'args'}[1]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'extra'}{'index_entry'}{'command'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'extra'}{'index_entry'}{'content'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'args'}[0]{'contents'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'extra'}{'index_entry'}{'node'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'};
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[1];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'extra'}{'node_content'}[0] = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'index_entry_in_footnote_separate'}{'contents'}[2]{'parent'} = $result_trees{'index_entry_in_footnote_separate'};

$result_texis{'index_entry_in_footnote_separate'} = '@footnotestyle separate
@node Top

@menu
* First::
@end menu

Top node@footnote{in footnote
@cindex index entry in footnote

Blah

Blih

@cindex counting entry
}

@node First

@printindex cp
';


$result_texts{'index_entry_in_footnote_separate'} = '
* First::

Top node


';

$result_nodes{'index_entry_in_footnote_separate'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'First',
      'spaces_before_argument' => ' '
    },
    'node_prev' => {},
    'node_up' => {}
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
  'node_next' => {}
};
$result_nodes{'index_entry_in_footnote_separate'}{'menu_child'}{'node_prev'} = $result_nodes{'index_entry_in_footnote_separate'};
$result_nodes{'index_entry_in_footnote_separate'}{'menu_child'}{'node_up'} = $result_nodes{'index_entry_in_footnote_separate'};
$result_nodes{'index_entry_in_footnote_separate'}{'node_next'} = $result_nodes{'index_entry_in_footnote_separate'}{'menu_child'};

$result_menus{'index_entry_in_footnote_separate'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'menu_child' => {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'First',
      'spaces_before_argument' => ' '
    },
    'menu_up' => {},
    'menu_up_hash' => {
      'Top' => 1
    }
  }
};
$result_menus{'index_entry_in_footnote_separate'}{'menu_child'}{'menu_up'} = $result_menus{'index_entry_in_footnote_separate'};

$result_errors{'index_entry_in_footnote_separate'} = [];


$result_floats{'index_entry_in_footnote_separate'} = {};


$result_indices_sort_strings{'index_entry_in_footnote_separate'} = {
  'cp' => [
    'counting entry',
    'index entry in footnote'
  ]
};



$result_converted{'info'}->{'index_entry_in_footnote_separate'} = 'This is , produced from .


File: ,  Node: Top,  Next: First,  Up: (dir)

* Menu:

* First::

Top node(1) (*note Top-Footnote-1::)


File: ,  Node: Top-Footnotes,  Up: Top

   (1) in footnote

   Blah

   Blih


File: ,  Node: First,  Prev: Top,  Up: Top

 [index ]
* Menu:

* counting entry:                        Top-Footnotes.         (line 8)
* index entry in footnote:               Top-Footnotes.         (line 3)



Tag Table:
Node: Top27
Node: Top-Footnotes133
Ref: Top-Footnote-1175
Node: First213

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'index_entry_in_footnote_separate'} = 'Top node(1) (*note Top-Footnote-1::)

   (1) in footnote

   Blah

   Blih

* Menu:

* counting entry:                        Top-Footnotes.         (line 7)
* index entry in footnote:               Top-Footnotes.         (line 2)

';


$result_converted{'html_text'}->{'index_entry_in_footnote_separate'} = '<a class="node-anchor" id="Top"></a><div class="header">
<p>
 &nbsp; [<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node-heading">Top</h1>


<p>Top node<a id="DOCF1" href="#FOOT1"><sup>1</sup></a>
</p>
<hr>
<a class="node-anchor" id="First"></a><div class="header">
<p>
 &nbsp; [<a href="#First" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node-heading">First</h4>

<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-cp" border="0">
<tr><td></td><th align="left">Index Entry</th><td>&nbsp;</td><th align="left"> Section</th></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-C">C</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-counting-entry">counting entry</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
<tr><th id="t_h_cp_letter-I">I</th><td></td><td></td></tr>
<tr><td></td><td valign="top"><a href="#index-index-entry-in-footnote">index entry in footnote</a>:</td><td>&nbsp;</td><td valign="top"><a href="#Top">Top</a></td></tr>
<tr><td colspan="4"> <hr></td></tr>
</table>
<table><tr><th valign="top">Jump to: &nbsp; </th><td><a class="summary-letter" href="#t_h_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter" href="#t_h_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
';

1;
