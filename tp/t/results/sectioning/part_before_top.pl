use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'part_before_top'} = [
  {
    'contents' => [
      {
        'contents' => [
          {
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
                'text' => 'part'
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
        'cmdname' => 'part',
        'contents' => [
          {
            'text' => '
',
            'type' => 'empty_line'
          }
        ],
        'extra' => {},
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
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
                'text' => 'top'
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
        'cmdname' => 'top',
        'extra' => {
          'associated_part' => {}
        },
        'info' => {
          'spaces_before_argument' => {
            'text' => ' '
          }
        },
        'source_info' => {
          'file_name' => '',
          'line_nr' => 3,
          'macro' => ''
        }
      }
    ],
    'type' => 'unit',
    'unit_command' => {}
  }
];
$result_trees{'part_before_top'}[0]{'contents'}[2]{'extra'}{'associated_part'} = $result_trees{'part_before_top'}[0]{'contents'}[1];
$result_trees{'part_before_top'}[0]{'unit_command'} = $result_trees{'part_before_top'}[0]{'contents'}[2];

$result_texis{'part_before_top'} = '@part part

@top top
';


$result_texts{'part_before_top'} = 'part
****

top
***
';

$result_sectioning{'part_before_top'} = {
  'extra' => {
    'section_childs' => [
      {
        'associated_unit' => {
          'directions' => {
            'This' => {}
          },
          'type' => 'unit',
          'unit_command' => {
            'associated_unit' => {},
            'cmdname' => 'top',
            'extra' => {
              'associated_part' => {},
              'section_directions' => {
                'prev' => {},
                'up' => {}
              },
              'section_level' => 0
            }
          }
        },
        'cmdname' => 'part',
        'extra' => {
          'part_associated_section' => {},
          'section_directions' => {
            'up' => {}
          },
          'section_level' => 0
        }
      },
      {}
    ],
    'section_level' => -1
  }
};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'directions'}{'This'} = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'associated_unit'} = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'extra'}{'associated_part'} = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0];
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'}{'extra'}{'section_directions'}{'up'} = $result_sectioning{'part_before_top'};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'part_associated_section'} = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'part_before_top'};
$result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[1] = $result_sectioning{'part_before_top'}{'extra'}{'section_childs'}[0]{'associated_unit'}{'unit_command'};

$result_errors{'part_before_top'} = [
  {
    'error_line' => 'warning: @part should not be associated with @top
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@part should not be associated with @top',
    'type' => 'warning'
  }
];


$result_floats{'part_before_top'} = {};


$result_elements{'part_before_top'} = [
  {
    'directions' => {
      'This' => {}
    },
    'type' => 'unit',
    'unit_command' => {
      'associated_unit' => {},
      'cmdname' => 'top',
      'extra' => {
        'associated_part' => {
          'associated_unit' => {},
          'cmdname' => 'part',
          'extra' => {}
        }
      }
    }
  }
];
$result_elements{'part_before_top'}[0]{'directions'}{'This'} = $result_elements{'part_before_top'}[0];
$result_elements{'part_before_top'}[0]{'unit_command'}{'associated_unit'} = $result_elements{'part_before_top'}[0];
$result_elements{'part_before_top'}[0]{'unit_command'}{'extra'}{'associated_part'}{'associated_unit'} = $result_elements{'part_before_top'}[0];



$result_directions_text{'part_before_top'} = 'element: @top top
  This: @top top
';


$result_converted{'plaintext'}->{'part_before_top'} = 'top
***

';


$result_converted{'html'}->{'part_before_top'} = '<!DOCTYPE html>
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

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<div class="part-level-extent" id="part">
<h1 class="part"><span>part<a class="copiable-link" href="#part"> &para;</a></span></h1>
<hr>

</div>
<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
</div>



</body>
</html>
';


$result_converted{'xml'}->{'part_before_top'} = '<part spaces=" "><sectiontitle>part</sectiontitle>

</part>
<top spaces=" "><sectiontitle>top</sectiontitle>
</top>
';

1;
