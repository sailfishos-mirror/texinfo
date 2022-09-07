use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'double_exdent'} = {
  'contents' => [
    {
      'contents' => [
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Example   Hoho.
'
                }
              ],
              'parent' => {},
              'type' => 'preformatted'
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
              'cmdname' => 'example',
              'contents' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Nested Other line
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'preformatted'
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
                                  'text' => 'double  exdented nested other line'
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
                        }
                      ],
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
                          'text' => 'example'
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
                    'text_arg' => 'example'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 6,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'end_command' => {}
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 1,
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
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'extra'}{'end_command'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'double_exdent'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'double_exdent'}{'contents'}[0];
$result_trees{'double_exdent'}{'contents'}[0]{'parent'} = $result_trees{'double_exdent'};

$result_texis{'double_exdent'} = '@example
Example   Hoho.
@example
Nested Other line
@exdent @exdent double  exdented nested other line
@end example
@end example
';


$result_texts{'double_exdent'} = 'Example   Hoho.
Nested Other line
double  exdented nested other line
';

$result_errors{'double_exdent'} = [
  {
    'error_line' => 'warning: @exdent should not appear in @exdent
',
    'file_name' => '',
    'line_nr' => 5,
    'macro' => '',
    'text' => '@exdent should not appear in @exdent',
    'type' => 'warning'
  }
];


$result_floats{'double_exdent'} = {};


1;
