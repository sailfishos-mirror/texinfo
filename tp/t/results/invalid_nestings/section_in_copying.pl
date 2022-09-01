use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'section_in_copying'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'copying',
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
                  'text' => 'in copying
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
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
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
              'text' => 'section'
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
      'cmdname' => 'section',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0];
$result_trees{'section_in_copying'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[0];
$result_trees{'section_in_copying'}{'contents'}[0]{'parent'} = $result_trees{'section_in_copying'};
$result_trees{'section_in_copying'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[1]{'args'}[0];
$result_trees{'section_in_copying'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'section_in_copying'}{'contents'}[1];
$result_trees{'section_in_copying'}{'contents'}[1]{'parent'} = $result_trees{'section_in_copying'};

$result_texis{'section_in_copying'} = '@copying

in copying

@section section
';


$result_texts{'section_in_copying'} = '1 section
=========
';

$result_sectioning{'section_in_copying'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {},
        'structure' => {
          'section_level' => 2,
          'section_number' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_in_copying'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'section_in_copying'};

$result_errors{'section_in_copying'} = [
  {
    'error_line' => '@section seen before @end copying
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@section seen before @end copying',
    'type' => 'error'
  }
];


$result_floats{'section_in_copying'} = {};


1;
