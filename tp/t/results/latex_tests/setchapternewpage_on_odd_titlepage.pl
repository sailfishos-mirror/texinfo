use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'setchapternewpage_on_odd_titlepage'} = {
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
                  'contents' => [],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'titlepage',
              'contents' => [
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 7,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
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
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'extra'}{'end_command'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0];
$result_trees{'setchapternewpage_on_odd_titlepage'}{'contents'}[0]{'parent'} = $result_trees{'setchapternewpage_on_odd_titlepage'};

$result_texis{'setchapternewpage_on_odd_titlepage'} = '@setchapternewpage on

@setchapternewpage odd

@titlepage
in titlepage
@end titlepage
';


$result_texts{'setchapternewpage_on_odd_titlepage'} = '

';

$result_errors{'setchapternewpage_on_odd_titlepage'} = [
  {
    'error_line' => 'warning: multiple @setchapternewpage
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];


$result_floats{'setchapternewpage_on_odd_titlepage'} = {};



$result_converted{'latex_text'}->{'setchapternewpage_on_odd_titlepage'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother

\\makeatletter
\\patchcmd{\\chapter}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{}{}
\\makeatother

\\begin{document}

\\GNUTexinfofrontmatter
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
\\GNUTexinfosetdoubleheader{}%
\\GNUTexinfomainmatter
';

1;
