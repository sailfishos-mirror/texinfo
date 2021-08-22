use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'setchapternewpage_on_odd_titlepage'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'setchapternewpage_on_odd_titlepage.info'
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
        'text_arg' => 'setchapternewpage_on_odd_titlepage.info'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'on'
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
          'on'
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
            'line_nr' => 8,
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
        'line_nr' => 6,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[1]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[1];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[1]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[2]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[3]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[3];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[3]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[4]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[0]{'extra'}{'command'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[1];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[1]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'extra'}{'end_command'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'contents'}[2];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[5]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};

$result_texis{'setchapternewpage_on_odd_titlepage'} = '@setfilename setchapternewpage_on_odd_titlepage.info
@setchapternewpage on

@setchapternewpage odd

@titlepage
in titlepage
@end titlepage
';


$result_texts{'setchapternewpage_on_odd_titlepage'} = '

';

$result_errors{'setchapternewpage_on_odd_titlepage'} = [
  {
    'error_line' => ':4: warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'setchapternewpage_on_odd_titlepage'} = {};



$result_converted{'latex'}->{'setchapternewpage_on_odd_titlepage'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother

\\makeatletter
\\patchcmd{\\chapter}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{}{}
\\makeatother

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
