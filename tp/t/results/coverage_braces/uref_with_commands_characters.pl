use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'uref_with_commands_characters'} = {
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
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
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
                              'contents' => [],
                              'parent' => {},
                              'type' => 'brace_command_arg'
                            }
                          ],
                          'cmdname' => 'LaTeX',
                          'contents' => [],
                          'line_nr' => {
                            'file_name' => '',
                            'line_nr' => 1,
                            'macro' => ''
                          },
                          'parent' => {}
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'strong',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 1,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
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
  'type' => 'text_root'
};
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[6]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[7]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[8]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'args'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0];
$result_trees{'uref_with_commands_characters'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'uref_with_commands_characters'}{'contents'}[0];
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


$result_converted{'html_text'}->{'uref_with_commands_characters'} = '<p><a href="http://my-host.com/~toto%5Cs\'q&quot;a&amp;e?b}b{ba@s\\s p+h#aaa">see that <strong>LaTeX</strong></a>
</p>';


$result_converted{'latex'}->{'uref_with_commands_characters'} = '\\href{http://my-host.com/~toto\\%5Cs\'q"a&e?b\\}b\\{ba@s\\\\s p+h\\#aaa}{see that \\textbf{\\LaTeX{}} (\\nolinkurl{http://my-host.com/~toto\\%5Cs\'q"a&e?b\\}b\\{ba@s\\\\s p+h\\#aaa})}
';

1;
