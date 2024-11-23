use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'not_fraction'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'multitable',
          'contents' => [
            {
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => 'columnfractions',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'aaa'
                            }
                          ],
                          'info' => {
                            'spaces_after_argument' => {
                              'text' => '
'
                            }
                          },
                          'type' => 'line_arg'
                        }
                      ],
                      'info' => {
                        'spaces_before_argument' => {
                          'text' => ' '
                        }
                      },
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'argument'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'multitable'
                    }
                  ],
                  'type' => 'line_arg'
                }
              ],
              'extra' => {
                'text_arg' => 'multitable'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 2
              }
            }
          ],
          'extra' => {
            'max_columns' => 0
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'not_fraction'} = '@multitable @columnfractions aaa
@end multitable';


$result_texts{'not_fraction'} = '';

$result_errors{'not_fraction'} = [
  {
    'error_line' => 'column fraction not a number: aaa
',
    'line_nr' => 1,
    'text' => 'column fraction not a number: aaa',
    'type' => 'error'
  }
];


$result_floats{'not_fraction'} = {};


1;
