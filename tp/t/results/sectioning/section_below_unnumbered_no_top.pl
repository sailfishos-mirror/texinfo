use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'section_below_unnumbered_no_top'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'type' => 'preamble_before_content'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'U'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'unnumbered',
      'info' => {
        'spaces_before_argument' => ' '
      },
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
              'text' => 'S'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'section',
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'section_below_unnumbered_no_top'} = '@unnumbered U
@section S
';


$result_texts{'section_below_unnumbered_no_top'} = 'U
*
S
=
';

$result_sectioning{'section_below_unnumbered_no_top'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'info' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'section',
              'info' => {},
              'structure' => {
                'section_level' => 2,
                'section_up' => {}
              }
            }
          ],
          'section_level' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'section_below_unnumbered_no_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'section_below_unnumbered_no_top'}{'structure'}{'section_childs'}[0];
$result_sectioning{'section_below_unnumbered_no_top'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'section_below_unnumbered_no_top'};

$result_errors{'section_below_unnumbered_no_top'} = [];


$result_floats{'section_below_unnumbered_no_top'} = {};



$result_converted{'plaintext'}->{'section_below_unnumbered_no_top'} = 'U
*

S
=

';


$result_converted{'html'}->{'section_below_unnumbered_no_top'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">



</head>

<body lang="en">
<div class="unnumbered-level-extent" id="U">
<h2 class="unnumbered">U</h2>
<ul class="mini-toc">
<li><a href="#S" accesskey="1">S</a></li>
</ul>
<div class="section-level-extent" id="S">
<h3 class="section">S</h3>
</div>
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'section_below_unnumbered_no_top'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
