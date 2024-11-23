use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraphindent_not_in_preamble'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'copying',
              'contents' => [
                {
                  'contents' => [
                    {
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'block_line_arg'
                    }
                  ],
                  'type' => 'argument'
                },
                {
                  'contents' => [
                    {
                      'text' => 'In copying.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'contents' => [
                    {
                      'text' => 'Copying second para.
'
                    }
                  ],
                  'type' => 'paragraph'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'copying'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => {
                          'text' => '
'
                        }
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'extra' => {
                    'text_arg' => 'copying'
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 5
                  }
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 7
      }
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'test '
                },
                {
                  'cmdname' => '@'
                },
                {
                  'text' => 'paragraphindent effect in preamble'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'type' => 'argument'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'First para.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Before paragraphindent.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'paragraphindent',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '1'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              '1'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 14
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'After paragraphindent.
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
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 8
      }
    },
    {
      'cmdname' => 'bye',
      'contents' => [
        {
          'text' => '
',
          'type' => 'rawline_arg'
        }
      ]
    },
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'text_after_end'
        }
      ],
      'type' => 'postamble_after_end'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'paragraphindent_not_in_preamble'} = '@copying
In copying.

Copying second para.
@end copying

@node Top
@top test @@paragraphindent effect in preamble

First para.

Before paragraphindent.

@paragraphindent 1

After paragraphindent.

@bye

';


$result_texts{'paragraphindent_not_in_preamble'} = '
test @paragraphindent effect in preamble
****************************************

First para.

Before paragraphindent.


After paragraphindent.

';

$result_sectioning{'paragraphindent_not_in_preamble'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'paragraphindent_not_in_preamble'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'paragraphindent_not_in_preamble'};

$result_nodes{'paragraphindent_not_in_preamble'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'paragraphindent_not_in_preamble'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'paragraphindent_not_in_preamble'} = [];


$result_floats{'paragraphindent_not_in_preamble'} = {};



$result_converted{'info'}->{'paragraphindent_not_in_preamble'} = 'This is , produced from .

In copying.

   Copying second para.


File: ,  Node: Top,  Up: (dir)

test @paragraphindent effect in preamble
****************************************

First para.

   Before paragraphindent.

 After paragraphindent.


Tag Table:
Node: Top65

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
