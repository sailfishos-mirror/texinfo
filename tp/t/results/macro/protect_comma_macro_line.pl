use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_comma_macro_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'macrotwo',
              'type' => 'macro_name'
            },
            {
              'parent' => {},
              'text' => 'arg',
              'type' => 'macro_arg'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => 'we get \\arg\\ and another \\arg\\
',
              'type' => 'raw'
            },
            {
              'parent' => {},
              'text' => 'and another one on another line \\arg\\
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
              'parent' => {},
              'text' => 'and a last in another paragraph
',
              'type' => 'raw'
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
                'text_arg' => 'macro'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' macrotwo { arg }
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
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'we get arg,  comma \\, and another arg,  comma \\,
'
            },
            {
              'parent' => {},
              'text' => 'and another one on another line arg,  comma \\,
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
              'text' => 'and a last in another paragraph
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
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[2];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[4];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'protect_comma_macro_line'}{'contents'}[0];
$result_trees{'protect_comma_macro_line'}{'contents'}[0]{'parent'} = $result_trees{'protect_comma_macro_line'};

$result_texis{'protect_comma_macro_line'} = '@macro macrotwo { arg }
we get \\arg\\ and another \\arg\\
and another one on another line \\arg\\

and a last in another paragraph
@end macro

we get arg,  comma \\, and another arg,  comma \\,
and another one on another line arg,  comma \\,

and a last in another paragraph
';


$result_texts{'protect_comma_macro_line'} = '
we get arg,  comma \\, and another arg,  comma \\,
and another one on another line arg,  comma \\,

and a last in another paragraph
';

$result_errors{'protect_comma_macro_line'} = [];


$result_floats{'protect_comma_macro_line'} = {};


1;
