use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'settitle_and_headings'} = {
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
        }
      ],
      'parent' => {},
      'type' => 'text_root'
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
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 6,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[3];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'};
$result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'settitle_and_headings'}{'contents'}[1];
$result_trees{'settitle_and_headings'}{'contents'}[1]{'parent'} = $result_trees{'settitle_and_headings'};

$result_texis{'settitle_and_headings'} = '@setfilename settitle_and_headings.info
@settitle Title @* for a manual

@headings double

@chapter chap
';


$result_texts{'settitle_and_headings'} = '

1 chap
******
';

$result_sectioning{'settitle_and_headings'} = {
  'level' => 0,
  'section_childs' => [
    {
      'cmdname' => 'chapter',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 1,
      'number' => 1,
      'section_up' => {}
    }
  ]
};
$result_sectioning{'settitle_and_headings'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'settitle_and_headings'};

$result_errors{'settitle_and_headings'} = [];


$result_floats{'settitle_and_headings'} = {};



$result_converted{'latex'}->{'settitle_and_headings'} = '
\\GNUTexinfosetdoubleheader{Title \\leavevmode{}\\\\ for a manual}%

\\chapter{chap}
';

1;
