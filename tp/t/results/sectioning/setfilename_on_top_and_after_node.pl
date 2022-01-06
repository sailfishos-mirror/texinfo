use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'setfilename_on_top_and_after_node'} = {
  'contents' => [
    {
      'contents' => [],
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
              'text' => 'In top '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'very badly placed setfilename'
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
                'text_arg' => 'very badly placed setfilename'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              },
              'parent' => {}
            }
          ],
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
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a bit too late'
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
            'text_arg' => 'a bit too late'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 2,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'};
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'args'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[1]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'};
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[1];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[1];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2];
$result_trees{'setfilename_on_top_and_after_node'}{'contents'}[2]{'parent'} = $result_trees{'setfilename_on_top_and_after_node'};

$result_texis{'setfilename_on_top_and_after_node'} = '@node Top
@top In top @setfilename very badly placed setfilename

@setfilename a bit too late
';


$result_texts{'setfilename_on_top_and_after_node'} = 'In top 
*******

';

$result_sectioning{'setfilename_on_top_and_after_node'} = {
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
$result_sectioning{'setfilename_on_top_and_after_node'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'setfilename_on_top_and_after_node'};

$result_nodes{'setfilename_on_top_and_after_node'} = {
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

$result_menus{'setfilename_on_top_and_after_node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'setfilename_on_top_and_after_node'} = [
  {
    'error_line' => ':2: warning: @setfilename should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@setfilename should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => ':2: warning: @setfilename should not appear in @top
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@setfilename should not appear in @top',
    'type' => 'warning'
  },
  {
    'error_line' => ':2: warning: @setfilename after the first element
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  },
  {
    'error_line' => ':4: warning: multiple @setfilename
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'multiple @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => ':4: warning: @setfilename after the first element
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@setfilename after the first element',
    'type' => 'warning'
  }
];


$result_floats{'setfilename_on_top_and_after_node'} = {};



$result_converted{'plaintext'}->{'setfilename_on_top_and_after_node'} = 'In top 
*******

';


$result_converted{'html'}->{'setfilename_on_top_and_after_node'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>In top </title>

<meta name="description" content="In top ">
<meta name="keywords" content="In top ">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">
<div class="top" id="Top">
<h1 class="top" id="In-top-">In top </h1>

</div>



</body>
</html>
';

1;
