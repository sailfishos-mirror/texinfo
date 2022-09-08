use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'two_macros_on_a_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in mymacro',
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
            'arg_line' => ' mymacro
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
              'text' => 'mymacrowithargs',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in with args
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'now the arg \\arg\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'after',
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
            'arg_line' => ' mymacrowithargs{arg}
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
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'cmdname' => '}',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'cmdname' => '}',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'in mymacro in mymacro
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
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'mymacro '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'cmdname' => '}',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => 'in mymacro in mymacro
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
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'mymacro'
            },
            {
              'cmdname' => '{',
              'parent' => {}
            },
            {
              'cmdname' => '}',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'mymacro
'
            },
            {
              'parent' => {},
              'text' => 'in mymacro in mymacro
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
              'text' => 'with args
'
            },
            {
              'parent' => {},
              'text' => 'in with args
'
            },
            {
              'parent' => {},
              'text' => 'now the arg an
'
            },
            {
              'parent' => {},
              'text' => 'arg
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
              'text' => 'in macro
'
            },
            {
              'parent' => {},
              'text' => 'after in mymacro
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
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'args'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[4]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[5]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[6]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[7]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[8]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[9]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'contents'}[10]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[4]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[5]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[6]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'contents'}[7]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[4]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[5]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[6]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'contents'}[7]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11]{'contents'}[3]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[13];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[13];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'two_macros_on_a_line'}{'contents'}[0];
$result_trees{'two_macros_on_a_line'}{'contents'}[0]{'parent'} = $result_trees{'two_macros_on_a_line'};

$result_texis{'two_macros_on_a_line'} = '@macro mymacro
in mymacro
@end macro

@macro mymacrowithargs{arg}
in with args
now the arg \\arg\\
after
@end macro


@@mymacro@{@} @@mymacro@{@}
in mymacro in mymacro

@@mymacro @@mymacro@{@}
in mymacro in mymacro

@@mymacro@{@} @@mymacro
in mymacro in mymacro

with args
in with args
now the arg an
arg

in macro
after in mymacro
';


$result_texts{'two_macros_on_a_line'} = '


@mymacro{} @mymacro{}
in mymacro in mymacro

@mymacro @mymacro{}
in mymacro in mymacro

@mymacro{} @mymacro
in mymacro in mymacro

with args
in with args
now the arg an
arg

in macro
after in mymacro
';

$result_errors{'two_macros_on_a_line'} = [];


$result_floats{'two_macros_on_a_line'} = {};


1;
