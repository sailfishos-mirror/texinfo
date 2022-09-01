use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'insert_copying_and_paragraph'} = {
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'In copying.
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'copying'
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
                'command_argument' => 'copying',
                'spaces_before_argument' => ' ',
                'text_arg' => 'copying'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Insertcopying
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'insertcopying',
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 6,
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
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[2];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[3];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'insert_copying_and_paragraph'}{'contents'}[0];
$result_trees{'insert_copying_and_paragraph'}{'contents'}[0]{'parent'} = $result_trees{'insert_copying_and_paragraph'};

$result_texis{'insert_copying_and_paragraph'} = '@copying
In copying.
@end copying

Insertcopying
@insertcopying
';


$result_texts{'insert_copying_and_paragraph'} = '
Insertcopying
';

$result_errors{'insert_copying_and_paragraph'} = [];


$result_floats{'insert_copying_and_paragraph'} = {};



$result_converted{'plaintext'}->{'insert_copying_and_paragraph'} = 'Insertcopying
   In copying.
';

1;
