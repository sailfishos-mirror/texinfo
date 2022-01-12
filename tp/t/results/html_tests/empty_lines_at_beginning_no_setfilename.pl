use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_lines_at_beginning_no_setfilename'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'parent' => {},
                  'text' => ' comment
',
                  'type' => 'misc_arg'
                }
              ],
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  ' comment
'
                ]
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
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => 'empty_lines_at_beginning_no_setfilename.texi',
        'line_nr' => 6,
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
              'text' => 'top'
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => 'empty_lines_at_beginning_no_setfilename.texi',
        'line_nr' => 7,
        'macro' => ''
      },
      'parent' => {}
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
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'};
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'args'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'};
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2]{'args'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[2]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'};
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[3];
$result_trees{'empty_lines_at_beginning_no_setfilename'}{'contents'}[3]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename'};

$result_texis{'empty_lines_at_beginning_no_setfilename'} = '\\input texinfo


@c comment

@node Top
@top top

@bye
';


$result_texts{'empty_lines_at_beginning_no_setfilename'} = '
top
***

';

$result_sectioning{'empty_lines_at_beginning_no_setfilename'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'empty_lines_at_beginning_no_setfilename'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'empty_lines_at_beginning_no_setfilename'};

$result_nodes{'empty_lines_at_beginning_no_setfilename'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'empty_lines_at_beginning_no_setfilename'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'empty_lines_at_beginning_no_setfilename'} = [];


$result_floats{'empty_lines_at_beginning_no_setfilename'} = {};



$result_converted{'html'}->{'empty_lines_at_beginning_no_setfilename'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="top">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="Top">
<h1 class="top" id="top">top</h1>

</div>



</body>
</html>
';

1;
