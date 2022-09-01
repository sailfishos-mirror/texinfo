use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlepage_and_setchapternewpage_on'} = {
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
                      'text' => 'titlepage_and_setchapternewpage_on.info'
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
                'text_arg' => 'titlepage_and_setchapternewpage_on.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
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
                    'line_nr' => 6,
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
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
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
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'extra'}{'end_command'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_on'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_on'};

$result_texis{'titlepage_and_setchapternewpage_on'} = '@setfilename titlepage_and_setchapternewpage_on.info
@setchapternewpage on

@titlepage
in titlepage
@end titlepage

';


$result_texts{'titlepage_and_setchapternewpage_on'} = '

';

$result_errors{'titlepage_and_setchapternewpage_on'} = [];


$result_floats{'titlepage_and_setchapternewpage_on'} = {};



$result_converted{'latex'}->{'titlepage_and_setchapternewpage_on'} = '\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\GNUTexinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
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
\\GNUTexinfosetsingleheader{}%
\\GNUTexinfomainmatter
';

1;
