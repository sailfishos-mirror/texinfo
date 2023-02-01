use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_ifset_ifclear'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'conditionals',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => '@ifset somevar
',
              'type' => 'raw'
            },
            {
              'text' => '@ifset anothervar
',
              'type' => 'raw'
            },
            {
              'text' => 'Both somevar and anothervar are set.
',
              'type' => 'raw'
            },
            {
              'text' => '@end ifset
',
              'type' => 'raw'
            },
            {
              'text' => '@ifclear anothervar
',
              'type' => 'raw'
            },
            {
              'text' => 'Somevar is set, anothervar is not.
',
              'type' => 'raw'
            },
            {
              'text' => '@end ifclear
',
              'type' => 'raw'
            },
            {
              'text' => '@end ifset
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' conditionals{}
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'somevar',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'somevar',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' somevar
'
          }
        },
        {
          'args' => [
            {
              'text' => 'anothervar',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'anothervar',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' anothervar
'
          }
        },
        {
          'contents' => [
            {
              'text' => 'Both somevar and anothervar are set.
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
          'args' => [
            {
              'text' => 'somevar',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'somevar',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' somevar
'
          }
        },
        {
          'args' => [
            {
              'text' => 'anothervar',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'misc_args' => [
              'anothervar'
            ]
          },
          'info' => {
            'arg_line' => ' anothervar
'
          }
        },
        {
          'contents' => [
            {
              'text' => 'Somevar is set, anothervar is not.
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
          'args' => [
            {
              'text' => 'somevar',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'misc_args' => [
              'somevar'
            ]
          },
          'info' => {
            'arg_line' => ' somevar
'
          }
        },
        {
          'args' => [
            {
              'text' => 'anothervar',
              'type' => 'misc_arg'
            },
            {
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'misc_args' => [
              'anothervar',
              ''
            ]
          },
          'info' => {
            'arg_line' => ' anothervar
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'somevar',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'misc_args' => [
              'somevar'
            ]
          },
          'info' => {
            'arg_line' => ' somevar
'
          }
        },
        {
          'args' => [
            {
              'text' => 'anothervar',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clear',
          'extra' => {
            'misc_args' => [
              'anothervar'
            ]
          },
          'info' => {
            'arg_line' => ' anothervar
'
          }
        }
      ],
      'source_marks' => [
        {
          'counter' => 1,
          'element' => {
            'args' => [
              {
                'text' => ''
              }
            ],
            'extra' => {
              'name' => 'conditionals'
            },
            'type' => 'macro_call'
          },
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        },
        {
          'counter' => 2,
          'element' => {
            'args' => [
              {
                'text' => ''
              }
            ],
            'extra' => {
              'name' => 'conditionals'
            },
            'type' => 'macro_call'
          },
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        },
        {
          'counter' => 3,
          'element' => {
            'args' => [
              {
                'text' => ''
              }
            ],
            'extra' => {
              'name' => 'conditionals'
            },
            'type' => 'macro_call'
          },
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        },
        {
          'counter' => 4,
          'element' => {
            'args' => [
              {
                'text' => ''
              }
            ],
            'extra' => {
              'name' => 'conditionals'
            },
            'type' => 'macro_call'
          },
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'nested_ifset_ifclear'} = '
@macro conditionals{}
@ifset somevar
@ifset anothervar
Both somevar and anothervar are set.
@end ifset
@ifclear anothervar
Somevar is set, anothervar is not.
@end ifclear
@end ifset
@end macro

@set somevar
@set anothervar
Both somevar and anothervar are set.

@set somevar
@clear anothervar
Somevar is set, anothervar is not.

@clear somevar
@set anothervar

@clear somevar
@clear anothervar
';


$result_texts{'nested_ifset_ifclear'} = '

Both somevar and anothervar are set.

Somevar is set, anothervar is not.


';

$result_errors{'nested_ifset_ifclear'} = [];


$result_floats{'nested_ifset_ifclear'} = {};


1;
