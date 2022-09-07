use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'ignored_macro_definition'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'mymacro',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'outside',
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
            'arg_line' => ' mymacro{}
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
                      'text' => 'tex'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlinefmt',
              'contents' => [],
              'extra' => {
                'format' => 'tex'
              },
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
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
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
              'text' => 'outside.
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
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[6];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'ignored_macro_definition'}{'contents'}[0];
$result_trees{'ignored_macro_definition'}{'contents'}[0]{'parent'} = $result_trees{'ignored_macro_definition'};

$result_texis{'ignored_macro_definition'} = '@macro mymacro{}
outside
@end macro


@inlinefmt{tex,}

outside.
';


$result_texts{'ignored_macro_definition'} = '



outside.
';

$result_errors{'ignored_macro_definition'} = [];


$result_floats{'ignored_macro_definition'} = {};


1;
