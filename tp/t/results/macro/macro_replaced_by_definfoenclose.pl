use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_replaced_by_definfoenclose'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'macro',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'phoo',
                  'type' => 'macro_name'
                },
                {
                  'text' => 'arg',
                  'type' => 'macro_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'text' => '||\\arg\\||
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
                'line_nr' => 3
              }
            }
          ],
          'info' => {
            'arg_line' => ' phoo {arg}
'
          },
          'source_info' => {
            'line_nr' => 1
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
              'contents' => [
                {
                  'text' => 'phoo,;,:'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'phoo',
              ';',
              ':'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 5
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
              'cmdname' => 'phoo',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aa'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'begin' => ';',
                'end' => ':'
              },
              'info' => {
                'command_name' => 'phoo'
              },
              'source_info' => {
                'line_nr' => 7
              },
              'type' => 'definfoenclose_command'
            },
            {
              'text' => '
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

$result_texis{'macro_replaced_by_definfoenclose'} = '@macro phoo {arg}
||\\arg\\||
@end macro

@definfoenclose phoo,;,:

@phoo{aa}
';


$result_texts{'macro_replaced_by_definfoenclose'} = '

aa
';

$result_errors{'macro_replaced_by_definfoenclose'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 5,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'macro_replaced_by_definfoenclose'} = {};



$result_converted{'plaintext'}->{'macro_replaced_by_definfoenclose'} = ';aa:
';

1;
