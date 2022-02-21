use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_top_section'} = {
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
              'text' => 'First top'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'First top.
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
        }
      ],
      'extra' => {
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
              'text' => 'Second top'
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
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Second top.
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'double_top_section'}{'contents'}[0]{'parent'} = $result_trees{'double_top_section'};
$result_trees{'double_top_section'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1]{'args'}[0];
$result_trees{'double_top_section'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1]{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'double_top_section'}{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[1]{'parent'} = $result_trees{'double_top_section'};
$result_trees{'double_top_section'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[2]{'args'}[0];
$result_trees{'double_top_section'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[2];
$result_trees{'double_top_section'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[2];
$result_trees{'double_top_section'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_top_section'}{'contents'}[2]{'contents'}[1];
$result_trees{'double_top_section'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'double_top_section'}{'contents'}[2];
$result_trees{'double_top_section'}{'contents'}[2]{'parent'} = $result_trees{'double_top_section'};

$result_texis{'double_top_section'} = '@top First top

First top.

@top Second top

Second top.
';


$result_texts{'double_top_section'} = 'First top
*********

First top.

Second top
**********

Second top.
';

$result_sectioning{'double_top_section'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      },
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_level' => 0,
          'section_prev' => {},
          'section_up' => {},
          'toplevel_prev' => {},
          'toplevel_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'double_top_section'};
$result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[1]{'structure'}{'section_prev'} = $result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[0];
$result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[1]{'structure'}{'section_up'} = $result_sectioning{'double_top_section'};
$result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_prev'} = $result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[0];
$result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[1]{'structure'}{'toplevel_up'} = $result_sectioning{'double_top_section'}{'structure'}{'section_childs'}[0];

$result_errors{'double_top_section'} = [
  {
    'error_line' => 'warning: multiple @top
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => 'multiple @top',
    'type' => 'warning'
  }
];


$result_floats{'double_top_section'} = {};


1;
