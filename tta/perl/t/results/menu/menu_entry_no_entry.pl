use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'menu_entry_no_entry'} = {
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
                  'contents' => [
                    {
                      'text' => '* a1:
'
                    },
                    {
                      'text' => '* a2:  
'
                    },
                    {
                      'text' => '* a1c:'
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
                    },
                    {
                      'text' => '* a2c:  '
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
                    },
                    {
                      'text' => '* a4'
                    },
                    {
                      'cmdname' => 'b',
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
                      'source_info' => {
                        'line_nr' => 6
                      }
                    },
                    {
                      'text' => ': 
'
                    },
                    {
                      'text' => '* a5'
                    },
                    {
                      'cmdname' => 'b',
                      'contents' => [
                        {
                          'contents' => [
                            {
                              'text' => 'b'
                            }
                          ],
                          'type' => 'brace_container'
                        }
                      ],
                      'source_info' => {
                        'line_nr' => 7
                      }
                    },
                    {
                      'text' => ': '
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
              'type' => 'menu_comment'
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
                'line_nr' => 8
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

$result_texis{'menu_entry_no_entry'} = '@menu
* a1:
* a2:  
* a1c:@c c
* a2c:  @c c
* a4@b{a}: 
* a5@b{b}: @c c
@end menu
';


$result_texts{'menu_entry_no_entry'} = '* a1:
* a2:  
* a1c:* a2c:  * a4a: 
* a5b: ';

$result_errors{'menu_entry_no_entry'} = [];


$result_floats{'menu_entry_no_entry'} = {};



$result_converted{'plaintext'}->{'menu_entry_no_entry'} = '* Menu:

* a1:
* a2:
* a1c:* a2c:  * a4a:
* a5b:
';


$result_converted{'html'}->{'menu_entry_no_entry'} = '<!DOCTYPE html>
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
pre.menu-comment-preformatted {font-family: serif}
th.menu-comment {text-align:left}
-->
</style>


</head>

<body lang="en">
<table class="menu">
<tr><th class="menu-comment" colspan="2"><pre class="menu-comment-preformatted">* a1:
* a2:  
* a1c:* a2c:  * a4<b class="b">a</b>: 
* a5<b class="b">b</b>: </pre></th></tr></table>



</body>
</html>
';

$result_converted_errors{'html'}->{'menu_entry_no_entry'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'menu_entry_no_entry'} = '<menu endspaces=" ">
<menucomment><pre xml:space="preserve">* a1:
* a2:  
* a1c:<!-- c c -->
* a2c:  <!-- c c -->
* a4<b>a</b>: 
* a5<b>b</b>: <!-- c c -->
</pre></menucomment></menu>
';

1;
