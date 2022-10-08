use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'three_setchapternewpage_on_odd_off'} = {
  'contents' => [
    {
      'contents' => [
        {
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0];
$result_trees{'three_setchapternewpage_on_odd_off'}{'contents'}[0]{'parent'} = $result_trees{'three_setchapternewpage_on_odd_off'};

$result_texis{'three_setchapternewpage_on_odd_off'} = '@setchapternewpage on

@setchapternewpage odd

@setchapternewpage off
';


$result_texts{'three_setchapternewpage_on_odd_off'} = '

';

$result_errors{'three_setchapternewpage_on_odd_off'} = [
  {
    'error_line' => 'warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'three_setchapternewpage_on_odd_off'} = {};



$result_converted{'latex_text'}->{'three_setchapternewpage_on_odd_off'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%

\\makeatletter
\\patchcmd{\\chapter}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{}{}
\\makeatother
\\pagestyle{double}%

\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}}{}{}
\\makeatother
\\pagestyle{single}%
\\begin{document}
';

1;
