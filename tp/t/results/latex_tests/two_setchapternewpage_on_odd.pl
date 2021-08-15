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
              'text' => 'two_setchapternewpage_on_odd.info'
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
        'text_arg' => 'two_setchapternewpage_on_odd.info'
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
    }
  ],
  'type' => 'text_root'
};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1]{'args'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[1]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[2]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[3]{'args'}[0];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'}{'contents'}[3];
$result_trees{'two_setchapternewpage_on_odd'}{'contents'}[3]{'parent'} = $result_trees{'two_setchapternewpage_on_odd'};

$result_texis{'two_setchapternewpage_on_odd'} = '@setfilename two_setchapternewpage_on_odd.info
@setchapternewpage on

@setchapternewpage odd
';


$result_texts{'two_setchapternewpage_on_odd'} = '
';

$result_errors{'two_setchapternewpage_on_odd'} = [
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
