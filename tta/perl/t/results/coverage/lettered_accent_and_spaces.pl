use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'lettered_accent_and_spaces'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '    '
                }
              },
              'source_info' => {
                'line_nr' => 1
              }
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
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
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
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
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
              'cmdname' => 'ringaccent',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
  '
                }
              },
              'source_info' => {
                'line_nr' => 9
              }
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
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 12
              }
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
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
'
                }
              },
              'source_info' => {
                'line_nr' => 14
              }
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
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => '
 '
                }
              },
              'source_info' => {
                'line_nr' => 17
              }
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
              'cmdname' => '^',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'a
'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 20
              }
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
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'lettered_accent_and_spaces'} = '@ringaccent    a

@ringaccent
{a}

@ringaccent
a

@ringaccent
  a

@^ a

@^
a

@^
 a

@^ {a
}

';


$result_texts{'lettered_accent_and_spaces'} = 'a*

a*

a*

a*

a^

a^

a^

a
^

';

$result_errors{'lettered_accent_and_spaces'} = [
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 3,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 6,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'line_nr' => 9,
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@^\' must not be followed by new line
',
    'line_nr' => 14,
    'text' => 'command `@^\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@^\' must not be followed by new line
',
    'line_nr' => 17,
    'text' => 'command `@^\' must not be followed by new line',
    'type' => 'warning'
  }
];


$result_floats{'lettered_accent_and_spaces'} = {};



$result_converted{'plaintext'}->{'lettered_accent_and_spaces'} = 'å

   å

   å

   å

   â

   â

   â

   a ̂

';


$result_converted{'html_text'}->{'lettered_accent_and_spaces'} = '<p>&aring;
</p>
<p>&aring;
</p>
<p>&aring;
</p>
<p>&aring;
</p>
<p>&acirc;
</p>
<p>&acirc;
</p>
<p>&acirc;
</p>
<p>a
&#770;
</p>
';


$result_converted{'xml'}->{'lettered_accent_and_spaces'} = '<para><accent type="ring" spacesaftercmd="    " bracketed="off">a</accent>
</para>
<para><accent type="ring" spacesaftercmd="\\n">a</accent>
</para>
<para><accent type="ring" spacesaftercmd="\\n" bracketed="off">a</accent>
</para>
<para><accent type="ring" spacesaftercmd="\\n  " bracketed="off">a</accent>
</para>
<para><accent type="circ" spacesaftercmd=" " bracketed="off">a</accent>
</para>
<para><accent type="circ" spacesaftercmd="\\n" bracketed="off">a</accent>
</para>
<para><accent type="circ" spacesaftercmd="\\n " bracketed="off">a</accent>
</para>
<para><accent type="circ" spacesaftercmd=" ">a
</accent>
</para>
';


$result_converted{'latex_text'}->{'lettered_accent_and_spaces'} = '\\r{a}

\\r{a}

\\r{a}

\\r{a}

\\^{a}

\\^{a}

\\^{a}

\\^{a
}

';


$result_converted{'docbook'}->{'lettered_accent_and_spaces'} = '<para>&#229;
</para>
<para>&#229;
</para>
<para>&#229;
</para>
<para>&#229;
</para>
<para>&#226;
</para>
<para>&#226;
</para>
<para>&#226;
</para>
<para>a
&#770;
</para>
';

1;
