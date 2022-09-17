use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'simple'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'a-_5b',
              'type' => 'misc_arg'
            },
            {
              'parent' => {},
              'text' => 'the value @b{b}',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'set',
          'extra' => {
            'arg_line' => ' a-_5b the value @b{b} @c comment
',
            'misc_args' => [
              'a-_5b',
              'the value @b{b}'
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'the value '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'b',
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' After value.
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
$result_trees{'simple'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'simple'}{'contents'}[0]{'contents'}[2];
$result_trees{'simple'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'simple'}{'contents'}[0];
$result_trees{'simple'}{'contents'}[0]{'parent'} = $result_trees{'simple'};

$result_texis{'simple'} = '@set a-_5b the value @b{b} @c comment

the value @b{b} After value.
';


$result_texts{'simple'} = '
the value b After value.
';

$result_errors{'simple'} = [];


$result_floats{'simple'} = {};


1;
