use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
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
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' in code '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'slanted',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' in slanted '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'var',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' var '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'sub',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' sub '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'hyphenation',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a-b c-d'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => '
',
              'type' => 'spaces_after_close_brace'
            },
            {
              'cmdname' => 'indicateurl',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' http://example.com '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'U',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '1234'
                    }
                  ],
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'w',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' w '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'verb',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' verb ',
                      'type' => 'raw'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'delimiter' => ':'
              },
              'source_info' => {
                'line_nr' => 3
              }
            },
            {
              'text' => '.
'
            },
            {
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' e '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' a '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' i '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => ' '
            },
            {
              'cmdname' => 'tieaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' bb '
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              }
            },
            {
              'text' => '
'
            },
            {
              'cmdname' => 'aa',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' i '
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
              'text' => ' '
            },
            {
              'cmdname' => 'enddots',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => ' ei '
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
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'one_argument_leading_trailing_spaces'} = '@code{ in code } @slanted{ in slanted } @var{ var } @sub{ sub }
@hyphenation{ a-b c-d }
@indicateurl{ http://example.com } @U{ 1234 } @w{ w } @verb{: verb :}.
@^{ e } @ringaccent{ a } @dotless{ i } @tieaccent{ bb }
@aa{ i } @enddots{ ei }
';


$result_texts{'one_argument_leading_trailing_spaces'} = ' in code   in slanted   var   sub 
 http://example.com  1234  w   verb .
 e ^  a *  i   bb [
aa ...
';

$result_errors{'one_argument_leading_trailing_spaces'} = [
  {
    'error_line' => '@dotless expects `i\' or `j\' as argument, not ` i \'
',
    'line_nr' => 4,
    'text' => '@dotless expects `i\' or `j\' as argument, not ` i \'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: command @aa does not accept arguments
',
    'line_nr' => 5,
    'text' => 'command @aa does not accept arguments',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command @enddots does not accept arguments
',
    'line_nr' => 5,
    'text' => 'command @enddots does not accept arguments',
    'type' => 'warning'
  }
];


$result_floats{'one_argument_leading_trailing_spaces'} = {};



$result_converted{'plaintext'}->{'one_argument_leading_trailing_spaces'} = '‘ in code ’ in slanted VAR _{ sub } ‘ http://example.com ’ ሴ  w   verb .
e ̂ a ̊ i bb ͡ å ...
';


$result_converted{'html_text'}->{'one_argument_leading_trailing_spaces'} = '<p><code class="code"> in code </code> <i class="slanted"> in slanted </i> <var class="var"> var </var> <sub class="sub"> sub </sub>
&lsquo;<code class="indicateurl"> http://example.com </code>&rsquo; &#x1234; &nbsp;w&nbsp;<!-- /@w --> <code class="verb">&nbsp;verb&nbsp;</code>.
 e &#770;  a &#778;  i   bb &#865;
&aring; <small class="enddots">...</small>
</p>';


$result_converted{'latex_text'}->{'one_argument_leading_trailing_spaces'} = '\\texttt{\\ in code } \\textsl{ in slanted } \\Texinfocommandstyletextvar{ var } \\textsubscript{ sub }
\\hyphenation{a-b c-d}`\\texttt{\\ http://example.com }\' ሴ \\hbox{ w } \\verb: verb :.
\\^{ e } \\r{ a }  i  \\t{ bb }
\\aa{} \\dots{}
';


$result_converted{'docbook'}->{'one_argument_leading_trailing_spaces'} = '<para><literal> in code </literal>  in slanted  <replaceable> var </replaceable> <subscript> sub </subscript>
<literal> http://example.com </literal> &#x1234; &amp;#160;w&amp;#160;<!-- /@w --> <literal> verb </literal>.
 e &#770;  a &#778;  i   bb &#865;
&#229; ...
</para>';

1;
