use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'quote_dash_in_example'} = {
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'and now -- yes---now and ``so\'\'.
'
                },
                {
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line'
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
                'line_nr' => 5,
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
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'quote_dash_in_example'}{'contents'}[0];
$result_trees{'quote_dash_in_example'}{'contents'}[0]{'parent'} = $result_trees{'quote_dash_in_example'};

$result_texis{'quote_dash_in_example'} = '
@example
and now -- yes---now and ``so\'\'.

@end example
';


$result_texts{'quote_dash_in_example'} = '
and now -- yes---now and ``so\'\'.

';

$result_errors{'quote_dash_in_example'} = [];


$result_floats{'quote_dash_in_example'} = {};



$result_converted{'plaintext'}->{'quote_dash_in_example'} = '     and now -- yes---now and ``so\'\'.

';


$result_converted{'html_text'}->{'quote_dash_in_example'} = '
<div class="example">
<pre class="example-preformatted">and now -- yes---now and ``so\'\'.

</pre></div>
';


$result_converted{'docbook'}->{'quote_dash_in_example'} = '
<screen>and now -- yes---now and ``so\'\'.

</screen>';


$result_converted{'xml'}->{'quote_dash_in_example'} = '
<example endspaces=" ">
<pre xml:space="preserve">and now -- yes---now and ``so\'\'.

</pre></example>
';


$result_converted{'latex'}->{'quote_dash_in_example'} = '
\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}
\\ttfamily and now {-}{-} yes{-}{-}{-}now and {`}{`}so{\'}{\'}.

\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
