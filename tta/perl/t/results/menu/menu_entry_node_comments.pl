use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_entry_node_comments'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'menu',
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
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'f'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'a1c'
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
                    },
                    'normalized' => 'a1c'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'c',
                          'contents' => [
                            {
                              'text' => ' c
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 2
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'f'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'a2c'
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
                    },
                    'normalized' => 'a2c'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::  ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'c',
                          'contents' => [
                            {
                              'text' => ' c
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 3
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'f'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => 'a3c'
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
                    },
                    'normalized' => 'a3c'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::         ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'text' => 'd'
                        },
                        {
                          'cmdname' => 'c',
                          'contents' => [
                            {
                              'text' => ' c
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 4
              },
              'type' => 'menu_entry'
            },
            {
              'contents' => [
                {
                  'text' => '* ',
                  'type' => 'menu_entry_leading_text'
                },
                {
                  'contents' => [
                    {
                      'text' => '('
                    },
                    {
                      'text' => 'f'
                    },
                    {
                      'text' => ')'
                    },
                    {
                      'text' => ' '
                    },
                    {
                      'text' => 'a4'
                    },
                    {
                      'text' => ' ',
                      'type' => 'space_at_end_menu_node'
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
                        {},
                        {}
                      ]
                    },
                    'normalized' => 'a4'
                  },
                  'type' => 'menu_entry_node'
                },
                {
                  'text' => '::   ',
                  'type' => 'menu_entry_separator'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'cmdname' => 'c',
                          'contents' => [
                            {
                              'text' => ' c
',
                              'type' => 'rawline_arg'
                            }
                          ]
                        }
                      ],
                      'type' => 'preformatted'
                    }
                  ],
                  'type' => 'menu_entry_description'
                }
              ],
              'source_info' => {
                'line_nr' => 5
              },
              'type' => 'menu_entry'
            },
            {
              'cmdname' => 'end',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => 'menu'
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
                'text_arg' => 'menu'
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
            'line_nr' => 1
          }
        }
      ],
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[1];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'contents'}[3];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[1];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'contents'}[1]{'contents'}[3];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[1];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'contents'}[1]{'contents'}[3];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'manual_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[1];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[4];
$result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'extra'}{'node_content'}{'contents'}[1] = $result_trees{'menu_entry_node_comments'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'contents'}[1]{'contents'}[5];

$result_texis{'menu_entry_node_comments'} = '@menu
* (f)a1c::@c c
* (f)a2c::  @c c
* (f)a3c::         d@c c
* (f) a4 ::   @c c
@end menu
';


$result_texts{'menu_entry_node_comments'} = '* (f)a1c::
* (f)a2c::  
* (f)a3c::         d
* (f) a4 ::   
';

$result_errors{'menu_entry_node_comments'} = [];


$result_floats{'menu_entry_node_comments'} = {};



$result_converted{'plaintext'}->{'menu_entry_node_comments'} = '* Menu:

* (f)a1c::
* (f)a2c::
* (f)a3c::         d
* (f) a4 ::
';


$result_converted{'html'}->{'menu_entry_node_comments'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
td.menu-entry-description {vertical-align: top; padding-left: 1em}
td.menu-entry-destination {vertical-align: top}
-->
</style>


</head>

<body lang="en">
<table class="menu">
<tr><td class="menu-entry-destination">&bull; <a href="f.html#a1c" accesskey="1">(f)a1c</a>:</td><td class="menu-entry-description"></td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#a2c" accesskey="2">(f)a2c</a>:</td><td class="menu-entry-description"></td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#a3c" accesskey="3">(f)a3c</a>:</td><td class="menu-entry-description">d</td></tr>
<tr><td class="menu-entry-destination">&bull; <a href="f.html#a4" accesskey="4">(f)a4 </a>:</td><td class="menu-entry-description"></td></tr>
</table>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu_entry_node_comments'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'menu_entry_node_comments'} = '<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>(f)a1c</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve"><!-- c c -->
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>(f)a2c</menunode><menuseparator>::  </menuseparator><menudescription><pre xml:space="preserve"><!-- c c -->
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>(f)a3c</menunode><menuseparator>::         </menuseparator><menudescription><pre xml:space="preserve">d<!-- c c -->
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>(f) a4 </menunode><menuseparator>::   </menuseparator><menudescription><pre xml:space="preserve"><!-- c c -->
</pre></menudescription></menuentry></menu>
';

1;
