use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'filenameconflictwithnonsplit'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'Top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
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
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top'
      },
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
              'text' => 'top'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
'
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'text' => 'filenameconflictwithnonsplit'
                }
              ],
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'anchor',
          'extra' => {
            'node_content' => [
              {}
            ],
            'normalized' => 'filenameconflictwithnonsplit'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'spaces_after_close_brace'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'extra' => {},
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
$result_trees{'filenameconflictwithnonsplit'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'filenameconflictwithnonsplit'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'filenameconflictwithnonsplit'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'filenameconflictwithnonsplit'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'filenameconflictwithnonsplit'}{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'filenameconflictwithnonsplit'}{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];

$result_texis{'filenameconflictwithnonsplit'} = '@node Top
@top top

@anchor{filenameconflictwithnonsplit}

';


$result_texts{'filenameconflictwithnonsplit'} = 'top
***


';

$result_sectioning{'filenameconflictwithnonsplit'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            },
            'info' => {}
          }
        },
        'info' => {},
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'filenameconflictwithnonsplit'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'filenameconflictwithnonsplit'};

$result_nodes{'filenameconflictwithnonsplit'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'info' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_menus{'filenameconflictwithnonsplit'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  },
  'info' => {}
};

$result_errors{'filenameconflictwithnonsplit'} = [];


$result_floats{'filenameconflictwithnonsplit'} = {};


1;
