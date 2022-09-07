use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'titlepage_and_setchapternewpage_odd'} = {
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
                    'spaces_before_argument' => ' ',
                    'text_arg' => 'titlepage'
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
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0];
$result_trees{'titlepage_and_setchapternewpage_odd'}{'contents'}[0]{'parent'} = $result_trees{'titlepage_and_setchapternewpage_odd'};

$result_texis{'titlepage_and_setchapternewpage_odd'} = '@setchapternewpage odd

@titlepage
in titlepage
@end titlepage

';


$result_texts{'titlepage_and_setchapternewpage_odd'} = '

';

$result_errors{'titlepage_and_setchapternewpage_odd'} = [];


$result_floats{'titlepage_and_setchapternewpage_odd'} = {};



$result_converted{'latex_text'}->{'titlepage_and_setchapternewpage_odd'} = '

\\begin{document}

\\frontmatter
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
\\pagestyle{double}%
\\mainmatter
';

1;
