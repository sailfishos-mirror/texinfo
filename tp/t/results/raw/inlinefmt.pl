use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlinefmt'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'A '
            },
            {
              'cmdname' => 'inlinefmt',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'plaintext'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'plaintext `` '
                    },
                    {
                      'cmdname' => 'lbracechar',
                      'contents' => [
                        {
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
                    },
                    {
                      'text' => ' '
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'expand_index' => 1,
                'format' => 'plaintext'
              },
              'source_info' => {
                'line_nr' => 1
              }
            },
            {
              'text' => ' a.  Now html
'
            },
            {
              'cmdname' => 'inlinefmt',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'html'
                    }
                  ],
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'in <i>'
                    },
                    {
                      'cmdname' => 'acronym',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'HTML'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 2
                      }
                    },
                    {
                      'text' => '</i>'
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                }
              ],
              'extra' => {
                'expand_index' => 1,
                'format' => 'html'
              },
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
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};

$result_texis{'inlinefmt'} = 'A @inlinefmt{plaintext, plaintext `` @lbracechar{} } a.  Now html
@inlinefmt{html, in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlinefmt'} = 'A plaintext " {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlinefmt'} = [];


$result_floats{'inlinefmt'} = {};



$result_converted{'plaintext'}->{'inlinefmt'} = 'A plaintext " { a.  Now html .
';


$result_converted{'xml'}->{'inlinefmt'} = '<para>A <inlinefmt><inlinefmtformat>plaintext</inlinefmtformat><inlinefmtcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinefmtcontent></inlinefmt> a.  Now html
<inlinefmt><inlinefmtformat>html</inlinefmtformat><inlinefmtcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinefmtcontent></inlinefmt>.
</para>';

1;
