use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'accents'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Valid
'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'TeX',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
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
              'text' => '. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
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
              'text' => '.
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'Invalid
'
            },
            {
              'args' => [
                {
                  'contents' => [
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
                      'cmdname' => 'code',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '~',
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
              'text' => '.  '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'truc'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'anchor',
                      'contents' => [],
                      'extra' => {
                        'node_content' => [
                          {}
                        ],
                        'normalized' => 'truc'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 5,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '^',
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
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[3];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'accents'}{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'extra'}{'node_content'}[0] = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'accents'}{'contents'}[0]{'contents'}[2];
$result_trees{'accents'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'accents'}{'contents'}[0];
$result_trees{'accents'}{'contents'}[0]{'parent'} = $result_trees{'accents'};

$result_texis{'accents'} = 'Valid
@~{@TeX{}}. @~{@@}.

Invalid
@~{@code{a}}.  @^{@anchor{truc}}.
';


$result_texts{'accents'} = 'Valid
TeX~. @~.

Invalid
a~.  ^.
';

$result_errors{'accents'} = [
  {
    'error_line' => 'warning: @code should not appear in @~
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@code should not appear in @~',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear in @^
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@anchor should not appear in @^',
    'type' => 'warning'
  }
];


$result_floats{'accents'} = {};


1;
