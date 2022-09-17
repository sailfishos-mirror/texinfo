use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'block_command_alias'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'lang=lisp'
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
          'cmdname' => 'alias',
          'extra' => {
            'misc_args' => [
              'lang',
              'lisp'
            ],
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
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'lisp',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in lang
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'lang'
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
                    'text_arg' => 'lang'
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
              'type' => 'preformatted'
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 3,
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
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2];
$result_trees{'block_command_alias'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'block_command_alias'}{'contents'}[0];
$result_trees{'block_command_alias'}{'contents'}[0]{'parent'} = $result_trees{'block_command_alias'};

$result_texis{'block_command_alias'} = '@alias lang=lisp

@lisp
in lang
@end lang
';


$result_texts{'block_command_alias'} = '
in lang
';

$result_errors{'block_command_alias'} = [
  {
    'error_line' => 'warning: environment command lisp as argument to @alias
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'environment command lisp as argument to @alias',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unknown @end lang
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'unknown @end lang',
    'type' => 'warning'
  },
  {
    'error_line' => 'no matching `@end lisp\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'no matching `@end lisp\'',
    'type' => 'error'
  }
];


$result_floats{'block_command_alias'} = {};


1;
