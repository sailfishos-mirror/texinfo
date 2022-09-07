use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_line'} = {
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
                  'text' => 'example
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
                },
                {
                  'parent' => {},
                  'text' => 'after empty line
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
                'spaces_before_argument' => ' ',
                'text_arg' => 'example'
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
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_line'}{'contents'}[0];
$result_trees{'empty_line'}{'contents'}[0]{'parent'} = $result_trees{'empty_line'};

$result_texis{'empty_line'} = '@example
example

after empty line
@end example
';


$result_texts{'empty_line'} = 'example

after empty line
';

$result_errors{'empty_line'} = [];


$result_floats{'empty_line'} = {};



$result_converted{'plaintext'}->{'empty_line'} = '     example

     after empty line
';


$result_converted{'html_text'}->{'empty_line'} = '<div class="example">
<pre class="example-preformatted">example

after empty line
</pre></div>
';


$result_converted{'docbook'}->{'empty_line'} = '<screen>example

after empty line
</screen>';


$result_converted{'xml'}->{'empty_line'} = '<example endspaces=" ">
<pre xml:space="preserve">example

after empty line
</pre></example>
';


$result_converted{'latex_text'}->{'empty_line'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily example

after empty line
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
