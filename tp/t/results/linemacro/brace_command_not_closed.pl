use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'brace_command_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'mycommand',
              'type' => 'macro_name'
            },
            {
              'text' => 'a',
              'type' => 'macro_arg'
            },
            {
              'text' => 'b',
              'type' => 'macro_arg'
            },
            {
              'text' => 'c',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'linemacro',
          'contents' => [
            {
              'text' => '\\a\\, \\b\\ \\c\\
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'linemacro'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'linemacro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' mycommand {a, b, c}
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'source_marks' => [
            {
              'counter' => 1,
              'element' => {
                'args' => [
                  {
                    'contents' => [
                      {
                        'args' => [
                          {
                            'contents' => [
                              {
                                'text' => 'in code
'
                              }
                            ],
                            'type' => 'brace_command_arg'
                          }
                        ],
                        'cmdname' => 'code',
                        'source_info' => {
                          'file_name' => '',
                          'line_nr' => 5,
                          'macro' => ''
                        }
                      }
                    ],
                    'type' => 'line_arg'
                  }
                ],
                'extra' => {
                  'name' => 'mycommand'
                },
                'info' => {
                  'spaces_before_argument' => {
                    'text' => ' '
                  }
                },
                'type' => 'linemacro_call'
              },
              'sourcemark_type' => 'linemacro_expansion',
              'status' => 'start'
            }
          ],
          'text' => '',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'in code
'
                    }
                  ],
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => 'mycommand'
              }
            },
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 4,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => ',  
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'brace_command_not_closed'} = '@linemacro mycommand {a, b, c}
\\a\\, \\b\\ \\c\\
@end linemacro

@code{in code
},  

';


$result_texts{'brace_command_not_closed'} = '
in code
,  

';

$result_errors{'brace_command_not_closed'} = [
  {
    'error_line' => '@code missing closing brace
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@code missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'brace_command_not_closed'} = {};


1;
