use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'macro_in_ifset_set'} = {
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
              'text' => 'a',
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
            'arg_line' => ' a
',
            'misc_args' => [
              'a',
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
              'parent' => {},
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'truc',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' truc {}
'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          },
          'parent' => {}
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
          'args' => [
            {
              'parent' => {},
              'text' => 'truc',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'unmacro',
          'extra' => {
            'arg_line' => ' truc
',
            'misc_args' => [
              'truc'
            ]
          },
          'parent' => {}
        },
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'truc',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'in ifset',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'last_raw_newline'
            }
          ],
          'extra' => {
            'arg_line' => ' truc{}
'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          },
          'parent' => {}
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
              'text' => 'in ifset
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
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'args'}[1]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[1];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[6];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[10];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'macro_in_ifset_set'}{'contents'}[0];
$result_trees{'macro_in_ifset_set'}{'contents'}[0]{'parent'} = $result_trees{'macro_in_ifset_set'};

$result_texis{'macro_in_ifset_set'} = '
@set a

@macro truc {}
truc
@end macro

@unmacro truc
@macro truc{}
in ifset
@end macro

in ifset
';


$result_texts{'macro_in_ifset_set'} = '



in ifset
';

$result_errors{'macro_in_ifset_set'} = [];


$result_floats{'macro_in_ifset_set'} = {};


1;
