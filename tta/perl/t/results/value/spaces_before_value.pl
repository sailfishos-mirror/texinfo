use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'spaces_before_value'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'set',
          'contents' => [
            {
              'text' => 'var',
              'type' => 'rawline_arg'
            },
            {
              'text' => 'val',
              'type' => 'rawline_arg'
            }
          ],
          'info' => {
            'arg_line' => ' var val
'
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'source_marks' => [
                {
                  'counter' => 1,
                  'element' => {
                    'cmdname' => 'value',
                    'contents' => [
                      {
                        'contents' => [
                          {
                            'text' => 'var'
                          }
                        ],
                        'type' => 'brace_container'
                      }
                    ],
                    'info' => {
                      'spaces_after_cmd_before_arg' => {
                        'text' => '  '
                      }
                    }
                  },
                  'line' => 'val',
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'start'
                },
                {
                  'counter' => 1,
                  'position' => 3,
                  'sourcemark_type' => 'value_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'val
'
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

$result_texis{'spaces_before_value'} = '@set var val

val
';


$result_texts{'spaces_before_value'} = '
val
';

$result_errors{'spaces_before_value'} = [];


$result_floats{'spaces_before_value'} = {};


1;
