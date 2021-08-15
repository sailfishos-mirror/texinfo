use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'no_titlepage_and_setchapternewpage_on'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'no_titlepage_and_setchapternewpage_on.info'
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
        'text_arg' => 'no_titlepage_and_setchapternewpage_on.info'
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
    }
  ],
  'type' => 'text_root'
};
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'args'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'};
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[1]{'args'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[1];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[1]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'};

$result_texis{'no_titlepage_and_setchapternewpage_on'} = '@setfilename no_titlepage_and_setchapternewpage_on.info
@setchapternewpage on
';


$result_texts{'no_titlepage_and_setchapternewpage_on'} = '';

$result_errors{'no_titlepage_and_setchapternewpage_on'} = [];


$result_floats{'no_titlepage_and_setchapternewpage_on'} = {};



$result_converted{'latex'}->{'no_titlepage_and_setchapternewpage_on'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\GNUTexinfosetsingleheader{}%
';

1;
