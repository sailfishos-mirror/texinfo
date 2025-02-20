use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_brace_space_end_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'c'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'TeX',
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => 'text
'
            },
            {
              'cmdname' => 'code',
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 5
              }
            },
            {
              'text' => 'Arg.'
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

$result_texis{'no_brace_space_end_line'} = '@code {c}.

@TeX
text
@code
Arg.';


$result_texts{'no_brace_space_end_line'} = 'c.

TeXtext
Arg.';

$result_errors{'no_brace_space_end_line'} = [
  {
    'error_line' => 'warning: command `@TeX\' must not be followed by new line
',
    'line_nr' => 3,
    'text' => 'command `@TeX\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@TeX expected braces
',
    'line_nr' => 4,
    'text' => '@TeX expected braces',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command `@code\' must not be followed by new line
',
    'line_nr' => 5,
    'text' => 'command `@code\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 6,
    'text' => '@code expected braces',
    'type' => 'error'
  }
];


$result_floats{'no_brace_space_end_line'} = {};


1;
