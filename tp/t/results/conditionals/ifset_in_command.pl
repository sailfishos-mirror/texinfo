use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ifset_in_command'} = {
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
          'contents' => [
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
                      'text' => 'xclear
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'file',
              'contents' => [],
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
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1];
$result_trees{'ifset_in_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ifset_in_command'}{'contents'}[0];
$result_trees{'ifset_in_command'}{'contents'}[0]{'parent'} = $result_trees{'ifset_in_command'};

$result_texis{'ifset_in_command'} = '
@file{
xclear
}
';


$result_texts{'ifset_in_command'} = '

xclear

';

$result_errors{'ifset_in_command'} = [];


$result_floats{'ifset_in_command'} = {};


1;
