use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'titlepage_and_setchapternewpage_odd'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'titlepage_and_setchapternewpage_odd.info'
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
        'text_arg' => 'titlepage_and_setchapternewpage_odd.info'
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
        'line_nr' => 3,
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
        'line_nr' => 5,
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
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[3]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[0]{'extra'}{'command'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[4]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[5]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};

$result_texis{'titlepage_and_setchapternewpage_odd'} = '@setfilename titlepage_and_setchapternewpage_odd.info

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
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
in titlepage
\\endgroup
\\end{titlepage}
\\GNUTexinfosetdoubleheader{No Title}%
\\GNUTexinfomainmatter

';

1;
