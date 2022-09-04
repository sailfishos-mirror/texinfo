use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'on_itemize_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'indent',
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in titlefont'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'titlefont',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'in anchor'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'anchor',
                  'contents' => [],
                  'extra' => {
                    'node_content' => [
                      {}
                    ],
                    'normalized' => 'in-anchor'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'footnote'
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'exdent'
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
                  'cmdname' => 'exdent',
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  }
                }
              ],
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
                      'text' => 'in item.
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
                  'parent' => {},
                  'text' => 'on line '
                },
                {
                  'parent' => {},
                  'text' => ' ',
                  'type' => 'empty_spaces_after_command'
                },
                {
                  'parent' => {},
                  'text' => 'in item'
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
                'line_nr' => 6,
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'extra'}{'spaces_associated_command'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'extra'}{'node_content'}[0] = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'on_itemize_line'}{'contents'}[0];
$result_trees{'on_itemize_line'}{'contents'}[0]{'parent'} = $result_trees{'on_itemize_line'};

$result_texis{'on_itemize_line'} = '@itemize @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote} @exdent exdent
@item in item.
@end itemize

@itemize on line  in item
@end itemize
';


$result_texts{'on_itemize_line'} = 'in item.

';

$result_errors{'on_itemize_line'} = [
  {
    'error_line' => 'warning: @indent should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@indent should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @titlefont should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@titlefont should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@anchor should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@footnote should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@exdent should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @item should not appear in @itemize
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@item should not appear in @itemize',
    'type' => 'warning'
  },
  {
    'error_line' => '@item outside of table or list
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@item outside of table or list',
    'type' => 'error'
  }
];


$result_floats{'on_itemize_line'} = {};


1;
