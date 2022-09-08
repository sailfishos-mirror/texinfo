use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_accent'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'aletter',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
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
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' aletter
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
              'text' => 'aspace',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '  ',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
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
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' aspace
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
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
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
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 10,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 11,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => '  '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[3]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[4]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[5]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[6];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[6]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'contents'}[7]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_in_accent'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_in_accent'}{'contents'}[0];
$result_trees{'macro_in_accent'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_accent'};

$result_texis{'macro_in_accent'} = '@macro aletter
a
@end macro

@macro aspace
  
@end macro

@ringaccent a.
@ringaccenta.
@~a.
@~{a}.

@ringaccent  a.
';


$result_texts{'macro_in_accent'} = '

a*.
a*.
a~.
a~.

a*.
';

$result_errors{'macro_in_accent'} = [];


$result_floats{'macro_in_accent'} = {};


1;
