use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_ifset_in_ifset_set'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'notset',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => '',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' notset
',
            'misc_args' => [
              'notset',
              ''
            ]
          },
          'parent' => {}
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
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'parent' => {},
              'text' => '@ifset
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
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
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
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0];
$result_trees{'empty_ifset_in_ifset_set'}{'contents'}[0]{'parent'} = $result_trees{'empty_ifset_in_ifset_set'};

$result_texis{'empty_ifset_in_ifset_set'} = '
@set notset

@verbatim
@ifset
@end verbatim
';


$result_texts{'empty_ifset_in_ifset_set'} = '

@ifset
';

$result_errors{'empty_ifset_in_ifset_set'} = [];


$result_floats{'empty_ifset_in_ifset_set'} = {};


1;
