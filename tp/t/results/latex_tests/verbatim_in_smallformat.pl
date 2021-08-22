use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'verbatim_in_smallformat'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'verbatim_in_smallformat.info'
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
      'cmdname' => 'setfilename',
      'extra' => {
        'spaces_before_argument' => ' ',
        'text_arg' => 'verbatim_in_smallformat.info'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    },
    {
      'cmdname' => 'smallformat',
      'contents' => [
        {
          'extra' => {
            'command' => {}
          },
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'command' => {}
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
            }
          ],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
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
            'command_argument' => 'smallformat',
            'spaces_before_argument' => ' ',
            'text_arg' => 'smallformat'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'end_command' => {}
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'args'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'};
$result_trees{'verbatim_in_smallformat'}{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'};
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[0]{'extra'}{'command'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'extra'}{'command'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'extra'}{'end_command'} = $result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'contents'}[3];
$result_trees{'verbatim_in_smallformat'}{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_smallformat'};

$result_texis{'verbatim_in_smallformat'} = '@setfilename verbatim_in_smallformat.info

@smallformat
@verbatim
... still verbatim, but in a smaller font ...
@end verbatim
@end smallformat
';


$result_texts{'verbatim_in_smallformat'} = '
... still verbatim, but in a smaller font ...
';

$result_errors{'verbatim_in_smallformat'} = [];


$result_floats{'verbatim_in_smallformat'} = {};



$result_converted{'latex'}->{'verbatim_in_smallformat'} = '
\\par\\begingroup\\obeylines\\obeyspaces\\frenchspacing\\leftskip=2em\\relax\\parskip=0pt\\relax\\footnotesize{}%
\\begin{verbatim}
... still verbatim, but in a smaller font ...
\\end{verbatim}
\\endgroup{}%
';

1;
