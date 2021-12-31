use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'footnotestyle_separate_late'} = [
  {
    'contents' => [
      {
        'contents' => [
          {
            'args' => [
              {
                'contents' => [
                  {
                    'parent' => {},
                    'text' => 'footnotestyle_separate_late.info'
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
              'text_arg' => 'footnotestyle_separate_late.info'
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
          }
        ],
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
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 4,
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
                      'text' => 'chap f'
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
                    'normalized' => 'chap-f'
                  }
                ],
                'normalized' => 'chap-f',
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
                      'text' => 'Chapter f'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in fchap 1'
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
                'spaces_before_argument' => ' '
              },
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
                      'text' => 'chap s'
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
                    'normalized' => 'chap-s'
                  }
                ],
                'normalized' => 'chap-s',
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
                      'text' => 'Chapter s'
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
                      'args' => [
                        {
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'in fchap 2'
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
                      'contents' => [],
                      'line_nr' => {
                        'file_name' => '',
                        'line_nr' => 14,
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
                },
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
                    'line_nr' => 16,
                    'macro' => ''
                  },
                  'parent' => {}
                }
              ],
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 12,
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
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[3]{'args'}[0];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'contents'}[3]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6]{'parent'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'};
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[1] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'contents'}[2] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[2];
$result_trees{'footnotestyle_separate_late'}[0]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[1];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[1]{'contents'}[1] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[4];
$result_trees{'footnotestyle_separate_late'}[1]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[3];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[0] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'footnotestyle_separate_late'}[2]{'contents'}[1] = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'node'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'section'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[6];
$result_trees{'footnotestyle_separate_late'}[2]{'extra'}{'unit_command'} = $result_trees{'footnotestyle_separate_late'}[0]{'contents'}[0]{'parent'}{'contents'}[5];

$result_texis{'footnotestyle_separate_late'} = '@setfilename footnotestyle_separate_late.info

@node Top
@top top

@node chap f
@chapter Chapter f

@footnote{in fchap 1}

@node chap s
@chapter Chapter s

@footnote{in fchap 2}

@footnotestyle separate
';


$result_texts{'footnotestyle_separate_late'} = '
top
***

1 Chapter f
***********



2 Chapter s
***********



';

$result_sectioning{'footnotestyle_separate_late'} = {
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
                            'normalized' => 'chap-f',
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
                                  'normalized' => 'chap-s',
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
                                  'number' => 2,
                                  'section_prev' => {},
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
                                'Prev' => {},
                                'This' => {},
                                'Up' => {}
                              },
                              'unit_prev' => {}
                            },
                            'type' => 'unit'
                          },
                          'Forward' => {},
                          'Next' => {},
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
            {},
            {}
          ],
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'extra'}{'associated_node'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'section_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'toplevel_up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0];
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'associated_unit'} = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0] = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[1] = $result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'extra'}{'associated_node'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'};
$result_sectioning{'footnotestyle_separate_late'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'footnotestyle_separate_late'};

$result_nodes{'footnotestyle_separate_late'} = {
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
                      'normalized' => 'chap-f',
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
                                    'Prev' => {},
                                    'This' => {},
                                    'Up' => {}
                                  },
                                  'unit_prev' => {}
                                },
                                'type' => 'unit'
                              },
                              'level' => 1,
                              'number' => 2
                            }
                          },
                          'normalized' => 'chap-s',
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
                    'Next' => {},
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
    'normalized' => 'Top',
    'spaces_before_argument' => ' '
  },
  'structure' => {
    'associated_unit' => {},
    'node_next' => {}
  }
};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'section'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'node_prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_prev'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_up'} = $result_nodes{'footnotestyle_separate_late'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'extra'}{'associated_section'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'node_next'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'associated_unit'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'};
$result_nodes{'footnotestyle_separate_late'}{'structure'}{'node_next'} = $result_nodes{'footnotestyle_separate_late'}{'extra'}{'associated_section'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};

$result_menus{'footnotestyle_separate_late'} = {
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
                  'normalized' => 'chap-f',
                  'spaces_before_argument' => ' '
                },
                'structure' => {
                  'associated_unit' => {}
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
                'FastForward' => {
                  'extra' => {
                    'node' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'normalized' => 'chap-s',
                        'spaces_before_argument' => ' '
                      },
                      'structure' => {
                        'associated_unit' => {}
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
                      'Prev' => {},
                      'This' => {},
                      'Up' => {}
                    },
                    'unit_prev' => {}
                  },
                  'type' => 'unit'
                },
                'Forward' => {},
                'Next' => {},
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
          'NodeForward' => {},
          'NodeNext' => {},
          'This' => {}
        },
        'unit_next' => {}
      },
      'type' => 'unit'
    }
  }
};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'extra'}{'node'} = $result_menus{'footnotestyle_separate_late'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'extra'}{'unit_command'} = $result_menus{'footnotestyle_separate_late'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'unit_prev'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'Forward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeForward'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'NodeNext'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'This'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'};
$result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'unit_next'} = $result_menus{'footnotestyle_separate_late'}{'structure'}{'associated_unit'}{'structure'}{'directions'}{'FastForward'};

$result_errors{'footnotestyle_separate_late'} = [];


$result_floats{'footnotestyle_separate_late'} = {};


$result_elements{'footnotestyle_separate_late'} = [
  {
    'extra' => {
      'node' => {
        'cmdname' => 'node',
        'extra' => {
          'normalized' => 'Top',
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'associated_unit' => {}
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
        'FastForward' => {
          'extra' => {
            'node' => {
              'cmdname' => 'node',
              'extra' => {
                'normalized' => 'chap-f',
                'spaces_before_argument' => ' '
              },
              'structure' => {
                'associated_unit' => {}
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
              'FastForward' => {
                'extra' => {
                  'node' => {
                    'cmdname' => 'node',
                    'extra' => {
                      'normalized' => 'chap-s',
                      'spaces_before_argument' => ' '
                    },
                    'structure' => {
                      'associated_unit' => {}
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
                    'Prev' => {},
                    'This' => {},
                    'Up' => {}
                  }
                },
                'type' => 'unit'
              },
              'Forward' => {},
              'Next' => {},
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
        'Forward' => {},
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
$result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'section'}{'structure'}{'associated_unit'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'unit_command'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'extra'}{'node'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Back'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Prev'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Next'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeBack'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodePrev'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'NodeUp'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'Up'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'Forward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'NodeForward'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'NodeNext'} = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'This'} = $result_elements{'footnotestyle_separate_late'}[0];
$result_elements{'footnotestyle_separate_late'}[1] = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'};
$result_elements{'footnotestyle_separate_late'}[2] = $result_elements{'footnotestyle_separate_late'}[0]{'structure'}{'directions'}{'FastForward'}{'structure'}{'directions'}{'FastForward'};



$result_directions_text{'footnotestyle_separate_late'} = 'element: @node Top
  FastForward: @node chap f
  Forward: @node chap f
  NodeForward: @node chap f
  NodeNext: @node chap f
  This: @node Top
element: @node chap f
  Back: @node Top
  FastBack: @node Top
  FastForward: @node chap s
  Forward: @node chap s
  Next: @node chap s
  NodeBack: @node Top
  NodeForward: @node chap s
  NodeNext: @node chap s
  NodePrev: @node Top
  NodeUp: @node Top
  This: @node chap f
  Up: @node Top
element: @node chap s
  Back: @node chap f
  FastBack: @node chap f
  NodeBack: @node chap f
  NodePrev: @node chap f
  NodeUp: @node Top
  Prev: @node chap f
  This: @node chap s
  Up: @node Top
';

1;
