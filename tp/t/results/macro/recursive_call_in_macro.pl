use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_call_in_macro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => 'anorecurse',
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
              'text' => '@anorecurse{arg}',
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
            'arg_line' => ' anorecurse{arg}
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'recursive_call_in_macro'}{'contents'}[0];
$result_trees{'recursive_call_in_macro'}{'contents'}[0]{'parent'} = $result_trees{'recursive_call_in_macro'};

$result_texis{'recursive_call_in_macro'} = '@macro anorecurse{arg}
@anorecurse{arg}
@end macro


';


$result_texts{'recursive_call_in_macro'} = '

';

$result_errors{'recursive_call_in_macro'} = [
  {
    'error_line' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed (possibly involving @anorecurse)
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => 'anorecurse',
    'text' => 'recursive call of macro anorecurse is not allowed; use @rmacro if needed',
    'type' => 'error'
  }
];


$result_floats{'recursive_call_in_macro'} = {};


1;
