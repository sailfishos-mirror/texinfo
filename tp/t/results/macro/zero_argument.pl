use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'zero_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'foo',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in foo',
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
            'arg_line' => ' foo {}
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
              'text' => 'abar',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in bar',
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
            'arg_line' => ' abar
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
          'text' => '',
          'type' => 'empty_line_after_command'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[2];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'zero_argument'}{'contents'}[0];
$result_trees{'zero_argument'}{'contents'}[0]{'parent'} = $result_trees{'zero_argument'};

$result_texis{'zero_argument'} = '@macro foo {}
in foo
@end macro

@macro abar
in bar
@end macro';


$result_texts{'zero_argument'} = '
';

$result_errors{'zero_argument'} = [];


$result_floats{'zero_argument'} = {};


1;
