use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'command_in_end_expanded_raw_command_after'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
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
          'cmdname' => 'tex',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'In TeX
'
                }
              ],
              'type' => 'rawpreformatted'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'tex'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'text' => 'asis'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'cmdname' => 'asis',
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'tex'
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

$result_texis{'command_in_end_expanded_raw_command_after'} = '@tex
In TeX
@end tex@asis{asis}
';


$result_texts{'command_in_end_expanded_raw_command_after'} = 'In TeX
';

$result_errors{'command_in_end_expanded_raw_command_after'} = [
  {
    'error_line' => 'warning: @asis should not appear in @end
',
    'line_nr' => 3,
    'text' => '@asis should not appear in @end',
    'type' => 'warning'
  },
  {
    'error_line' => 'bad argument to @end: tex@asis{asis}
',
    'line_nr' => 3,
    'text' => 'bad argument to @end: tex@asis{asis}',
    'type' => 'error'
  }
];


$result_floats{'command_in_end_expanded_raw_command_after'} = {};


1;
