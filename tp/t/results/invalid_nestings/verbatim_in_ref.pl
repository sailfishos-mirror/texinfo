use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'verbatim_in_ref'} = {
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Top'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'spaces_associated_command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => 'verbat text
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'verbatim'
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
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'verbatim'
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_spaces_before_paragraph'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '.'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
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
$result_trees{'verbatim_in_ref'}{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'};
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'args'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'extra'}{'spaces_associated_command'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[2];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[4];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'verbatim_in_ref'}{'contents'}[1];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'verbatim_in_ref'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'verbatim_in_ref'}{'contents'}[1]{'parent'} = $result_trees{'verbatim_in_ref'};

$result_texis{'verbatim_in_ref'} = '@node Top

@xref{Top, 
}@verbatim
verbat text
@end verbatim

.';


$result_texts{'verbatim_in_ref'} = '
Topverbat text
.';

$result_nodes{'verbatim_in_ref'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_menus{'verbatim_in_ref'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'verbatim_in_ref'} = [
  {
    'error_line' => 'warning: @verbatim should not appear in @xref
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => '@verbatim should not appear in @xref',
    'type' => 'warning'
  },
  {
    'error_line' => '@xref missing closing brace
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => '@xref missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'verbatim_in_ref'} = {};


1;
