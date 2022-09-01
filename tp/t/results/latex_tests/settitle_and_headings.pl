use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'settitle_and_headings'} = {
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
                      'text' => 'settitle_and_headings.info'
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
                'text_arg' => 'settitle_and_headings.info'
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
                      'text' => 'Title '
                    },
                    {
                      'cmdname' => '*',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' for a manual'
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
              'cmdname' => 'settitle',
              'extra' => {
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
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'double'
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
              'cmdname' => 'headings',
              'extra' => {
                'misc_args' => [
                  'double'
                ],
                'spaces_before_argument' => ' '
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
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'chap'
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'More text
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'page',
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Another page
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'};
$result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[3];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[5];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[5]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[6]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[7];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'contents'}[7]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'};

$result_texis{'settitle_and_headings'} = '@setfilename settitle_and_headings.info
@settitle Title @* for a manual

@headings double

@chapter chap

@page

More text

@page

Another page
';


$result_texts{'settitle_and_headings'} = '

1 chap
******



More text



Another page
';

$result_sectioning{'settitle_and_headings'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {},
        'structure' => {
          'section_level' => 1,
          'section_number' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'settitle_and_headings'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'settitle_and_headings'};

$result_errors{'settitle_and_headings'} = [];


$result_floats{'settitle_and_headings'} = {};



$result_converted{'latex_text'}->{'settitle_and_headings'} = '
\\GNUTexinfosetdoubleheader{}%

\\begin{document}
\\chapter{{chap}}

\\newpage{}%
\\phantom{blabla}%

More text

\\newpage{}%
\\phantom{blabla}%

Another page
';

1;
