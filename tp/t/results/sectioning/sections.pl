use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'sections'} = {
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
              'text' => 'a chapter'
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'sections'}{'contents'}[0]{'parent'} = $result_trees{'sections'};
$result_trees{'sections'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'sections'}{'contents'}[1]{'args'}[0];
$result_trees{'sections'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'sections'}{'contents'}[1];
$result_trees{'sections'}{'contents'}[1]{'parent'} = $result_trees{'sections'};

$result_texis{'sections'} = '@chapter a chapter
';


$result_texts{'sections'} = '1 a chapter
***********
';

$result_sectioning{'sections'} = {
  'structure' => {
    'level' => 0,
    'section_childs' => [
      {
        'cmdname' => 'chapter',
        'extra' => {
          'spaces_before_argument' => ' '
        },
        'structure' => {
          'level' => 1,
          'number' => 1,
          'section_up' => {}
        }
      }
    ]
  }
};
$result_sectioning{'sections'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'sections'};

$result_errors{'sections'} = [];


$result_floats{'sections'} = {};


1;
