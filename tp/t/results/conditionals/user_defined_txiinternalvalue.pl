use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'user_defined_txiinternalvalue'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'txiinternalvalue',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'user internalvalue',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'macro'
                    }
                  ],
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {}
            }
          ],
          'extra' => {
            'arg_line' => ' txiinternalvalue
'
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
          'type' => 'empty_line_after_command'
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
              'text' => 'user internalvalue
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[3];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'user_defined_txiinternalvalue'}{'contents'}[0];
$result_trees{'user_defined_txiinternalvalue'}{'contents'}[0]{'parent'} = $result_trees{'user_defined_txiinternalvalue'};

$result_texis{'user_defined_txiinternalvalue'} = '@macro txiinternalvalue
user internalvalue
@end macro

user internalvalue
';


$result_texts{'user_defined_txiinternalvalue'} = '
user internalvalue
';

$result_errors{'user_defined_txiinternalvalue'} = [];


$result_floats{'user_defined_txiinternalvalue'} = {};


1;
