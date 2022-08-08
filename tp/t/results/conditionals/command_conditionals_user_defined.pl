use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_conditionals_user_defined'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'machin',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' truc
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
          'type' => 'empty_line_after_command'
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
                  'text' => 'auth'
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
          'cmdname' => 'defindex',
          'extra' => {
            'misc_args' => [
              'auth'
            ],
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
                  'parent' => {},
                  'text' => 'infoencl, :,:'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'infoencl',
              ':',
              ':'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 7,
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
                  'text' => 'strongalias = strong'
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
              'strongalias',
              'strong'
            ],
            'spaces_before_argument' => ' '
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
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'macro truc is defined.
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
              'parent' => {},
              'text' => 'index command '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'authindex is defined.
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
              'parent' => {},
              'text' => 'definfoenclose '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'infoencl is defined.
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
              'parent' => {},
              'text' => 'strongalias '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'alias is defined.
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
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[3];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[5];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[7];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[9];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[9];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13]{'contents'}[2]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15]{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15]{'contents'}[1]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15]{'contents'}[2]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'command_conditionals_user_defined'}{'contents'}[0];
$result_trees{'command_conditionals_user_defined'}{'contents'}[0]{'parent'} = $result_trees{'command_conditionals_user_defined'};

$result_texis{'command_conditionals_user_defined'} = '@macro truc
machin
@end macro

@defindex auth

@definfoenclose infoencl, :,:

@alias strongalias = strong

@@macro truc is defined.

index command @@authindex is defined.

definfoenclose @@infoencl is defined.

strongalias @@alias is defined.
';


$result_texts{'command_conditionals_user_defined'} = '



@macro truc is defined.

index command @authindex is defined.

definfoenclose @infoencl is defined.

strongalias @alias is defined.
';

$result_errors{'command_conditionals_user_defined'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_indices{'command_conditionals_user_defined'} = {
  'index_names' => {
    'auth' => {
      'contained_indices' => {
        'auth' => 1
      },
      'in_code' => 0,
      'name' => 'auth'
    },
    'cp' => {
      'contained_indices' => {
        'cp' => 1
      },
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'contained_indices' => {
        'fn' => 1
      },
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'contained_indices' => {
        'ky' => 1
      },
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'contained_indices' => {
        'pg' => 1
      },
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'contained_indices' => {
        'tp' => 1
      },
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'contained_indices' => {
        'vr' => 1
      },
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'command_conditionals_user_defined'} = {};


1;
