use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'backslash_math'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a '
                    },
                    {
                      'cmdname' => '\\',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' b '
                    },
                    {
                      'args' => [
                        {
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'backslashchar',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' c'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.
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
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1];
$result_trees{'backslash_math'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'backslash_math'}{'contents'}[0];
$result_trees{'backslash_math'}{'contents'}[0]{'parent'} = $result_trees{'backslash_math'};

$result_texis{'backslash_math'} = '@math{a @\\ b @backslashchar{} c}.
';


$result_texts{'backslash_math'} = 'a \\ b \\ c.
';

$result_errors{'backslash_math'} = [];


$result_floats{'backslash_math'} = {};



$result_converted{'latex_text'}->{'backslash_math'} = '\\begin{document}
$a \\backslash{} b \\mathtt{\\backslash{}} c$.
';

1;
