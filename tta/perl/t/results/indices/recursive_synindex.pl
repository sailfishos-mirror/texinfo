use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_synindex'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'defindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aaa'
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
          'extra' => {
            'misc_args' => [
              'aaa'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'cmdname' => 'defindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'bbb'
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
          'extra' => {
            'misc_args' => [
              'bbb'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 2
          }
        },
        {
          'cmdname' => 'synindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'aaa bbb'
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
          'extra' => {
            'misc_args' => [
              'aaa',
              'bbb'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'cmdname' => 'synindex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'bbb aaa'
                }
              ],
              'type' => 'line_arg'
            }
          ],
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 4
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'recursive_synindex'} = '@defindex aaa
@defindex bbb
@synindex aaa bbb
@synindex bbb aaa';


$result_texts{'recursive_synindex'} = '';

$result_errors{'recursive_synindex'} = [
  {
    'error_line' => 'warning: @synindex leads to a merging of bbb in itself, ignoring
',
    'line_nr' => 4,
    'text' => '@synindex leads to a merging of bbb in itself, ignoring',
    'type' => 'warning'
  }
];


$result_indices{'recursive_synindex'} = {
  'index_names' => {
    'aaa' => {
      'in_code' => 0,
      'merged_in' => 'bbb',
      'name' => 'aaa'
    },
    'bbb' => {
      'in_code' => 0,
      'name' => 'bbb'
    },
    'cp' => {
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 1,
      'name' => 'vr'
    }
  }
};


$result_floats{'recursive_synindex'} = {};


1;
