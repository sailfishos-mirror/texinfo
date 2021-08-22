use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'enumerate_arguments'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'enumerate_arguments.info'
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
        'text_arg' => 'enumerate_arguments.info'
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 5,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
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
        'end_command' => {},
        'enumerate_specification' => 'a',
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {},
        'enumerate_specification' => 'A',
        'spaces_before_argument' => ' '
      },
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 14,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 15,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
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
        'end_command' => {},
        'enumerate_specification' => 'c',
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 19,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 20,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 21,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {},
        'enumerate_specification' => 'C',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 18,
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 24,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 25,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 26,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {},
        'enumerate_specification' => '1',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 23,
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 29,
            'macro' => ''
          },
          'parent' => {}
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
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 30,
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
            'command_argument' => 'enumerate',
            'spaces_before_argument' => ' ',
            'text_arg' => 'enumerate'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 31,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {},
        'enumerate_specification' => '3',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 28,
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
  'type' => 'text_root'
};
$result_trees{'enumerate_arguments'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[2]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[3]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[4];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[4]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[4]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[5]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[6];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[6]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[6]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[7]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[8];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[8]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[8]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[9]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[10];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[10]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[10]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[11]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[1]{'contents'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[1];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2]{'args'}[0];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2]{'parent'} = $result_trees{'enumerate_arguments'}{'contents'}[12];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'extra'}{'end_command'} = $result_trees{'enumerate_arguments'}{'contents'}[12]{'contents'}[2];
$result_trees{'enumerate_arguments'}{'contents'}[12]{'parent'} = $result_trees{'enumerate_arguments'};
$result_trees{'enumerate_arguments'}{'contents'}[13]{'parent'} = $result_trees{'enumerate_arguments'};

$result_texis{'enumerate_arguments'} = '@setfilename enumerate_arguments.info

@enumerate a
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


$result_texts{'enumerate_arguments'} = '
a. value
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



$result_converted{'latex'}->{'enumerate_arguments'} = '
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
