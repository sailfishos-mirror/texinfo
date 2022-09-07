use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'two_paragraphindent_in_preamble'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'copying',
              'contents' => [
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '6'
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
                  '6'
                ],
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
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
              'text' => 'After two paragraphindent.
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 14,
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
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[1];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'};
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'};
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[1];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[3];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[2]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'};
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'}{'contents'}[3];
$result_trees{'two_paragraphindent_in_preamble'}{'contents'}[3]{'parent'} = $result_trees{'two_paragraphindent_in_preamble'};

$result_texis{'two_paragraphindent_in_preamble'} = '@copying
In copying.

Copying second para.
@end copying

@paragraphindent 1

@paragraphindent 6

After two paragraphindent.

@node Top
@top test @@paragraphindent in preamble effect in preamble

First para.

Second para.

@bye
';


$result_texts{'two_paragraphindent_in_preamble'} = '


After two paragraphindent.

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

Second para.

';

$result_sectioning{'two_paragraphindent_in_preamble'} = {
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
$result_sectioning{'two_paragraphindent_in_preamble'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'two_paragraphindent_in_preamble'};

$result_nodes{'two_paragraphindent_in_preamble'} = {
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

$result_menus{'two_paragraphindent_in_preamble'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'two_paragraphindent_in_preamble'} = [];


$result_floats{'two_paragraphindent_in_preamble'} = {};



$result_converted{'info'}->{'two_paragraphindent_in_preamble'} = 'This is , produced from .

In copying.

      Copying second para.

      After two paragraphindent.


File: ,  Node: Top,  Up: (dir)

test @paragraphindent in preamble effect in preamble
****************************************************

First para.

      Second para.



Tag Table:
Node: Top102

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
