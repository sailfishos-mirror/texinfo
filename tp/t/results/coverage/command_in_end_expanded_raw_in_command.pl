use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_in_end_expanded_raw_in_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In TeX
'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'args' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'tex'
                                }
                              ],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'code',
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 3,
                            'macro' => ''
                          }
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
                    'missing_argument' => 1,
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 3,
                    'macro' => ''
                  }
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            }
          ],
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
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0];
$result_trees{'command_in_end_expanded_raw_in_command'}{'contents'}[0]{'parent'} = $result_trees{'command_in_end_expanded_raw_in_command'};

$result_texis{'command_in_end_expanded_raw_in_command'} = '@tex
In TeX
@end @code{tex}
';


$result_texts{'command_in_end_expanded_raw_in_command'} = '';

$result_errors{'command_in_end_expanded_raw_in_command'} = [
  {
    'error_line' => 'bad argument to @end: @code{tex}
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'bad argument to @end: @code{tex}',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end tex\'
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'no matching `@end tex\'',
    'type' => 'error'
  }
];


$result_floats{'command_in_end_expanded_raw_in_command'} = {};


1;
