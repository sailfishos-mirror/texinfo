use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node'} = {
  'contents' => [
    {
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
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
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
      'parent' => {},
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'node'}{'contents'}[0]{'parent'} = $result_trees{'node'};
$result_trees{'node'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'node'}{'contents'}[1]{'args'}[0];
$result_trees{'node'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'node'}{'contents'}[1];
$result_trees{'node'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node'}{'contents'}[1]{'parent'} = $result_trees{'node'};

$result_texis{'node'} = '@node Top';


$result_texts{'node'} = '';

$result_nodes{'node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'node'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'node'} = [];


$result_floats{'node'} = {};


1;
