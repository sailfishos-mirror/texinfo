use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'text_before_after'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'before '
            },
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
                  'text' => 'in macro',
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
                'arg_line' => ' mymacro
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
              'text' => ' ',
              'type' => 'empty_spaces_after_command'
            },
            {
              'parent' => {},
              'text' => 'after
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
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0];
$result_trees{'text_before_after'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'text_before_after'}{'contents'}[0];
$result_trees{'text_before_after'}{'contents'}[0]{'parent'} = $result_trees{'text_before_after'};

$result_texis{'text_before_after'} = 'before @macro mymacro
in macro
@end macro after
';


$result_texts{'text_before_after'} = 'before after
';

$result_errors{'text_before_after'} = [
  {
    'error_line' => 'warning: @macro should only appear at the beginning of a line
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@macro should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: superfluous argument to @end macro:  after
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'superfluous argument to @end macro:  after',
    'type' => 'warning'
  }
];


$result_floats{'text_before_after'} = {};


1;
