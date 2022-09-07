use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cartouche_in_example'} = {
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
                  'text' => 'In example
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
              'cmdname' => 'cartouche',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'In cartouche in example
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
                          'text' => 'cartouche'
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
                    'text_arg' => 'cartouche'
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
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'end example
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
                'line_nr' => 7,
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
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'}{'contents'}[0];
$result_trees{'cartouche_in_example'}{'contents'}[0]{'parent'} = $result_trees{'cartouche_in_example'};

$result_texis{'cartouche_in_example'} = '@example
In example
@cartouche
In cartouche in example
@end cartouche
end example
@end example
';


$result_texts{'cartouche_in_example'} = 'In example
In cartouche in example
end example
';

$result_errors{'cartouche_in_example'} = [];


$result_floats{'cartouche_in_example'} = {};



$result_converted{'plaintext'}->{'cartouche_in_example'} = '     In example
     In cartouche in example
     end example
';


$result_converted{'html_text'}->{'cartouche_in_example'} = '<div class="example">
<pre class="example-preformatted">In example
</pre><table class="cartouche" border="1"><tr><td>
<pre class="example-preformatted">In cartouche in example
</pre></td></tr></table>
<pre class="example-preformatted">end example
</pre></div>
';


$result_converted{'xml'}->{'cartouche_in_example'} = '<example endspaces=" ">
<pre xml:space="preserve">In example
</pre><cartouche endspaces=" ">
<pre xml:space="preserve">In cartouche in example
</pre></cartouche>
<pre xml:space="preserve">end example
</pre></example>
';


$result_converted{'latex_text'}->{'cartouche_in_example'} = '\\begin{GNUTexinfoindented}
\\begin{GNUTexinfopreformatted}%
\\ttfamily In example
\\end{GNUTexinfopreformatted}
\\begin{mdframed}[style=GNUTexinfocartouche]
\\begin{GNUTexinfopreformatted}%
\\ttfamily In cartouche in example
\\end{GNUTexinfopreformatted}
\\end{mdframed}
\\begin{GNUTexinfopreformatted}%
\\ttfamily end example
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';


$result_converted{'docbook'}->{'cartouche_in_example'} = '<screen>In example
</screen><screen>In cartouche in example
</screen><screen>end example
</screen>';

1;
