use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'node_on_index_entry_line'} = {
  'contents' => [
    {
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
                  'text' => 'entry'
                }
              ],
              'info' => {
                'spaces_after_argument' => ' '
              },
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'content_normalized' => [],
              'entry_content' => [],
              'entry_element' => {},
              'entry_number' => 1,
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex'
            }
          },
          'info' => {
            'spaces_before_argument' => ' '
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'type' => 'index_entry_command'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'text' => 'a'
            }
          ],
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => '('
            },
            {
              'text' => 'm'
            },
            {
              'text' => ')'
            },
            {
              'text' => 'b'
            }
          ],
          'info' => {
            'spaces_before_argument' => ' '
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => '('
            },
            {
              'text' => 'm'
            },
            {
              'text' => ')'
            },
            {
              'text' => 'c'
            }
          ],
          'info' => {
            'spaces_before_argument' => ' '
          },
          'type' => 'line_arg'
        },
        {
          'contents' => [
            {
              'text' => '('
            },
            {
              'text' => 'h'
            },
            {
              'text' => ')'
            },
            {
              'text' => 'd'
            }
          ],
          'info' => {
            'spaces_after_argument' => '
',
            'spaces_before_argument' => ' '
          },
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'node',
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Content
'
            }
          ],
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
            'normalized' => 'a'
          },
          {
            'manual_content' => [
              {}
            ],
            'node_content' => [
              {}
            ],
            'normalized' => 'b'
          },
          {
            'manual_content' => [
              {}
            ],
            'node_content' => [
              {}
            ],
            'normalized' => 'c'
          },
          {
            'manual_content' => [
              {}
            ],
            'node_content' => [
              {}
            ],
            'normalized' => 'd'
          }
        ],
        'normalized' => 'a'
      },
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
$result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_content'} = $result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'};
$result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1]{'extra'}{'index_entry'}{'entry_element'} = $result_trees{'node_on_index_entry_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'manual_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[1]{'contents'}[1];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[1]{'node_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[1]{'contents'}[3];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[2]{'manual_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[2]{'contents'}[1];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[2]{'node_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[2]{'contents'}[3];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'manual_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[3]{'contents'}[1];
$result_trees{'node_on_index_entry_line'}{'contents'}[1]{'extra'}{'nodes_manuals'}[3]{'node_content'}[0] = $result_trees{'node_on_index_entry_line'}{'contents'}[1]{'args'}[3]{'contents'}[3];

$result_texis{'node_on_index_entry_line'} = '
@cindex entry @node a, (m)b, (m)c, (h)d

Content
';


$result_texts{'node_on_index_entry_line'} = '

Content
';

$result_nodes{'node_on_index_entry_line'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a'
  },
  'info' => {},
  'structure' => {
    'node_next' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'm'
          }
        ],
        'normalized' => 'b'
      }
    },
    'node_prev' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'm'
          }
        ],
        'normalized' => 'c'
      }
    },
    'node_up' => {
      'extra' => {
        'manual_content' => [
          {
            'text' => 'h'
          }
        ],
        'normalized' => 'd'
      }
    }
  }
};

$result_menus{'node_on_index_entry_line'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'a'
  },
  'info' => {},
  'structure' => {}
};

$result_errors{'node_on_index_entry_line'} = [
  {
    'error_line' => 'warning: @node should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@node should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node should not appear in @cindex
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => '@node should not appear in @cindex',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 2,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'node_on_index_entry_line'} = {};


$result_indices_sort_strings{'node_on_index_entry_line'} = {
  'cp' => [
    'entry'
  ]
};


1;
