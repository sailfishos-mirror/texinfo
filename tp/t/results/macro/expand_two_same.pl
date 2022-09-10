use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'expand_two_same'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macrotwo',
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
              'text' => 'With a doubles arg \\arg\\ and re \\arg\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '',
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrotwo { arg }
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Call macro2
'
            },
            {
              'parent' => {},
              'text' => 'With a doubles arg a simple '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'arg'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => 'macrotwo'
              }
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => ' and re a simple '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '
'
                    },
                    {
                      'parent' => {},
                      'text' => 'arg'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 8,
                'macro' => 'macrotwo'
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
              'parent' => {},
              'text' => 'Call macro2 with 2 args
'
            },
            {
              'parent' => {},
              'text' => 'With a doubles arg arg with comma , here  and re arg with comma , here 
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[4];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[4];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'expand_two_same'}{'contents'}[0];
$result_trees{'expand_two_same'}{'contents'}[0]{'parent'} = $result_trees{'expand_two_same'};

$result_texis{'expand_two_same'} = '@macro macrotwo { arg }
With a doubles arg \\arg\\ and re \\arg\\

@end macro
Call macro2
With a doubles arg a simple @code{
arg}
 and re a simple @code{
arg}


Call macro2 with 2 args
With a doubles arg arg with comma , here  and re arg with comma , here 

';


$result_texts{'expand_two_same'} = 'Call macro2
With a doubles arg a simple 
arg
 and re a simple 
arg


Call macro2 with 2 args
With a doubles arg arg with comma , here  and re arg with comma , here 

';

$result_errors{'expand_two_same'} = [];


$result_floats{'expand_two_same'} = {};


1;
