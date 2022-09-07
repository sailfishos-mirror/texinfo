use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'isolated_html_expanded'} = {
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
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'html
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
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
                'text_arg' => 'html'
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
            'end_command' => {}
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
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'isolated_html_expanded'}{'contents'}[0];
$result_trees{'isolated_html_expanded'}{'contents'}[0]{'parent'} = $result_trees{'isolated_html_expanded'};

$result_texis{'isolated_html_expanded'} = '
@html
html
@end html
';


$result_texts{'isolated_html_expanded'} = '
';

$result_errors{'isolated_html_expanded'} = [];


$result_floats{'isolated_html_expanded'} = {};



$result_converted{'plaintext'}->{'isolated_html_expanded'} = 'html
';

1;
