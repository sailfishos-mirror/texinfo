use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'too_much_args'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'twoargs',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'first',
              'type' => 'macro_arg'
            },
            {
              'parent' => {},
              'text' => 'second',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'first arg: \\first\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'second arg: \\second\\
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
            'arg_line' => ' twoargs {first, second}
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'first arg: one
'
            },
            {
              'parent' => {},
              'text' => 'second arg: two, three.
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
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[2];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0]{'contents'}[2];
$result_trees{'too_much_args'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'too_much_args'}{'contents'}[0];
$result_trees{'too_much_args'}{'contents'}[0]{'parent'} = $result_trees{'too_much_args'};

$result_texis{'too_much_args'} = '@macro twoargs {first, second}
first arg: \\first\\
second arg: \\second\\
@end macro

first arg: one
second arg: two, three.
';


$result_texts{'too_much_args'} = '
first arg: one
second arg: two, three.
';

$result_errors{'too_much_args'} = [
  {
    'error_line' => 'macro `twoargs\' called with too many args
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'macro `twoargs\' called with too many args',
    'type' => 'error'
  }
];


$result_floats{'too_much_args'} = {};


1;
