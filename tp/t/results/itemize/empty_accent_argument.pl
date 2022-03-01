use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_accent_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => '~',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'comment_at_end' => {
                  'args' => [
                    {
                      'parent' => {},
                      'text' => '
',
                      'type' => 'misc_arg'
                    }
                  ],
                  'cmdname' => 'comment',
                  'extra' => {
                    'misc_args' => [
                      '
'
                    ]
                  },
                  'parent' => {}
                }
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item
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
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
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
            'end_command' => {},
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
                  'cmdname' => '~',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item
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
                'line_nr' => 6,
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
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
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
            'end_command' => {},
            'spaces_before_argument' => ' '
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
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => '~',
                  'contents' => [],
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'item
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
                'command_argument' => 'itemize',
                'spaces_before_argument' => ' ',
                'text_arg' => 'itemize'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
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
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'};
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'extra'}{'comment_at_end'}{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'empty_accent_argument'}{'contents'}[0];
$result_trees{'empty_accent_argument'}{'contents'}[0]{'parent'} = $result_trees{'empty_accent_argument'};

$result_texis{'empty_accent_argument'} = '@itemize @~@comment
@item item
@end itemize

@itemize @~
@item item
@end itemize

@itemize @~{}
@item item
@end itemize
';


$result_texts{'empty_accent_argument'} = 'item

item

item
';

$result_errors{'empty_accent_argument'} = [
  {
    'error_line' => 'use braces to give a command as an argument to @~
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'use braces to give a command as an argument to @~',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: accent command `@~\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'accent command `@~\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: accent command `@~\' not allowed as @itemize argument
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'accent command `@~\' not allowed as @itemize argument',
    'type' => 'warning'
  }
];


$result_floats{'empty_accent_argument'} = {};



$result_converted{'plaintext'}->{'empty_accent_argument'} = '   ̃  item

   ̃  item

   ̃  item
';


$result_converted{'html_text'}->{'empty_accent_argument'} = '<ul class="itemize" style="list-style-type: \'\\0303 \'">
<li>item
</li></ul>

<ul class="itemize" style="list-style-type: \'\\0303 \'">
<li>item
</li></ul>

<ul class="itemize" style="list-style-type: \'\\0303 \'">
<li>item
</li></ul>
';

1;
