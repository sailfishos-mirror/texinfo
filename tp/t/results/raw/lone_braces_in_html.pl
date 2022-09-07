use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'lone_braces_in_html'} = {
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
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '}
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
                'line_nr' => 3,
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
                  'text' => '{
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
                'line_nr' => 7,
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
            'line_nr' => 5,
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
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'lone_braces_in_html'}{'contents'}[0];
$result_trees{'lone_braces_in_html'}{'contents'}[0]{'parent'} = $result_trees{'lone_braces_in_html'};

$result_texis{'lone_braces_in_html'} = '@html
}
@end html

@html
{
@end html
';


$result_texts{'lone_braces_in_html'} = '
';

$result_errors{'lone_braces_in_html'} = [];


$result_floats{'lone_braces_in_html'} = {};



$result_converted{'plaintext'}->{'lone_braces_in_html'} = '';


$result_converted{'html_text'}->{'lone_braces_in_html'} = '}

{
';

1;
