use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_center_with_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'args' => [
                    {
                      'contents' => [],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'w',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 1,
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
          'cmdname' => 'center',
          'extra' => {
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
$result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_center_with_arg'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_center_with_arg'}{'contents'}[0];
$result_trees{'empty_center_with_arg'}{'contents'}[0]{'parent'} = $result_trees{'empty_center_with_arg'};

$result_texis{'empty_center_with_arg'} = '@center @w{}
';


$result_texts{'empty_center_with_arg'} = '
';

$result_errors{'empty_center_with_arg'} = [];


$result_floats{'empty_center_with_arg'} = {};



$result_converted{'plaintext'}->{'empty_center_with_arg'} = '';


$result_converted{'html_text'}->{'empty_center_with_arg'} = '<div class="center"><!-- /@w -->
</div>';


$result_converted{'latex'}->{'empty_center_with_arg'} = '\\begin{center}
\\hbox{}
\\end{center}
';

1;
