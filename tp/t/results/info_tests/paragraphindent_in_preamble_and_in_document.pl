use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraphindent_in_preamble_and_in_document'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'copying',
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'In copying.
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
                      'text' => 'Copying second para.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'copying'
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
                    'command_argument' => 'copying',
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'copying'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
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
                      'text' => '1'
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
              'cmdname' => 'paragraphindent',
              'extra' => {
                'misc_args' => [
                  '1'
                ],
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
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'After paragraphindent.
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 11,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'test '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'paragraphindent in preamble effect in preamble'
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
              'text' => 'First para.
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
              'text' => 'Second para.
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
                  'text' => '3'
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
          'cmdname' => 'paragraphindent',
          'extra' => {
            'misc_args' => [
              '3'
            ],
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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Third para after second paragraphindent.
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
        'line_nr' => 12,
        'macro' => ''
      }
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
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[1];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'};
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'};
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[1];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[3];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[5];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[7];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[2]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'};
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[3];
$result_trees{'paragraphindent_in_preamble_and_in_document'}{'contents'}[3]{'parent'} = $result_trees{'paragraphindent_in_preamble_and_in_document'};

$result_texis{'paragraphindent_in_preamble_and_in_document'} = '@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

After paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@paragraphindent 3

Third para after second paragraphindent.

@bye
';


$result_texts{'paragraphindent_in_preamble_and_in_document'} = '

After paragraphindent.

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

Second para.


Third para after second paragraphindent.

';

$result_sectioning{'paragraphindent_in_preamble_and_in_document'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
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
$result_sectioning{'paragraphindent_in_preamble_and_in_document'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'paragraphindent_in_preamble_and_in_document'};

$result_nodes{'paragraphindent_in_preamble_and_in_document'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'paragraphindent_in_preamble_and_in_document'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'paragraphindent_in_preamble_and_in_document'} = [];


$result_floats{'paragraphindent_in_preamble_and_in_document'} = {};



$result_converted{'info'}->{'paragraphindent_in_preamble_and_in_document'} = 'This is , produced from .

In copying.

 Copying second para.

 After paragraphindent.


File: ,  Node: Top,  Up: (dir)

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

 Second para.

   Third para after second paragraphindent.



Tag Table:
Node: Top88

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
