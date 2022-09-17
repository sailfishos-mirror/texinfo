use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_brace_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'foo',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'foo-expansion
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' foo
'
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
              'parent' => {},
              'text' => 'abar',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'bar-expansion
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' abar
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
                  'cmdname' => 'bullet',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 9,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
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
          'cmdname' => 'itemize',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'ignorable_spaces_after_command'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'foo-expansion'
                            },
                            {
                              'cmdname' => '@',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => 'bar-expansion'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'email',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 10,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ',
'
                    },
                    {
                      'parent' => {},
                      'text' => '  also helped.
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'itemize'
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
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 9,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'extra'}{'command_as_argument'} = $result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_brace_command'}{'contents'}[0];
$result_trees{'macro_in_brace_command'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_brace_command'};

$result_texis{'macro_in_brace_command'} = '@macro foo
foo-expansion
@end macro

@macro abar
bar-expansion
@end macro

@itemize @bullet
@item @email{foo-expansion@@bar-expansion},
  also helped.
@end itemize
';


$result_texts{'macro_in_brace_command'} = '

foo-expansion@bar-expansion,
  also helped.
';

$result_errors{'macro_in_brace_command'} = [];


$result_floats{'macro_in_brace_command'} = {};


1;
