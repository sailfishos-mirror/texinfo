use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verbatim_in_smallformat'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
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
          'cmdname' => 'smallformat',
          'contents' => [
            {
              'cmdname' => 'verbatim',
              'contents' => [
                {
                  'extra' => {
                    'spaces_associated_command' => {}
                  },
                  'parent' => {},
                  'text' => '
',
                  'type' => 'empty_line_after_command'
                },
                {
                  'parent' => {},
                  'text' => '... still verbatim, but in a smaller font ...
',
                  'type' => 'raw'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'verbatim'
                        }
                      ],
                      'parent' => {},
                      'type' => 'line_arg'
                    }
                  ],
                  'cmdname' => 'end',
                  'extra' => {
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'verbatim'
                  },
                  'parent' => {}
                }
              ],
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
',
              'type' => 'empty_line_after_command'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'smallformat'
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
                'text_arg' => 'smallformat'
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
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'};

$result_texis{'verbatim_in_smallformat'} = '@smallformat
@verbatim
... still verbatim, but in a smaller font ...
@end verbatim
@end smallformat
';


$result_texts{'verbatim_in_smallformat'} = '... still verbatim, but in a smaller font ...
';

$result_errors{'verbatim_in_smallformat'} = [];


$result_floats{'verbatim_in_smallformat'} = {};



$result_converted{'latex_text'}->{'verbatim_in_smallformat'} = '\\begin{document}
\\begin{verbatim}
... still verbatim, but in a smaller font ...
\\end{verbatim}
';

1;
