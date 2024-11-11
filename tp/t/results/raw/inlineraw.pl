use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlineraw'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'text' => 'A '
            },
            {
              'cmdname' => 'inlineraw',
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
              'cmdname' => 'inlineraw',
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

$result_texis{'inlineraw'} = 'A @inlineraw{plaintext, plaintext `` @lbracechar{} } a.  Now html
@inlineraw{html, in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlineraw'} = 'A plaintext `` {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlineraw'} = [];


$result_floats{'inlineraw'} = {};



$result_converted{'plaintext'}->{'inlineraw'} = 'A plaintext `` { a.  Now html .
';


$result_converted{'xml'}->{'inlineraw'} = '<para>A <inlineraw><inlinerawformat>plaintext</inlinerawformat><inlinerawcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinerawcontent></inlineraw> a.  Now html
<inlineraw><inlinerawformat>html</inlinerawformat><inlinerawcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinerawcontent></inlineraw>.
</para>';

1;
