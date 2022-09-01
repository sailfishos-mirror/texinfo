use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_count_and_example'} = {
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in example
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'command_argument' => 'example',
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'After.
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
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[2];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraph_count_and_example'}{'contents'}[0];
$result_trees{'paragraph_count_and_example'}{'contents'}[0]{'parent'} = $result_trees{'paragraph_count_and_example'};

$result_texis{'paragraph_count_and_example'} = '@example
in example
@end example

After.
';


$result_texts{'paragraph_count_and_example'} = 'in example

After.
';

$result_errors{'paragraph_count_and_example'} = [];


$result_floats{'paragraph_count_and_example'} = {};



$result_converted{'plaintext'}->{'paragraph_count_and_example'} = '     in example

   After.
';


$result_converted{'html_text'}->{'paragraph_count_and_example'} = '<div class="example">
<pre class="example-preformatted">in example
</pre></div>

<p>After.
</p>';

1;
