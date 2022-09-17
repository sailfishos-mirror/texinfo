use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'value_after_brace_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'bracedletter',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '{a}',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' bracedletter {a}
',
            'misc_args' => [
              'bracedletter',
              '{a}'
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'unknowncmd',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '@unknown',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' unknowncmd @unknown
',
            'misc_args' => [
              'unknowncmd',
              '@unknown'
            ]
          },
          'parent' => {}
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
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'cmdname' => 'ringaccent',
              'extra' => {
                'spaces' => ' '
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
              'cmdname' => '^',
              'extra' => {
                'spaces' => ' '
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
'
            },
            {
              'cmdname' => '^',
              'extra' => {
                'spaces' => ' '
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
              'cmdname' => 'code',
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'cmdname' => 'code',
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
              'text' => '
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
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[3]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[4];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[4]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[5]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[6]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[7]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[8];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[8]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[9]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[10]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'contents'}[11]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'value_after_brace_command'}{'contents'}[0];
$result_trees{'value_after_brace_command'}{'contents'}[0]{'parent'} = $result_trees{'value_after_brace_command'};

$result_texis{'value_after_brace_command'} = '@set bracedletter {a}
@set unknowncmd @unknown

@ringaccent {a}
@ringaccent 
@^ {a}
@^ 
@code {a}
@code 
';


$result_texts{'value_after_brace_command'} = '
a*
*
a^
^
a

';

$result_errors{'value_after_brace_command'} = [
  {
    'error_line' => '@ringaccent expected braces
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@^ expected braces
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => '@^ expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => '',
    'line_nr' => 7,
    'macro' => '',
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  },
  {
    'error_line' => '@code expected braces
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'unknown command `unknown\'
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'unknown command `unknown\'',
    'type' => 'error'
  }
];


$result_floats{'value_after_brace_command'} = {};


1;
