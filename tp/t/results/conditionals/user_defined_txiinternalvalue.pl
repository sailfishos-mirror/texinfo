use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'user_defined_txiinternalvalue'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'text' => 'txiinternalvalue',
              'type' => 'macro_name'
            }
          ],
          'cmdname' => 'macro',
          'contents' => [
            {
              'text' => 'user internalvalue
',
              'type' => 'raw'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'macro'
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
                'text_arg' => 'macro'
              },
              'info' => {
                'spaces_before_argument' => ' '
              },
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'info' => {
            'arg_line' => ' txiinternalvalue
'
          },
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
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
                  'location' => 'text',
                  'position' => 18,
                  'sourcemark_type' => 'macro_expansion',
                  'status' => 'end'
                }
              ],
              'text' => 'user internalvalue
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'source_marks' => [
        {
          'counter' => 1,
          'element' => {
            'extra' => {
              'name' => 'txiinternalvalue'
            },
            'type' => 'macro_call'
          },
          'location' => 'text',
          'position' => 0,
          'sourcemark_type' => 'macro_expansion',
          'status' => 'start'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'user_defined_txiinternalvalue'} = '@macro txiinternalvalue
user internalvalue
@end macro

user internalvalue
';


$result_texts{'user_defined_txiinternalvalue'} = '
user internalvalue
';

$result_errors{'user_defined_txiinternalvalue'} = [];


$result_floats{'user_defined_txiinternalvalue'} = {};


1;
