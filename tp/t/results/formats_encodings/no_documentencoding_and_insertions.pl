use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_documentencoding_and_insertions'} = {
  'contents' => [
    {
      'contents' => [
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'text' => '-- --- \'\' `` ` \' '
            },
            {
              'cmdname' => 'code',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'in code'
                    }
                  ],
                  'type' => 'brace_container'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              }
            },
            {
              'text' => '. '
            },
            {
              'cmdname' => '~',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'e'
                    }
                  ],
                  'type' => 'following_arg'
                }
              ],
              'source_info' => {
                'line_nr' => 2
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
          'cmdname' => 'example',
          'contents' => [
            {
              'contents' => [
                {
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => '
'
                    }
                  },
                  'type' => 'block_line_arg'
                }
              ],
              'type' => 'arguments_line'
            },
            {
              'contents' => [
                {
                  'text' => '-- --- \'\' `` ` \' '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'in code'
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
                  'text' => '. '
                },
                {
                  'cmdname' => '~',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'e'
                        }
                      ],
                      'type' => 'following_arg'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 5
                  }
                },
                {
                  'text' => '.
'
                }
              ],
              'type' => 'preformatted'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'example'
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
                'text_arg' => 'example'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 6
              }
            }
          ],
          'source_info' => {
            'line_nr' => 4
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'no_documentencoding_and_insertions'} = '
-- --- \'\' `` ` \' @code{in code}. @~e.

@example
-- --- \'\' `` ` \' @code{in code}. @~e.
@end example
';


$result_texts{'no_documentencoding_and_insertions'} = '
- -- " " ` \' in code. e~.

-- --- \'\' `` ` \' in code. e~.
';

$result_errors{'no_documentencoding_and_insertions'} = [];


$result_floats{'no_documentencoding_and_insertions'} = {};



$result_converted{'plaintext'}->{'no_documentencoding_and_insertions'} = '- -- " " \' \' ‘in code’.  ẽ.

     -- --- \'\' `` ` \' in code. ẽ.
';


$result_converted{'html_text'}->{'no_documentencoding_and_insertions'} = '
<p>&ndash; &mdash; &rdquo; &ldquo; &lsquo; &rsquo; <code class="code">in code</code>. &#7869;.
</p>
<div class="example">
<pre class="example-preformatted">-- --- \'\' `` ` \' <code class="code">in code</code>. &#7869;.
</pre></div>
';


$result_converted{'xml'}->{'no_documentencoding_and_insertions'} = '
<para>&textndash; &textmdash; &textrdquo; &textldquo; &textlsquo; &textrsquo; <code>in code</code>. <accent type="tilde" bracketed="off">e</accent>.
</para>
<example endspaces=" ">
<pre xml:space="preserve">-- --- \'\' `` ` \' <code>in code</code>. <accent type="tilde" bracketed="off">e</accent>.
</pre></example>
';


$result_converted{'docbook'}->{'no_documentencoding_and_insertions'} = '
<para>&#8211; &#8212; &#8221; &#8220; &#8216; &#8217; <literal>in code</literal>. &#7869;.
</para>
<screen>-- --- \'\' `` ` \' <literal>in code</literal>. &#7869;.
</screen>';

1;
