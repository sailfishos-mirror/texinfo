use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'bad_beginning'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'menu',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => '*   
'
                    },
                    {
                      'parent' => {},
                      'text' => '*
'
                    },
                    {
                      'parent' => {},
                      'text' => '*something::
'
                    },
                    {
                      'parent' => {},
                      'text' => '*'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in code'
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
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '::
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
                }
              ],
              'parent' => {},
              'type' => 'menu_comment'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'menu'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'menu'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
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
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'bad_beginning'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'}{'contents'}[0];
$result_trees{'bad_beginning'}{'contents'}[0]{'parent'} = $result_trees{'bad_beginning'};

$result_texis{'bad_beginning'} = '@menu
*   
*
*something::
*@code{in code}::
@end menu';


$result_texts{'bad_beginning'} = '*   
*
*something::
*in code::
';

$result_errors{'bad_beginning'} = [];


$result_floats{'bad_beginning'} = {};


1;
