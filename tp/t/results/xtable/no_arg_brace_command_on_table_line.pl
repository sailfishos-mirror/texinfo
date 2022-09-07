use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_arg_brace_command_on_table_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'cmdname' => 'asis',
              'contents' => [],
              'parent' => {},
              'type' => 'command_as_argument_inserted'
            },
            {
              'contents' => [
                {
                  'cmdname' => 'bullet',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'item'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'extra'}{'command_as_argument'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0];
$result_trees{'no_arg_brace_command_on_table_line'}{'contents'}[0]{'parent'} = $result_trees{'no_arg_brace_command_on_table_line'};

$result_texis{'no_arg_brace_command_on_table_line'} = '@table @bullet
@item item
@end table
';


$result_texts{'no_arg_brace_command_on_table_line'} = 'item
';

$result_errors{'no_arg_brace_command_on_table_line'} = [
  {
    'error_line' => 'command @bullet not accepting argument in brace should not be on @table line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'command @bullet not accepting argument in brace should not be on @table line',
    'type' => 'error'
  }
];


$result_floats{'no_arg_brace_command_on_table_line'} = {};


1;
