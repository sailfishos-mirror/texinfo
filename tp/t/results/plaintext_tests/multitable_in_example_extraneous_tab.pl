use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'multitable_in_example_extraneous_tab'} = {
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => '
'
                  },
                  'parent' => {},
                  'type' => 'block_line_arg'
                }
              ],
              'cmdname' => 'multitable',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'ita '
                                }
                              ],
                              'parent' => {},
                              'type' => 'preformatted'
                            },
                            {
                              'contents' => [
                                {
                                  'extra' => {
                                    'associated_missing_cmdname' => 'tab'
                                  },
                                  'parent' => {},
                                  'text' => ' ',
                                  'type' => 'empty_spaces_after_command'
                                },
                                {
                                  'parent' => {},
                                  'text' => 'tmp
'
                                }
                              ],
                              'parent' => {},
                              'type' => 'preformatted'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 1,
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 3,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'row_number' => 1
                      },
                      'parent' => {},
                      'type' => 'row'
                    },
                    {
                      'contents' => [
                        {
                          'cmdname' => 'item',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'parent' => {},
                                  'text' => 'secit '
                                }
                              ],
                              'parent' => {},
                              'type' => 'preformatted'
                            },
                            {
                              'extra' => {
                                'associated_missing_cmdname' => 'tab'
                              },
                              'parent' => {},
                              'text' => '
',
                              'type' => 'empty_line_after_command'
                            }
                          ],
                          'extra' => {
                            'cell_number' => 1,
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'source_info' => {
                            'file_name' => '',
                            'line_nr' => 4,
                            'macro' => ''
                          }
                        }
                      ],
                      'extra' => {
                        'row_number' => 2
                      },
                      'parent' => {},
                      'type' => 'row'
                    }
                  ],
                  'parent' => {},
                  'type' => 'multitable_body'
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'multitable'
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
                    'text_arg' => 'multitable'
                  },
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 5,
                    'macro' => ''
                  }
                }
              ],
              'extra' => {
                'max_columns' => 1,
                'prototypes' => [
                  {
                    'text' => 'a',
                    'type' => 'row_prototype'
                  }
                ],
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 2,
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
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0];
$result_trees{'multitable_in_example_extraneous_tab'}{'contents'}[0]{'parent'} = $result_trees{'multitable_in_example_extraneous_tab'};

$result_texis{'multitable_in_example_extraneous_tab'} = '@example
@multitable a
@item ita  tmp
@item secit 
@end multitable
@end example
';


$result_texts{'multitable_in_example_extraneous_tab'} = 'ita tmp
secit ';

$result_errors{'multitable_in_example_extraneous_tab'} = [
  {
    'error_line' => 'too many columns in multitable item (max 1)
',
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'too many columns in multitable item (max 1)',
    'type' => 'error'
  },
  {
    'error_line' => 'too many columns in multitable item (max 1)
',
    'file_name' => '',
    'line_nr' => 4,
    'macro' => '',
    'text' => 'too many columns in multitable item (max 1)',
    'type' => 'error'
  }
];


$result_floats{'multitable_in_example_extraneous_tab'} = {};



$result_converted{'plaintext'}->{'multitable_in_example_extraneous_tab'} = '     ita
     tmp
     secit
';

1;
