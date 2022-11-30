use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ignored_text'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'before ignore'
            }
          ],
          'info' => {
            'spaces_after_argument' => ' '
          },
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
            'normalized' => 'before-ignore'
          }
        ],
        'normalized' => 'before-ignore'
      },
      'info' => {
        'spaces_before_argument' => ' '
      },
      'source_info' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'ignored_text'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'ignored_text'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'ignored_text'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'ignored_text'}{'contents'}[1]{'args'}[0]{'contents'}[0];

$result_texis{'ignored_text'} = '@node before ignore ';


$result_texts{'ignored_text'} = '';

$result_nodes{'ignored_text'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'before-ignore'
  },
  'info' => {}
};

$result_menus{'ignored_text'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'before-ignore'
  },
  'info' => {}
};

$result_errors{'ignored_text'} = [
  {
    'error_line' => 'warning: @ifinfo should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@ifinfo should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: superfluous argument to @end ifinfo:  on the node line
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'superfluous argument to @end ifinfo:  on the node line',
    'type' => 'warning'
  }
];


$result_floats{'ignored_text'} = {};


1;
