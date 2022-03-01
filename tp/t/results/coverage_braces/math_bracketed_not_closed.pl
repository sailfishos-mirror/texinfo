use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'math_bracketed_not_closed'} = {
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'x^i'
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    },
                    {
                      'parent' => {},
                      'text' => '\\over'
                    },
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => '\\tan '
                        }
                      ],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      },
                      'type' => 'bracketed'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'math',
              'contents' => [],
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
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'}{'contents'}[0];
$result_trees{'math_bracketed_not_closed'}{'contents'}[0]{'parent'} = $result_trees{'math_bracketed_not_closed'};

$result_texis{'math_bracketed_not_closed'} = '@math{{x^i}\\over{\\tan }}';


$result_texts{'math_bracketed_not_closed'} = '{x^i}\\over{\\tan }';

$result_errors{'math_bracketed_not_closed'} = [
  {
    'error_line' => 'misplaced {
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => '@math missing closing brace
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => '@math missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'math_bracketed_not_closed'} = {};


1;
