use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_formal_arg'} = {
  'contents' => [
    {
      'contents' => [
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
              'text' => 'bad',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => '',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'not_empty',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in bad macro
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
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' bad  { , not_empty}
',
            'invalid_syntax' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
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
              'text' => 'badspace',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'first',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'in 2arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'bad space
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
                'line_nr' => 8,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' badspace{first, in 2arg}
',
            'invalid_syntax' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
            },
            {
              'parent' => {},
              'text' => ':::',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in bar
',
              'type' => 'raw'
            },
            {
              'cmdname' => 'macro',
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in macro foo
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
                    'line_nr' => 14,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'arg_line' => ' foo {? aaa}
'
              },
              'parent' => {}
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
                'line_nr' => 15,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' abar {:::}
',
            'invalid_syntax' => 1
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'args'}[2]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'args'}[2]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'args'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'bad_formal_arg'}{'contents'}[0];
$result_trees{'bad_formal_arg'}{'contents'}[0]{'parent'} = $result_trees{'bad_formal_arg'};

$result_texis{'bad_formal_arg'} = '
@macro bad  { , not_empty}
in bad macro
@end macro

@macro badspace{first, in 2arg}
bad space
@end macro

@macro abar {:::}
in bar
@macro foo {? aaa}
in macro foo
@end macro
@end macro
';


$result_texts{'bad_formal_arg'} = '


';

$result_errors{'bad_formal_arg'} = [
  {
    'error_line' => 'bad or empty @macro formal argument: 
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'bad or empty @macro formal argument: ',
    'type' => 'error'
  },
  {
    'error_line' => 'bad or empty @macro formal argument: in 2arg
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'bad or empty @macro formal argument: in 2arg',
    'type' => 'error'
  },
  {
    'error_line' => 'bad or empty @macro formal argument: :::
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => 'bad or empty @macro formal argument: :::',
    'type' => 'error'
  }
];


$result_floats{'bad_formal_arg'} = {};


1;
