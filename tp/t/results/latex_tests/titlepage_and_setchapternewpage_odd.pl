use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_and_setchapternewpage_odd'} = {
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'odd'
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
      'cmdname' => 'setchapternewpage',
      'extra' => {
        'misc_args' => [
          'odd'
        ],
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
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
      'cmdname' => 'titlepage',
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'in titlepage
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'titlepage'
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
            'command_argument' => 'titlepage',
            'spaces_before_argument' => ' ',
            'text_arg' => 'titlepage'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 6,
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
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'parent' => {},
      'text' => '
',
      'type' => 'empty_line'
    }
  ],
  'type' => 'text_root'
};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};

$result_texis{'titlepage_and_setchapternewpage_odd'} = '
@setchapternewpage odd

@titlepage
in titlepage
@end titlepage

';


$result_texts{'titlepage_and_setchapternewpage_odd'} = '


';

$result_errors{'titlepage_and_setchapternewpage_odd'} = [];


$result_floats{'titlepage_and_setchapternewpage_odd'} = {};



$result_converted{'latex'}->{'titlepage_and_setchapternewpage_odd'} = '

\\begin{titlepage}
in titlepage
\\end{titlepage}
\\GNUTexinfosetdoubleheader{No Title}%
\\mainmatter

';

1;
