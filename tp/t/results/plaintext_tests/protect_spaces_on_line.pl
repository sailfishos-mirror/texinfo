use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'protect_spaces_on_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => 'Before samp. '
            },
            {
              'cmdname' => 'samp',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => '. after samp, w '
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in   w. after dot'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => '  afterw
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
              'cmdname' => 'exdent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'before samp. '
                    },
                    {
                      'cmdname' => 'samp',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'a'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 5
                      }
                    },
                    {
                      'text' => '. after samp, w '
                    },
                    {
                      'cmdname' => 'w',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'in   w. after dot'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 5
                      }
                    },
                    {
                      'text' => '  afterw'
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
                'line_nr' => 5
              }
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'quotation'
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
                'text_arg' => 'quotation'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'source_info' => {
            'line_nr' => 4
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'protect_spaces_on_line'} = '
Before samp. @samp{a}. after samp, w @w{in   w. after dot}  afterw

@quotation
@exdent before samp. @samp{a}. after samp, w @w{in   w. after dot}  afterw
@end quotation
';


$result_texts{'protect_spaces_on_line'} = '
Before samp. a. after samp, w in   w. after dot  afterw

before samp. a. after samp, w in   w. after dot  afterw
';

$result_errors{'protect_spaces_on_line'} = [];


$result_floats{'protect_spaces_on_line'} = {};



$result_converted{'plaintext'}->{'protect_spaces_on_line'} = 'Before samp.  ‘a’.  after samp, w in w.  after dot afterw

before samp.  ‘a’.  after samp, w in w.  after dot afterw
';

1;
