use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'incorrect_allowcodebreaks_argument'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '_arg'
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
          'cmdname' => 'allowcodebreaks',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b a'
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
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0];
$result_trees{'incorrect_allowcodebreaks_argument'}{'contents'}[0]{'parent'} = $result_trees{'incorrect_allowcodebreaks_argument'};

$result_texis{'incorrect_allowcodebreaks_argument'} = '@allowcodebreaks _arg
@code{b a}
';


$result_texts{'incorrect_allowcodebreaks_argument'} = 'b a
';

$result_errors{'incorrect_allowcodebreaks_argument'} = [
  {
    'error_line' => '@allowcodebreaks arg must be `true\' or `false\', not `_arg\'
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@allowcodebreaks arg must be `true\' or `false\', not `_arg\'',
    'type' => 'error'
  }
];


$result_floats{'incorrect_allowcodebreaks_argument'} = {};



$result_converted{'plaintext'}->{'incorrect_allowcodebreaks_argument'} = '‘b a’
';


$result_converted{'html_text'}->{'incorrect_allowcodebreaks_argument'} = '<p><code class="code">b a</code>
</p>';


$result_converted{'latex'}->{'incorrect_allowcodebreaks_argument'} = '\\texttt{b a}
';

1;
