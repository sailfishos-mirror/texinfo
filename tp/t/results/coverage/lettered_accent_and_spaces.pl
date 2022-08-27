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
                'spaces' => '    '
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => '
'
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
                'spaces' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 6,
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
                'spaces' => '
  '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 9,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 12,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'extra' => {
                'spaces' => '
'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
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
                      'text' => 'a'
                    }
                  ],
                  'parent' => {},
                  'type' => 'following_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'extra' => {
                'spaces' => '
 '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 17,
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
                      'text' => 'a
'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => '^',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 20,
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[10]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[11]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[12]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[13]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'contents'}[1]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[14]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'contents'}[15]{'parent'} = $result_trees{'lettered_accent_and_spaces'}{'contents'}[0];
$result_trees{'lettered_accent_and_spaces'}{'contents'}[0]{'parent'} = $result_trees{'lettered_accent_and_spaces'};

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
    'file_name' => '',
    'line_nr' => 3,
    'macro' => '',
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 6,
    'macro' => '',
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@ringaccent\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 9,
    'macro' => '',
    'text' => 'command `@ringaccent\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@^\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 14,
    'macro' => '',
    'text' => 'command `@^\' must not be followed by new line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: command `@^\' must not be followed by new line
',
    'file_name' => '',
    'line_nr' => 17,
    'macro' => '',
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
<p>&a
circ;
</p>
';


$result_converted{'xml'}->{'lettered_accent_and_spaces'} = '<para><accent type="ring" spaces="    " bracketed="off">a</accent>
</para>
<para><accent type="ring" spaces="
">a</accent>
</para>
<para><accent type="ring" spaces="
" bracketed="off">a</accent>
</para>
<para><accent type="ring" spaces="
  " bracketed="off">a</accent>
</para>
<para><accent type="circ" spaces=" " bracketed="off">a</accent>
</para>
<para><accent type="circ" spaces="
" bracketed="off">a</accent>
</para>
<para><accent type="circ" spaces="
 " bracketed="off">a</accent>
</para>
<para><accent type="circ" spaces=" ">a
</accent>
</para>
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
