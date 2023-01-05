use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_call_in_rmacro'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'text' => 'rec',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'rmacro',
          'contents' => [
            {
              'text' => '@rec{}
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'rmacro'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => '
'
                  },
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'rmacro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' rec
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'recursive_call_in_rmacro'} = '
@rmacro rec
@rec{}
@end rmacro



';


$result_texts{'recursive_call_in_rmacro'} = '



';

$result_errors{'recursive_call_in_rmacro'} = [
  {
    'error_line' => 'warning: macro call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100) (possibly involving @rec)
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => 'rec',
    'text' => 'macro call nested too deeply (set MAX_MACRO_CALL_NESTING to override; current value 100)',
    'type' => 'warning'
  }
];


$result_floats{'recursive_call_in_rmacro'} = {};


1;
