use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'commands'} = {
  'contents' => [
    {
      'contents' => [
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
                'line_nr' => 1,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'cmdname' => '
',
              'parent' => {}
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
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '"',
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
              'text' => ' '
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
                              'text' => 'i'
                            }
                          ],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'dotless',
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
              'cmdname' => '^',
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
              'text' => ' '
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
              'text' => ' '
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
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
              },
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
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'File '
                    },
                    {
                      'args' => [
                        {
                          'contents' => [],
                          'parent' => {},
                          'type' => 'brace_command_arg'
                        }
                      ],
                      'cmdname' => 'click',
                      'contents' => [],
                      'extra' => {
                        'clickstyle' => 'arrow'
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 4,
                        'macro' => ''
                      }
                    },
                    {
                      'parent' => {},
                      'text' => ' Open'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'clicksequence',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'cmdname' => '.',
              'parent' => {}
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                },
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'b'
                    }
                  ],
                  'extra' => {
                    'spaces_before_argument' => ' '
                  },
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
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
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'code --- -- \'\' ``'
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
            },
            {
              'parent' => {},
              'text' => '
'
            },
            {
              'parent' => {},
              'text' => '--- -- \'\' ``. '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'small caps'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
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
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'index entry ``in text\'\' '
                },
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
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 8,
                    'macro' => ''
                  }
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
          'cmdname' => 'cindex',
          'extra' => {
            'index_entry' => {
              'command' => {},
              'content' => [],
              'content_normalized' => [],
              'in_code' => 0,
              'index_at_command' => 'cindex',
              'index_ignore_chars' => {},
              'index_name' => 'cp',
              'index_type_command' => 'cindex',
              'number' => 1
            },
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          },
          'type' => 'index_entry_command'
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
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'majorheading '
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
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  }
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
          'cmdname' => 'majorheading',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
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
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[1]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[1];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'args'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[6]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[7]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[8];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[8]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'contents'}[9]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[2];
$result_trees{'commands'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'command'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4];
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'extra'}{'index_entry'}{'content_normalized'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'args'}[0]{'contents'};
$result_trees{'commands'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'commands'}{'contents'}[0]{'contents'}[6];
$result_trees{'commands'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'commands'}{'contents'}[0];
$result_trees{'commands'}{'contents'}[0]{'parent'} = $result_trees{'commands'};

$result_texis{'commands'} = '@@ @TeX{} @
@"e @^{@dotless{i}} @~{a} @ringaccent a

@clicksequence{File @click{} Open}@.
@email{a, b} @code{code --- -- \'\' ``}
--- -- \'\' ``. @sc{small caps}.

@cindex index entry ``in text\'\' @LaTeX{}

@majorheading majorheading @b{in b}
';


$result_texts{'commands'} = '@ TeX  e" i^ a~ a*

File -> Open.
b code --- -- \'\' ``
-- - " ". SMALL CAPS.


majorheading in b
*****************
';

$result_errors{'commands'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => '',
    'line_nr' => 8,
    'macro' => '',
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'commands'} = {};


$result_indices_sort_strings{'commands'} = {
  'cp' => [
    'index entry "in text" LaTeX'
  ]
};



$result_converted{'plaintext'}->{'commands'} = '@ TeX  ë î ã å

   File → Open.  b <a> ‘code --- -- \'\' ``’ — – ” “.  SMALL CAPS.

majorheading in b
*****************

';


$result_converted{'html_text'}->{'commands'} = '<p>@ TeX &nbsp;&euml; &icirc; &atilde; &aring;
</p>
<p>File &rarr; Open.
<a class="email" href="mailto:a">b</a> <code class="code">code --- -- \'\' ``</code>
&mdash; &ndash; &rdquo; &ldquo;. <small class="sc">SMALL CAPS</small>.
</p>
<a class="index-entry-id" id="index-index-entry-_0060_0060in-text_0027_0027-LaTeX"></a>

<h2 class="majorheading" id="majorheading-in-b">majorheading <b class="b">in b</b></h2>
';


$result_converted{'xml'}->{'commands'} = '<para>&arobase; &tex; <spacecmd type="nl"/><accent type="uml" bracketed="off">e</accent> <accent type="circ"><dotless>i</dotless></accent> <accent type="tilde">a</accent> <accent type="ring" spaces=" " bracketed="off">a</accent>
</para>
<para><clicksequence>File <click command="arrow"/> Open</clicksequence>&eosperiod;
<email><emailaddress>a</emailaddress><emailname spaces=" ">b</emailname></email> <code>code --- -- \'\' ``</code>
&textmdash; &textndash; &textrdquo; &textldquo;. <sc>small caps</sc>.
</para>
<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry &textldquo;in text&textrdquo; &latex;</indexterm></cindex>

<majorheading spaces=" ">majorheading <b>in b</b></majorheading>
';


$result_converted{'docbook'}->{'commands'} = '<para>@ &tex; &#160;&#235; &#238; &#227; &#229;
</para>
<para>File &#8594; Open.
<ulink url="mailto:a">b</ulink> <literal>code --- -- \'\' ``</literal>
&#8212; &#8211; &#8221; &#8220;. SMALL CAPS.
</para>
<indexterm role="cp"><primary>index entry &#8220;in text&#8221; &latex;</primary></indexterm>

<bridgehead renderas="sect1">majorheading <emphasis role="bold">in b</emphasis></bridgehead>
';

1;
