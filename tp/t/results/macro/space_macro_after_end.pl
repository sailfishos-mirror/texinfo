use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'space_macro_after_end'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'spaces',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'parent' => {},
              'text' => '  ',
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
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'arg_line' => ' spaces
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
          'cmdname' => 'html',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in html
'
                }
              ],
              'parent' => {},
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '   '
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'html'
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
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'space_macro_after_end'}{'contents'}[0];
$result_trees{'space_macro_after_end'}{'contents'}[0]{'parent'} = $result_trees{'space_macro_after_end'};

$result_texis{'space_macro_after_end'} = '@macro spaces
  
@end macro

@html
in html
@end html   ';


$result_texts{'space_macro_after_end'} = '
';

$result_errors{'space_macro_after_end'} = [];


$result_floats{'space_macro_after_end'} = {};


1;
