use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'braces_after_text'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'mymacro',
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
              'text' => 'expand \\a\\ \\b\\ \\c\\
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
            'arg_line' => ' mymacro {a, b, c}
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
                        'text' => 'text'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'in paren'
                          }
                        ],
                        'type' => 'bracketed_arg'
                      },
                      {
                        'extra' => {
                          'def_role' => 'spaces'
                        },
                        'text' => ' ',
                        'type' => 'spaces'
                      },
                      {
                        'contents' => [
                          {
                            'text' => 'rest'
                          },
                          {
                            'contents' => [
                              {
                                'text' => 'in paren'
                              }
                            ],
                            'type' => 'bracketed_arg'
                          },
                          {
                            'extra' => {
                              'def_role' => 'spaces'
                            },
                            'text' => ' ',
                            'type' => 'spaces'
                          },
                          {
                            'type' => 'bracketed_arg'
                          }
                        ],
                        'type' => 'def_aggregate'
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
                  'name' => 'mymacro'
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
              'source_marks' => [
                {
                  'counter' => 1,
                  'position' => 35,
                  'sourcemark_type' => 'linemacro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'expand text in paren restin paren 
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'braces_after_text'} = '@linemacro mymacro {a, b, c}
expand \\a\\ \\b\\ \\c\\
@end linemacro

expand text in paren restin paren 
';


$result_texts{'braces_after_text'} = '
expand text in paren restin paren 
';

$result_errors{'braces_after_text'} = [
  {
    'error_line' => 'misplaced { (possibly involving @mymacro)
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => 'mymacro',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @mymacro)
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => 'mymacro',
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced { (possibly involving @mymacro)
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => 'mymacro',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced } (possibly involving @mymacro)
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => 'mymacro',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'braces_after_text'} = {};


1;
