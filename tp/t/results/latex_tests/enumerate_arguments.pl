use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'enumerate_arguments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
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
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => 'a',
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
                  'text' => 'A'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => 'A',
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
                  'text' => 'c'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
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
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'end_command' => {},
            'enumerate_specification' => 'c',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'C'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 19,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => 'C',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '1'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 22,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 23,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 24,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '1',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 21,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '3'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 27,
                'macro' => ''
              }
            },
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'value
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 2,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 28,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 29,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'enumerate_specification' => '3',
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 26,
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
    }
  ],
  'type' => 'document_root'
};
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'};

$result_texis{'enumerate_arguments'} = '@enumerate a
@item value
@item value
@end enumerate

@enumerate A
@item value
@item value
@end enumerate

@enumerate c
@item value
@item value
@end enumerate

@enumerate C
@item value
@item value
@end enumerate

@enumerate 1
@item value
@item value
@end enumerate

@enumerate 3
@item value
@item value
@end enumerate

';


$result_texts{'enumerate_arguments'} = 'a. value
b. value

A. value
B. value

c. value
d. value

C. value
D. value

1. value
2. value

3. value
4. value

';

$result_errors{'enumerate_arguments'} = [];


$result_floats{'enumerate_arguments'} = {};



$result_converted{'latex_text'}->{'enumerate_arguments'} = '\\begin{document}
\\begin{enumerate}[label=\\alph*.]
\\item value
\\item value
\\end{enumerate}

\\begin{enumerate}[label=\\Alph*.]
\\item value
\\item value
\\end{enumerate}

\\begin{enumerate}[label=\\alph*.,start=3]
\\item value
\\item value
\\end{enumerate}

\\begin{enumerate}[label=\\Alph*.,start=3]
\\item value
\\item value
\\end{enumerate}

\\begin{enumerate}[start=1]
\\item value
\\item value
\\end{enumerate}

\\begin{enumerate}[start=3]
\\item value
\\item value
\\end{enumerate}

';

1;
