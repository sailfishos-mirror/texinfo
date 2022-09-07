use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_value'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'ab',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'a
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'b',
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
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' ab
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
              'parent' => {},
              'text' => 'flagab',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '@ab',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' flagab @ab
',
            'misc_args' => [
              'flagab',
              '@ab'
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
              'parent' => {},
              'text' => 'flagab: a
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
              'text' => 'b
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
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[5];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_value'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'macro_in_value'}{'contents'}[0];
$result_trees{'macro_in_value'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_value'};

$result_texis{'macro_in_value'} = '@macro ab
a

b
@end macro

@set flagab @ab

flagab: a

b
';


$result_texts{'macro_in_value'} = '

flagab: a

b
';

$result_errors{'macro_in_value'} = [];


$result_floats{'macro_in_value'} = {};


1;
