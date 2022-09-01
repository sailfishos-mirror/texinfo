use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'one_argument_leading_trailing_spaces'} = {
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
                      'text' => ' in code '
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
                'line_nr' => 1,
                'macro' => ''
              }
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
                      'text' => ' in slanted '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'slanted',
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' var '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'var',
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' sub '
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sub',
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
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'a-b c-d'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'hyphenation',
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
              'text' => '
',
              'type' => 'empty_spaces_after_close_brace'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'http://example.com'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'indicateurl',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
                      'text' => '1234'
                    }
                  ],
                  'extra' => {
                    'spaces_after_argument' => ' ',
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'U',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
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
                      'text' => ' w '
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
                'line_nr' => 3,
                'macro' => ''
              }
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
                      'text' => ' verb ',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'contents' => [],
              'extra' => {
                'delimiter' => ':'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
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
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[4];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[6];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[8];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[10];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[12];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[14];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'args'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[16];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[16]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[17]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0];
$result_trees{'one_argument_leading_trailing_spaces'}{'contents'}[0]{'parent'} = $result_trees{'one_argument_leading_trailing_spaces'};

$result_texis{'one_argument_leading_trailing_spaces'} = '@code{ in code } @slanted{ in slanted } @var{ var } @sub{ sub }
@hyphenation{ a-b c-d }
@indicateurl{ http://example.com } @U{ 1234 } @w{ w } @verb{: verb :}.
';


$result_texts{'one_argument_leading_trailing_spaces'} = ' in code   in slanted   var   sub 
http://example.com 1234  w   verb .
';

$result_errors{'one_argument_leading_trailing_spaces'} = [];


$result_floats{'one_argument_leading_trailing_spaces'} = {};



$result_converted{'plaintext'}->{'one_argument_leading_trailing_spaces'} = '‘ in code ’ in slanted VAR _{ sub } ‘http://example.com’ ሴ  w   verb .
';


$result_converted{'html_text'}->{'one_argument_leading_trailing_spaces'} = '<p><code class="code"> in code </code> <i class="slanted"> in slanted </i> <var class="var"> var </var> <sub class="sub"> sub </sub>
&lsquo;<code class="indicateurl">http://example.com</code>&rsquo; &#x1234; &nbsp;w&nbsp;<!-- /@w --> <code class="verb"> verb </code>.
</p>';


$result_converted{'latex_text'}->{'one_argument_leading_trailing_spaces'} = '\\texttt{\\ in code } \\textsl{ in slanted } \\GNUTexinfocommandstyletextvar{ var } \\textsubscript{ sub }
\\hyphenation{a-b c-d}`\\texttt{http://example.com}\' ሴ \\hbox{ w } \\verb: verb :.
';

1;
