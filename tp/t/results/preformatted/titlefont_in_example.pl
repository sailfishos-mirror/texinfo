use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlefont_in_example'} = {
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Title'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'titlefont',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '
'
                },
                {
                  'parent' => {},
                  'text' => 'Text.
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
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'}{'contents'}[0];
$result_trees{'titlefont_in_example'}{'contents'}[0]{'parent'} = $result_trees{'titlefont_in_example'};

$result_texis{'titlefont_in_example'} = '@example
@titlefont{Title}
Text.
@end example
';


$result_texts{'titlefont_in_example'} = 'Title
Text.
';

$result_errors{'titlefont_in_example'} = [];


$result_floats{'titlefont_in_example'} = {};



$result_converted{'plaintext'}->{'titlefont_in_example'} = '     Title
     *****
     Text.
';


$result_converted{'html_text'}->{'titlefont_in_example'} = '<div class="example">
<h1 class="titlefont">Title</h1><pre class="example-preformatted">

Text.
</pre></div>
';


$result_converted{'docbook'}->{'titlefont_in_example'} = 'Title<screen>
Text.
</screen>';


$result_converted{'xml'}->{'titlefont_in_example'} = '<example endspaces=" ">
<titlefont>Title</titlefont><pre xml:space="preserve">
Text.
</pre></example>
';


$result_converted{'latex_text'}->{'titlefont_in_example'} = '\\begin{GNUTexinfoindented}
{\\huge \\bfseries Title}\\begin{GNUTexinfopreformatted}%
\\ttfamily 
Text.
\\end{GNUTexinfopreformatted}
\\end{GNUTexinfoindented}
';

1;
