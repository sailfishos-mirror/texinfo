use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'shorttitlepage'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'html-shorttitlepage.info'
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
          'cmdname' => 'setfilename',
          'extra' => {
            'spaces_before_argument' => ' ',
            'text_arg' => 'html-shorttitlepage.info'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        },
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
                  'text' => 'title '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'html'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'sc',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  },
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' '
                },
                {
                  'args' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'test'
                        }
                      ],
                      'parent' => {},
                      'type' => 'brace_command_arg'
                    }
                  ],
                  'cmdname' => 'code',
                  'contents' => [],
                  'line_nr' => {
                    'file_name' => '',
                    'line_nr' => 2,
                    'macro' => ''
                  },
                  'parent' => {}
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
          'cmdname' => 'shorttitlepage',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 2,
            'macro' => ''
          },
          'parent' => {}
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
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'contents' => [],
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top of '
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'title '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'html'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'sc',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => ' '
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'test'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'code',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
              'parent' => {}
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
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top.
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
              'parent' => {},
              'text' => 'Second paragraph.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 5,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[1];
$result_trees{'shorttitlepage'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'shorttitlepage'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'shorttitlepage'}{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'};
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[3];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[3]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[4]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[5];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'contents'}[5]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0];
$result_trees{'shorttitlepage'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[1];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[3];
$result_trees{'shorttitlepage'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'shorttitlepage'}{'contents'}[2];
$result_trees{'shorttitlepage'}{'contents'}[2]{'parent'} = $result_trees{'shorttitlepage'};

$result_texis{'shorttitlepage'} = '@setfilename html-shorttitlepage.info
@shorttitlepage @@title @sc{html} @code{test}

@node Top
@top Top of @@title @sc{html} @code{test}

Top.

Second paragraph.
';


$result_texts{'shorttitlepage'} = '
Top of @title HTML test
***********************

Top.

Second paragraph.
';

$result_sectioning{'shorttitlepage'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'shorttitlepage'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'shorttitlepage'};

$result_nodes{'shorttitlepage'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'shorttitlepage'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'shorttitlepage'} = [];


$result_floats{'shorttitlepage'} = {};



$result_converted{'html'}->{'shorttitlepage'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>@title HTML test</title>

<meta name="description" content="@title HTML test">
<meta name="keywords" content="@title HTML test">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
h1.shorttitlepage {text-align:center}
-->
</style>


</head>

<body lang="en">
<h1 class="shorttitlepage">@title <small class="sc">HTML</small> <code class="code">test</code></h1>

<div class="top" id="Top">
<h1 class="top" id="Top-of-_0040title-HTML-test">Top of @title <small class="sc">HTML</small> <code class="code">test</code></h1>

<p>Top.
</p>
<p>Second paragraph.
</p></div>



</body>
</html>
';

1;
