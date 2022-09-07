use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'enumerate_above_ten'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '14'
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
          'cmdname' => 'enumerate',
          'contents' => [
            {
              'cmdname' => 'item',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'paragraph'
                }
              ],
              'extra' => {
                'item_number' => 1,
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'enumerate'
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
                'text_arg' => 'enumerate'
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
            'end_command' => {},
            'enumerate_specification' => '14',
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
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'}{'contents'}[0];
$result_trees{'enumerate_above_ten'}{'contents'}[0]{'parent'} = $result_trees{'enumerate_above_ten'};

$result_texis{'enumerate_above_ten'} = '@enumerate 14
@item a
@end enumerate
';


$result_texts{'enumerate_above_ten'} = '14. a
';

$result_errors{'enumerate_above_ten'} = [];


$result_floats{'enumerate_above_ten'} = {};



$result_converted{'plaintext'}->{'enumerate_above_ten'} = '  14. a
';


$result_converted{'html_text'}->{'enumerate_above_ten'} = '<ol class="enumerate" start="14">
<li> a
</li></ol>
';


$result_converted{'xml'}->{'enumerate_above_ten'} = '<enumerate first="14" spaces=" " endspaces=" "><enumeratefirst>14</enumeratefirst>
<listitem spaces=" "><para>a
</para></listitem></enumerate>
';


$result_converted{'docbook'}->{'enumerate_above_ten'} = '<orderedlist numeration="arabic"><listitem><para>a
</para></listitem></orderedlist>';


$result_converted{'latex_text'}->{'enumerate_above_ten'} = '\\begin{enumerate}[start=14]
\\item a
\\end{enumerate}
';

1;
