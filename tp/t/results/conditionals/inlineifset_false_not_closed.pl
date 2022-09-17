use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlineifset_false_not_closed'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'aaa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'parent' => {},
                  'type' => 'elided'
                }
              ],
              'cmdname' => 'inlineifset',
              'extra' => {
                'format' => 'aaa'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
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
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'inlineifset_false_not_closed'}{'contents'}[0];
$result_trees{'inlineifset_false_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'inlineifset_false_not_closed'};

$result_texis{'inlineifset_false_not_closed'} = '@inlineifset{aaa,}';


$result_texts{'inlineifset_false_not_closed'} = '';

$result_errors{'inlineifset_false_not_closed'} = [
  {
    'error_line' => '@inlineifset missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@inlineifset missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'inlineifset_false_not_closed'} = {};


1;
