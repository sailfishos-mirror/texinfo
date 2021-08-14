use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'two_setchapternewpage_on_odd'} = {
  'contents' => [
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
    }
  ],
  'type' => 'text_root'
};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2]{'args'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};

$result_texis{'two_setchapternewpage_on_odd'} = '@setchapternewpage on

@setchapternewpage odd
';


$result_texts{'two_setchapternewpage_on_odd'} = '
';

$result_errors{'two_setchapternewpage_on_odd'} = [
  {
    'error_line' => ':3: warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'two_setchapternewpage_on_odd'} = {};



$result_converted{'latex'}->{'two_setchapternewpage_on_odd'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\makeatletter
\\patchcmd{\\chapter}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{}{}
\\makeatother
\\GNUTexinfosetdoubleheader{No Title}%
';

1;
