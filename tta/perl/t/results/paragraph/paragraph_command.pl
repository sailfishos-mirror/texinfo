use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'paragraph_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => '@'
            },
            {
              'text' => '
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'b',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'aaa'
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
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'dotless',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'i'
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
              'text' => ' also dotless i.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'U',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '0075'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 7
              }
            },
            {
              'text' => ' also U+0075.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'email',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'm1'
                    }
                  ],
                  'type' => 'brace_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 9
              }
            },
            {
              'text' => ' email.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'definfoenclose',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'foo,\\,//'
                }
              ],
              'info' => {
                'spaces_after_argument' => {
                  'text' => '
'
                }
              },
              'type' => 'line_arg'
            }
          ],
          'extra' => {
            'misc_args' => [
              'foo',
              '\\',
              '//'
            ]
          },
          'info' => {
            'spaces_before_argument' => {
              'text' => ' '
            }
          },
          'source_info' => {
            'line_nr' => 11
          }
        },
        {
          'contents' => [
            {
              'cmdname' => 'foo',
              'contents' => [
                {
                  'contents' => [
                    {
                      'cmdname' => '@'
                    },
                    {
                      'text' => 'definfoenclose'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'extra' => {
                'begin' => '\\',
                'end' => '//'
              },
              'info' => {
                'command_name' => 'foo'
              },
              'source_info' => {
                'line_nr' => 12
              },
              'type' => 'definfoenclose_command'
            },
            {
              'text' => ' should work at the beginning of a new paragraph.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'cmdname' => 'footnote',
              'contents' => [
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'lone footnote'
                        }
                      ],
                      'type' => 'paragraph'
                    }
                  ],
                  'type' => 'brace_command_context'
                }
              ],
              'extra' => {},
              'source_info' => {
                'line_nr' => 14
              }
            },
            {
              'text' => '.
'
            }
          ],
          'type' => 'paragraph'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'paragraph_command'} = '@@

@b{aaa}.

@dotless{i} also dotless i.

@U{0075} also U+0075.

@email{m1} email.

@definfoenclose foo,\\,//
@foo{@@definfoenclose} should work at the beginning of a new paragraph.

@footnote{lone footnote}.

';


$result_texts{'paragraph_command'} = '@

aaa.

i also dotless i.

0075 also U+0075.

m1 email.

@definfoenclose should work at the beginning of a new paragraph.

.

';

$result_errors{'paragraph_command'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 11,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];


$result_floats{'paragraph_command'} = {};



$result_converted{'plaintext'}->{'paragraph_command'} = '@

   aaa.

   ı also dotless i.

   u also U+0075.

   <m1> email.

   \\@definfoenclose// should work at the beginning of a new paragraph.

   (1).

   ---------- Footnotes ----------

   (1) lone footnote

';


$result_converted{'html_text'}->{'paragraph_command'} = '<p>@
</p>
<p><b class="b">aaa</b>.
</p>
<p>&inodot; also dotless i.
</p>
<p>&#x0075; also U+0075.
</p>
<p><a class="email" href="mailto:m1">m1</a> email.
</p>
<p>\\@definfoenclose// should work at the beginning of a new paragraph.
</p>
<p><a class="footnote" id="DOCF1" href="#FOOT1"><sup>1</sup></a>.
</p>
<div class="footnotes-segment">
<hr>
<h4 class="footnotes-heading">Footnotes</h4>

<h5 class="footnote-body-heading"><a id="FOOT1" href="#DOCF1">(1)</a></h5>
<p>lone footnote</p>
</div>
';

1;
