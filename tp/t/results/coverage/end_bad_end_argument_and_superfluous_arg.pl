use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'end_bad_end_argument_and_superfluous_arg'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => 'In quotation
'
                },
                {
                  'cmdname' => 'end',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => ': '
                        },
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'in c'
                                }
                              ],
                              'type' => 'brace_container'
                            }
                          ],
                          'source_info' => {
                            'line_nr' => 3
                          }
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
                  'extra' => {
                    'text_arg' => ': '
                  },
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'source_info' => {
                    'line_nr' => 3
                  }
                }
              ],
              'type' => 'paragraph'
            }
          ],
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

$result_texis{'end_bad_end_argument_and_superfluous_arg'} = '@quotation
In quotation
@end : @code{in c}
';


$result_texts{'end_bad_end_argument_and_superfluous_arg'} = 'In quotation
';

$result_errors{'end_bad_end_argument_and_superfluous_arg'} = [
  {
    'error_line' => 'warning: @code should not appear in @end
',
    'line_nr' => 3,
    'text' => '@code should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: : @code{in c}
',
    'line_nr' => 3,
    'text' => 'bad argument to @end: : @code{in c}',
    'type' => 'error'
  },
  {
    'error_line' => 'no matching `@end quotation\'
',
    'line_nr' => 3,
    'text' => 'no matching `@end quotation\'',
    'type' => 'error'
  }
];


$result_floats{'end_bad_end_argument_and_superfluous_arg'} = {};


1;
