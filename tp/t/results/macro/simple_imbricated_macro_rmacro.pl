use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple_imbricated_macro_rmacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'truc.
',
              'type' => 'raw'
            },
            {
              'text' => '@rmacro bidule {}
',
              'type' => 'raw'
            },
            {
              'text' => 'bidule.
',
              'type' => 'raw'
            },
            {
              'text' => '@end rmacro
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
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' truc {}
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
          'contents' => [
            {
              'text' => 'truc.
'
            },
            {
              'args' => [
                {
                  'text' => 'bidule',
                  'type' => 'macro_name'
                }
              ],
              'cmdname' => 'rmacro',
              'contents' => [
                {
                  'text' => 'bidule.
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'text' => 'rmacro'
                        }
                      ],
                      'info' => {
                        'spaces_after_argument' => '
'
                      },
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'text_arg' => 'rmacro'
                  },
                  'info' => {
                    'spaces_before_argument' => ' '
                  },
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => 'truc'
                  }
                }
              ],
              'info' => {
                'arg_line' => ' bidule {}
'
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => 'truc'
              }
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
              'text' => 'bidule.
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

$result_texis{'simple_imbricated_macro_rmacro'} = '@macro truc {}
truc.
@rmacro bidule {}
bidule.
@end rmacro
@end macro

truc.
@rmacro bidule {}
bidule.
@end rmacro

bidule.
';


$result_texts{'simple_imbricated_macro_rmacro'} = '
truc.

bidule.
';

$result_errors{'simple_imbricated_macro_rmacro'} = [];


$result_floats{'simple_imbricated_macro_rmacro'} = {};


1;
