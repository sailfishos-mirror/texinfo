use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'uref_in_ref'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'ref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'file'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'node'
                    }
                  ],
                  'extra' => {
                    'manual_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'cross ref with uref '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'href://http/myhost.com/index.html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'uref1'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'title with uref2 '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'href://http/myhost.com/index2.html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'uref2'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'info file with uref3 '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'href://http/myhost.com/index3.html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'uref3'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
                    }
                  ],
                  'info' => {
                    'spaces_before_argument' => {
                      'text' => ' '
                    }
                  },
                  'type' => 'brace_arg'
                },
                {
                  'contents' => [
                    {
                      'text' => 'printed manual with uref4 '
                    },
                    {
                      'cmdname' => 'uref',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'href://http/myhost.com/index4.html'
                            }
                          ],
                          'type' => 'brace_arg'
                        },
                        {
                          'contents' => [
                            {
                              'text' => 'uref4'
                            }
                          ],
                          'type' => 'brace_arg'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 1
                      }
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
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'uref_in_ref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'uref_in_ref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'uref_in_ref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'uref_in_ref'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[3];

$result_texis{'uref_in_ref'} = '@ref{(file)node, cross ref with uref @uref{href://http/myhost.com/index.html,uref1}, title with uref2 @uref{href://http/myhost.com/index2.html,uref2}, info file with uref3 @uref{href://http/myhost.com/index3.html,uref3}, printed manual with uref4 @uref{href://http/myhost.com/index4.html,uref4}}
';


$result_texts{'uref_in_ref'} = '(file)node
';

$result_errors{'uref_in_ref'} = [];


$result_floats{'uref_in_ref'} = {};



$result_converted{'plaintext'}->{'uref_in_ref'} = 'cross ref with uref uref1 (href://http/myhost.com/index.html): (info
file with uref3 uref3 (href://http/myhost.com/index3.html))(file)node
';


$result_converted{'html_text'}->{'uref_in_ref'} = '<p><a data-manual="info file with uref3 href://http/myhost.com/index3.html (uref3)" href="index3.html%20%28uref3%29.html#node">title with uref2 <a class="uref" href="href://http/myhost.com/index2.html">uref2</a></a> in <cite class="cite">printed manual with uref4 <a class="uref" href="href://http/myhost.com/index4.html">uref4</a></cite>
</p>';


$result_converted{'latex_text'}->{'uref_in_ref'} = 'Section ``title with uref2 \\href{href://http/myhost.com/index2.html}{uref2 (\\nolinkurl{href://http/myhost.com/index2.html})}\'\' in \\textsl{printed manual with uref4 \\href{href://http/myhost.com/index4.html}{uref4 (\\nolinkurl{href://http/myhost.com/index4.html})}}
';


$result_converted{'docbook'}->{'uref_in_ref'} = '<para>section &#8220;title with uref2 <ulink url="href://http/myhost.com/index2.html">uref2</ulink>&#8221; in <citetitle>printed manual with uref4 <ulink url="href://http/myhost.com/index4.html">uref4</ulink></citetitle>
</para>';

1;
