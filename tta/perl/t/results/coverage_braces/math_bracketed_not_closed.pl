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
              'cmdname' => 'math',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '{x^i}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      },
                      'type' => 'balanced_braces'
                    },
                    {
                      'text' => '\\over'
                    },
                    {
                      'contents' => [
                        {
                          'text' => '{\\tan '
                        },
                        {
                          'text' => '}'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      },
                      'type' => 'balanced_braces'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'math_bracketed_not_closed'} = '@math{{x^i}\\over{\\tan }}';


$result_texts{'math_bracketed_not_closed'} = '{x^i}\\over{\\tan }';

$result_errors{'math_bracketed_not_closed'} = [
  {
    'error_line' => 'misplaced {
',
    'line_nr' => 1,
    'text' => 'misplaced {',
    'type' => 'error'
  },
  {
    'error_line' => '@math missing closing brace
',
    'line_nr' => 1,
    'text' => '@math missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'math_bracketed_not_closed'} = {};


1;
