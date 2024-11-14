use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'documentdescription'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'documentdescription',
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
              'type' => 'argument'
            },
            {
              'contents' => [
                {
                  'text' => 'in '
                },
                {
                  'cmdname' => 'code',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'documentdescri---ption'
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
                  'text' => ' --- '
                },
                {
                  'cmdname' => 'bullet',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 2
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'enddots',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 2
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'verb',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => '"verb',
                          'type' => 'raw'
                        }
                      ],
                      'type' => 'brace_container'
                    }
                  ],
                  'info' => {
                    'delimiter' => ':'
                  },
                  'source_info' => {
                    'line_nr' => 2
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => 'aa',
                  'contents' => [
                    {
                      'type' => 'brace_container'
                    }
                  ],
                  'source_info' => {
                    'line_nr' => 2
                  }
                },
                {
                  'text' => ' '
                },
                {
                  'cmdname' => '^',
                  'contents' => [
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
                            'line_nr' => 2
                          }
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
                  'text' => ' '
                },
                {
                  'cmdname' => 'email',
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'code',
                          'contents' => [
                            {
                              'contents' => [
                                {
                                  'text' => 'some'
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
                          'text' => 'body'
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
                  'text' => '
'
                }
              ],
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'text' => 'documentdescription'
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
              'cmdname' => 'end',
              'extra' => {
                'text_arg' => 'documentdescription'
              },
              'info' => {
                'spaces_before_argument' => {
                  'text' => ' '
                }
              },
              'source_info' => {
                'line_nr' => 3
              }
            }
          ],
          'source_info' => {
            'line_nr' => 1
          }
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        }
      ],
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'top',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'top'
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
          'type' => 'argument'
        }
      ],
      'extra' => {},
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 5
      }
    }
  ],
  'type' => 'document_root'
};

$result_texis{'documentdescription'} = '@documentdescription
in @code{documentdescri---ption} --- @bullet{} @enddots{} @verb{:"verb:} @aa{} @^{@dotless{i}} @email{@code{some}body}
@end documentdescription

@top top
';


$result_texts{'documentdescription'} = '
top
***
';

$result_sectioning{'documentdescription'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'documentdescription'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'documentdescription'};

$result_errors{'documentdescription'} = [];


$result_floats{'documentdescription'} = {};



$result_converted{'html'}->{'documentdescription'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>top</title>

<meta name="description" content="in documentdescri---ption &mdash; &bull; ... &quot;verb &aring; &icirc; somebody (somebody)">
<meta name="keywords" content="top">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">

<div class="top-level-extent" id="top">
<h1 class="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>
</div>



</body>
</html>
';

1;
