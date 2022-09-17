use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_ignore'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'ignore',
          'contents' => [
            {
              'parent' => {},
              'text' => '@ignore
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'ignore',
          'contents' => [
            {
              'parent' => {},
              'text' => '@end iftex
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@ifinfo
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'extra' => {
                'spaces_after_argument' => ' 
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'ignore',
          'contents' => [
            {
              'parent' => {},
              'text' => '@end ifclear
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '@ifclear
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ignore'
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
                'text_arg' => 'ignore'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[2];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4];
$result_trees{'nested_ignore'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'nested_ignore'}{'contents'}[0];
$result_trees{'nested_ignore'}{'contents'}[0]{'parent'} = $result_trees{'nested_ignore'};

$result_texis{'nested_ignore'} = '@ignore
@ignore

@end ignore

@ignore
@end iftex
@ifinfo
@end ignore

@ignore 
@end ifclear
@ifclear
@end ignore
';


$result_texts{'nested_ignore'} = '

';

$result_errors{'nested_ignore'} = [];


$result_floats{'nested_ignore'} = {};


1;
