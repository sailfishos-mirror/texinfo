use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'prototype_brace_no_brace_comment'} = {
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
                      'contents' => [
                        {
                          'text' => 'aa'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      },
                      'type' => 'bracketed_arg'
                    },
                    {
                      'text' => ' bb'
                    }
                  ],
                  'info' => {
                    'comment_at_end' => {
                      'cmdname' => 'comment',
                      'contents' => [
                        {
                          'text' => ' cc
',
                          'type' => 'rawline_arg'
                        }
                      ]
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
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
            'max_columns' => 1
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

$result_texis{'prototype_brace_no_brace_comment'} = '@multitable {aa} bb@comment cc
@end multitable
';


$result_texts{'prototype_brace_no_brace_comment'} = '';

$result_errors{'prototype_brace_no_brace_comment'} = [];


$result_floats{'prototype_brace_no_brace_comment'} = {};



$result_converted{'plaintext'}->{'prototype_brace_no_brace_comment'} = '';


$result_converted{'html_text'}->{'prototype_brace_no_brace_comment'} = '';


$result_converted{'xml'}->{'prototype_brace_no_brace_comment'} = '<multitable spaces=" " endspaces=" "><columnprototypes><columnprototype bracketed="on">aa</columnprototype> bb</columnprototypes><!-- comment cc -->
</multitable>
';

1;
