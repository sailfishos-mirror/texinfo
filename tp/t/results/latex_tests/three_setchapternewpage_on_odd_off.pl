use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'three_setchapternewpage_on_odd_off'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'three_setchapternewpage_on_odd_off.info'
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
        'text_arg' => 'three_setchapternewpage_on_odd_off.info'
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
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'off'
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
          'off'
        ],
        'spaces_before_argument' => ' '
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
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[1]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[1];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[1]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[2]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[3]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[3];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[3]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[4]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[5]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[5];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[5]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};

$result_texis{'three_setchapternewpage_on_odd_off'} = '@setfilename three_setchapternewpage_on_odd_off.info
@setchapternewpage on

@setchapternewpage odd

@setchapternewpage off
';


$result_texts{'three_setchapternewpage_on_odd_off'} = '

';

$result_errors{'three_setchapternewpage_on_odd_off'} = [
  {
    'error_line' => ':4: warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  },
  {
    'error_line' => ':6: warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'three_setchapternewpage_on_odd_off'} = {};



$result_converted{'latex'}->{'three_setchapternewpage_on_odd_off'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%

\\makeatletter
\\patchcmd{\\chapter}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{}{}
\\makeatother
\\GNUTexinfosetdoubleheader{No Title}%

\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%
';

1;
