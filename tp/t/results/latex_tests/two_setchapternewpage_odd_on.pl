use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'two_setchapternewpage_odd_on'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'setchapternewpage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'odd'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'misc_args' => [
                  'odd'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
',
              'type' => 'empty_line'
            },
            {
              'cmdname' => 'setchapternewpage',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'on'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'misc_args' => [
                  'on'
                ]
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'two_setchapternewpage_odd_on'} = '@setchapternewpage odd

@setchapternewpage on
';


$result_texts{'two_setchapternewpage_odd_on'} = '
';

$result_errors{'two_setchapternewpage_odd_on'} = [
  {
    'error_line' => 'warning: multiple @setchapternewpage
',
    'line_nr' => 3,
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'two_setchapternewpage_odd_on'} = {};



$result_converted{'latex_text'}->{'two_setchapternewpage_odd_on'} = '\\pagestyle{double}%

\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%
\\begin{document}
';

1;
