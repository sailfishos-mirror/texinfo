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
              'cmdname' => '@',
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
                      'text' => 'aaa'
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
                'line_nr' => 5,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' also dotless i.
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
                      'text' => '0075'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'U',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 7,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' also U+0075.
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
                      'text' => 'm1'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'email',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => ' email.
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
                  'text' => 'foo,\\,//'
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
          'cmdname' => 'definfoenclose',
          'extra' => {
            'misc_args' => [
              'foo',
              '\\',
              '//'
            ],
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 11,
            'macro' => ''
          }
        },
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
                      'text' => 'definfoenclose'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'foo',
              'contents' => [],
              'extra' => {
                'begin' => '\\',
                'end' => '//'
              },
              'parent' => {},
              'type' => 'definfoenclose_command'
            },
            {
              'parent' => {},
              'text' => ' should work at the beginning of a new paragraph.
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
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'lone footnote'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_context'
                }
              ],
              'cmdname' => 'footnote',
              'contents' => [],
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[10]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[10]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[10];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'contents'}[1]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'paragraph_command'}{'contents'}[0];
$result_trees{'paragraph_command'}{'contents'}[0]{'parent'} = $result_trees{'paragraph_command'};

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
    'file_name' => '',
    'line_nr' => 11,
    'macro' => '',
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
<p>i also dotless i.
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
