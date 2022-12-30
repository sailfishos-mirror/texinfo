use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'index_entries_relate_to_item_transformation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => '\\input texinfo @c -*-texinfo-*-
',
              'type' => 'text_before_beginning'
            },
            {
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_entries_relate_to_item.texi',
        'line_nr' => 3,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'code',
                  'source_info' => {
                    'file_name' => 'index_entries_relate_to_item.texi',
                    'line_nr' => 6,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '
',
                  'type' => 'empty_line'
                }
              ],
              'type' => 'before_item'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'A'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'cindex',
                      'extra' => {
                        'index_entry' => {
                          'content_normalized' => [],
                          'entry_content' => [],
                          'entry_element' => {
                            'args' => [
                              {
                                'contents' => [
                                  {
                                    'text' => 'A'
                                  }
                                ],
                                'info' => {
                                  'spaces_after_argument' => '
'
                                },
                                'type' => 'line_arg'
                              }
                            ],
                            'cmdname' => 'item',
                            'info' => {
                              'spaces_before_argument' => ' '
                            },
                            'source_info' => {
                              'file_name' => 'index_entries_relate_to_item.texi',
                              'line_nr' => 11,
                              'macro' => ''
                            }
                          },
                          'entry_node' => {},
                          'entry_number' => 1,
                          'in_code' => 0,
                          'index_at_command' => 'cindex',
                          'index_ignore_chars' => {},
                          'index_name' => 'cp',
                          'index_type_command' => 'cindex'
                        }
                      },
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 8,
                        'macro' => ''
                      },
                      'type' => 'index_entry_command'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'B'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'cindex',
                      'extra' => {
                        'index_entry' => {
                          'content_normalized' => [],
                          'entry_content' => [],
                          'entry_element' => {},
                          'entry_node' => {},
                          'entry_number' => 2,
                          'in_code' => 0,
                          'index_at_command' => 'cindex',
                          'index_ignore_chars' => {},
                          'index_name' => 'cp',
                          'index_type_command' => 'cindex'
                        }
                      },
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 9,
                        'macro' => ''
                      },
                      'type' => 'index_entry_command'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'cindex',
                      'extra' => {
                        'index_entry' => {
                          'content_normalized' => [],
                          'entry_content' => [],
                          'entry_element' => {},
                          'entry_node' => {},
                          'entry_number' => 3,
                          'in_code' => 0,
                          'index_at_command' => 'cindex',
                          'index_ignore_chars' => {},
                          'index_name' => 'cp',
                          'index_type_command' => 'cindex'
                        }
                      },
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 10,
                        'macro' => ''
                      },
                      'type' => 'index_entry_command'
                    },
                    {},
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'B'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'itemx',
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'C'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'itemx',
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 13,
                        'macro' => ''
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'body
'
                        }
                      ],
                      'type' => 'paragraph'
                    },
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'D'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => '
'
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'cmdname' => 'item',
                      'info' => {
                        'spaces_before_argument' => ' '
                      },
                      'source_info' => {
                        'file_name' => 'index_entries_relate_to_item.texi',
                        'line_nr' => 17,
                        'macro' => ''
                      }
                    }
                  ],
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    },
                    {
                      'contents' => [
                        {
                          'text' => 'body2
'
                        }
                      ],
                      'type' => 'paragraph'
                    },
                    {
                      'text' => '
',
                      'type' => 'empty_line'
                    }
                  ],
                  'type' => 'table_definition'
                }
              ],
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'table'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'table'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => 'index_entries_relate_to_item.texi',
                'line_nr' => 21,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {}
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_entries_relate_to_item.texi',
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'cp'
                }
              ],
              'info' => {
                'spaces_after_argument' => '
'
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'printindex',
          'extra' => {
            'misc_args' => [
              'cp'
            ]
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => 'index_entries_relate_to_item.texi',
            'line_nr' => 23,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => 'index_entries_relate_to_item.texi',
        'line_nr' => 4,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'extra'}{'index_entry'}{'entry_node'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[1];
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[3] = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'index_entry'}{'entry_element'};
$result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'extra'}{'command_as_argument'} = $result_trees{'index_entries_relate_to_item_transformation'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];

$result_texis{'index_entries_relate_to_item_transformation'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top top

@table @code

@cindex A
@cindex B
@cindex C
@item A
@itemx B
@itemx C

body

@item D

body2

@end table

@printindex cp

@bye
';


$result_texts{'index_entries_relate_to_item_transformation'} = 'top
***


A
B
C

body

D

body2



';

$result_sectioning{'index_entries_relate_to_item_transformation'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'isindex' => 1,
              'normalized' => 'Top'
            },
            'info' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'index_entries_relate_to_item_transformation'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'index_entries_relate_to_item_transformation'};

$result_nodes{'index_entries_relate_to_item_transformation'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_menus{'index_entries_relate_to_item_transformation'} = {
  'cmdname' => 'node',
  'extra' => {
    'isindex' => 1,
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_errors{'index_entries_relate_to_item_transformation'} = [];


$result_floats{'index_entries_relate_to_item_transformation'} = {};


$result_indices_sort_strings{'index_entries_relate_to_item_transformation'} = {
  'cp' => [
    'A',
    'B',
    'C'
  ]
};



$result_converted{'info'}->{'index_entries_relate_to_item_transformation'} = 'This is , produced from index_entries_relate_to_item.texi.


File: ,  Node: Top,  Up: (dir)

top
***

‘A’
‘B’
‘C’

     body

‘D’

     body2

 [index ]
* Menu:

* A:                                     Top.                   (line 4)
* B:                                     Top.                   (line 6)
* C:                                     Top.                   (line 6)



Tag Table:
Node: Top60

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
