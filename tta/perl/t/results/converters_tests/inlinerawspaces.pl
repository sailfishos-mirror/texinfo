use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'inlinerawspaces'} = {
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
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
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
                  'info' => {
                    'spaces_after_argument' => {
                      'text' => ' '
                    },
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
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
              'info' => {
                'spaces_after_cmd_before_arg' => {
                  'text' => ' '
                }
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

$result_texis{'inlinerawspaces'} = 'A @inlineraw{ plaintext , plaintext `` @lbracechar{} } a.  Now html
@inlineraw { html , in <i>@acronym{HTML}</i>}.
';


$result_texts{'inlinerawspaces'} = 'A plaintext `` {  a.  Now html
in <i>HTML</i>.
';

$result_errors{'inlinerawspaces'} = [];


$result_floats{'inlinerawspaces'} = {};



$result_converted{'plaintext'}->{'inlinerawspaces'} = 'A plaintext `` { a.  Now html .
';


$result_converted{'html_text'}->{'inlinerawspaces'} = '<p>A  a.  Now html
in <i><abbr class="acronym">HTML</abbr></i>.
</p>';


$result_converted{'xml'}->{'inlinerawspaces'} = '<para>A <inlineraw><inlinerawformat spaces=" ">plaintext </inlinerawformat><inlinerawcontent spaces=" ">plaintext &textldquo; &lbracechar; </inlinerawcontent></inlineraw> a.  Now html
<inlineraw spacesaftercmd=" "><inlinerawformat spaces=" ">html </inlinerawformat><inlinerawcontent spaces=" ">in &lt;i&gt;<acronym><acronymword>HTML</acronymword></acronym>&lt;/i&gt;</inlinerawcontent></inlineraw>.
</para>';


$result_converted{'docbook'}->{'inlinerawspaces'} = '<para>A  a.  Now html
.
</para>';


$result_converted{'latex_text'}->{'inlinerawspaces'} = 'A  a.  Now html
.
';

1;
