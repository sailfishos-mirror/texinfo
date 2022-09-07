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
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Before samp. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'samp',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '. after samp, w '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'in   w. after dot'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'w',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '  afterw
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'before samp. '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'a'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '. after samp, w '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in   w. after dot'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'w',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '  afterw'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'exdent',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'line_arg'
                }
              ],
              'cmdname' => 'end',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
                'macro' => ''
              }
            }
          ],
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 4,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[3];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'contents'}[4]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[1];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'protect_spaces_on_line'}{'contents'}[0];
$result_trees{'protect_spaces_on_line'}{'contents'}[0]{'parent'} = $result_trees{'protect_spaces_on_line'};

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



$result_converted{'plaintext'}->{'protect_spaces_on_line'} = 'Before samp.  ‘a’.  after samp, w in   w. after dot afterw

before samp.  ‘a’.  after samp, w in   w. after dot afterw
';

1;
