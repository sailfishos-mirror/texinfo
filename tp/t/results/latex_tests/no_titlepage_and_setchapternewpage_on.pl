use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_titlepage_and_setchapternewpage_on'} = {
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
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0];
$result_trees{'no_titlepage_and_setchapternewpage_on'}{'contents'}[0]{'parent'} = $result_trees{'no_titlepage_and_setchapternewpage_on'};

$result_texis{'no_titlepage_and_setchapternewpage_on'} = '@setchapternewpage on
';


$result_texts{'no_titlepage_and_setchapternewpage_on'} = '';

$result_errors{'no_titlepage_and_setchapternewpage_on'} = [];


$result_floats{'no_titlepage_and_setchapternewpage_on'} = {};



$result_converted{'latex_text'}->{'no_titlepage_and_setchapternewpage_on'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%
\\begin{document}
';

1;
