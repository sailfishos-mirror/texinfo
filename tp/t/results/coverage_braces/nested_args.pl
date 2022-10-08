use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'nested_args'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => ' '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in samp'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'samp',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'descr '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'in b'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'b',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'S'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'e'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => '~',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => 'ction'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'manual'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'cite',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 2,
                        'macro' => ''
                      }
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' 
'
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'xref',
              'extra' => {
                'node_argument' => {
                  'node_content' => [
                    {},
                    {},
                    {}
                  ]
                }
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '.'
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
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[1]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[1];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[1]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'contents'}[2]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[2]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[3]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[0] = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[1] = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_argument'}{'node_content'}[2] = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'nested_args'}{'contents'}[0]{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'nested_args'}{'contents'}[0];
$result_trees{'nested_args'}{'contents'}[0]{'parent'} = $result_trees{'nested_args'};

$result_texis{'nested_args'} = '@xref{@@ @samp{in samp}, descr @b{in b}, S@~{e}ction, 
@cite{manual}}.';


$result_texts{'nested_args'} = '@ in samp.';

$result_errors{'nested_args'} = [];


$result_floats{'nested_args'} = {};



$result_converted{'plaintext'}->{'nested_args'} = '*Note descr in b: (‘manual’)@ in samp.
';


$result_converted{'html_text'}->{'nested_args'} = '<p>See <a data-manual="manual" href="manual.html#g_t_0040-in-samp">(manual)S&#7869;ction</a>.</p>';


$result_converted{'latex_text'}->{'nested_args'} = 'See Section ``S\\~{e}ction\'\' in \\texttt{\\Texinfocommandstyletextcite{manual}}.';

1;
