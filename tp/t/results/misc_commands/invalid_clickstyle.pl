use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'invalid_clickstyle'} = {
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
              'text' => '@result',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' @result on the same line
',
            'misc_args' => [
              '@result'
            ]
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'A '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'click',
              'contents' => [],
              'extra' => {
                'clickstyle' => 'result'
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
              'text' => ' (result on the same line).
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
          'args' => [
            {
              'parent' => {},
              'text' => '@nocmd',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' @nocmd
',
            'misc_args' => [
              '@nocmd'
            ]
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'A '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'click',
              'contents' => [],
              'extra' => {
                'clickstyle' => 'nocmd'
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
              'text' => ' (nocmd).
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
          'cmdname' => 'clickstyle',
          'extra' => {
            'arg_line' => ' something
'
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
              'parent' => {},
              'text' => 'A '
            },
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'click',
              'contents' => [],
              'extra' => {
                'clickstyle' => 'nocmd'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' (something).
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
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[1];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[5];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'contents'}[2]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'contents'}[1];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'contents'}[2]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'invalid_clickstyle'}{'contents'}[0];
$result_trees{'invalid_clickstyle'}{'contents'}[0]{'parent'} = $result_trees{'invalid_clickstyle'};

$result_texis{'invalid_clickstyle'} = '
@clickstyle @result on the same line

A @click{} (result on the same line).

@clickstyle @nocmd

A @click{} (nocmd).

@clickstyle something

A @click{} (something).
';


$result_texts{'invalid_clickstyle'} = '

A => (result on the same line).


A  (nocmd).


A  (something).
';

$result_errors{'invalid_clickstyle'} = [
  {
    'error_line' => 'warning: remaining argument on @clickstyle line: on the same line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'remaining argument on @clickstyle line: on the same line',
    'type' => 'warning'
  },
  {
    'error_line' => '@clickstyle should only accept an @-command as argument, not ` something
\'
',
    'file_name' => '',
    'line_nr' => 10,
    'macro' => '',
    'text' => '@clickstyle should only accept an @-command as argument, not ` something
\'',
    'type' => 'error'
  }
];


$result_floats{'invalid_clickstyle'} = {};


1;
