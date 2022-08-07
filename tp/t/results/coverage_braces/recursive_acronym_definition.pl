use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'recursive_acronym_definition'} = {
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
                      'parent' => {},
                      'text' => 'GNU'
                    }
                  ],
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
                              'text' => 'GNU'
                            }
                          ],
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
                                      'text' => 'GNU'
                                    }
                                  ],
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                },
                                {
                                  'contents' => [
                                    {
                                      'parent' => {},
                                      'text' => 'is something'
                                    }
                                  ],
                                  'extra' => {
                                    'spaces_before_argument' => ' '
                                  },
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'acronym',
                              'contents' => [],
                              'parent' => {},
                              'source_info' => {
                                'file_name' => '',
                                'line_nr' => 1,
                                'macro' => ''
                              }
                            },
                            {
                              'parent' => {},
                              'text' => '\'s Not Unix'
                            }
                          ],
                          'extra' => {
                            'spaces_before_argument' => ' '
                          },
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'acronym',
                      'contents' => [],
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '\'s Not Unix'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'acronym',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
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
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'}{'contents'}[0];
$result_trees{'recursive_acronym_definition'}{'contents'}[0]{'parent'} = $result_trees{'recursive_acronym_definition'};

$result_texis{'recursive_acronym_definition'} = '@acronym{GNU, @acronym{GNU, @acronym{GNU, is something}\'s Not Unix}\'s Not Unix}
';


$result_texts{'recursive_acronym_definition'} = 'GNU (GNU (GNU (is something)\'s Not Unix)\'s Not Unix)
';

$result_errors{'recursive_acronym_definition'} = [];


$result_floats{'recursive_acronym_definition'} = {};



$result_converted{'plaintext'}->{'recursive_acronym_definition'} = 'GNU (GNU (GNU (is something)’s Not Unix)’s Not Unix)
';


$result_converted{'html_text'}->{'recursive_acronym_definition'} = '<p><abbr class="acronym" title="GNU (GNU (is something)&rsquo;s Not Unix)&rsquo;s Not Unix">GNU</abbr> (<abbr class="acronym" title="GNU (is something)&rsquo;s Not Unix">GNU</abbr> (<abbr class="acronym" title="is something">GNU</abbr> (is something)&rsquo;s Not Unix)&rsquo;s Not Unix)
</p>';

1;
