use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'brace_opened_no_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'anchortruc'
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'truc'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'anchor',
              'extra' => {
                'node_content' => [
                  {}
                ],
                'normalized' => 'truc'
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
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'node_content'}[0] = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[0];
$result_trees{'brace_opened_no_command'}{'contents'}[0]{'parent'} = $result_trees{'brace_opened_no_command'};
$result_trees{'brace_opened_no_command'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'brace_opened_no_command'}{'contents'}[1];
$result_trees{'brace_opened_no_command'}{'contents'}[1]{'parent'} = $result_trees{'brace_opened_no_command'};

$result_texis{'brace_opened_no_command'} = 'anchortruc@} @anchor{truc}.
@bye';


$result_texts{'brace_opened_no_command'} = 'anchortruc} .
';

$result_errors{'brace_opened_no_command'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  }
];


$result_floats{'brace_opened_no_command'} = {};


1;
