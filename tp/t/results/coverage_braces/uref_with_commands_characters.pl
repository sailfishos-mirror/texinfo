use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'uref_with_commands_characters'} = {
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
                      'text' => 'http://my-host.com/~'
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'toto'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'strong',
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 1,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => '%5Cs\'q"a&e?b'
                    },
                    {
                      'cmdname' => '}',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'b'
                    },
                    {
                      'cmdname' => '{',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'ba'
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 's\\s p+h#aaa'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'see that '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'args' => [
                                {
                                  'parent' => {},
                                  'type' => 'brace_command_arg'
                                }
                              ],
                              'cmdname' => 'LaTeX',
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
                        }
                      ],
                      'cmdname' => 'strong',
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
                }
              ],
              'cmdname' => 'uref',
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
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'};

$result_texis{'uref_with_commands_characters'} = '@uref{http://my-host.com/~@strong{toto}%5Cs\'q"a&e?b@}b@{ba@@s\\s p+h#aaa, see that @strong{@LaTeX{}}}
';


$result_texts{'uref_with_commands_characters'} = 'http://my-host.com/~toto%5Cs\'q"a&e?b}b{ba@s\\s p+h#aaa (see that LaTeX)
';

$result_errors{'uref_with_commands_characters'} = [];


$result_floats{'uref_with_commands_characters'} = {};



$result_converted{'plaintext'}->{'uref_with_commands_characters'} = 'see that *LaTeX* (http://my-host.com/~*toto*%5Cs\'q"a&e?b}b{ba@s\\s
p+h#aaa)
';


$result_converted{'html_text'}->{'uref_with_commands_characters'} = '<p><a class="uref" href="http://my-host.com/~toto%5Cs\'q%22a&amp;e?b%7db%7bba@s%5cs%20p+h#aaa">see that <strong class="strong">LaTeX</strong></a>
</p>';


$result_converted{'latex_text'}->{'uref_with_commands_characters'} = '\\href{http://my-host.com/~toto\\%5Cs\'q"a&e?b\\}b\\{ba@s\\\\s p+h\\#aaa}{see that \\textbf{\\LaTeX{}} (\\nolinkurl{http://my-host.com/~toto\\%5Cs\'q"a&e?b\\}b\\{ba@s\\\\s p+h\\#aaa})}
';

1;
