use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'line_breaks'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'documentdescription',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => ' 
',
              'type' => 'empty_line_after_command'
            },
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'a document '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' yes!
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'documentdescription'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'documentdescription',
                'spaces_before_argument' => ' ',
                'text_arg' => 'documentdescription'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 3,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {}
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'the manual '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' new version'
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
          'cmdname' => 'settitle',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 5,
            'macro' => ''
          }
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'AWK As A Major Systems Programming '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' Language---Revisited'
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
          'cmdname' => 'title',
          'extra' => {
            'spaces_before_argument' => ' '
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
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'in center '
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' line break'
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
          'cmdname' => 'center',
          'extra' => {
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 8,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'cmdname' => 'strong',
                  'contents' => [],
                  'parent' => {},
                  'source_info' => {
                    'file_name' => '',
                    'line_nr' => 10,
                    'macro' => ''
                  },
                  'type' => 'command_as_argument'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'table',
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
                              'text' => 'with break '
                            },
                            {
                              'cmdname' => '*',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' after'
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
                      'cmdname' => 'item',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 11,
                        'macro' => ''
                      }
                    },
                    {
                      'args' => [
                        {
                          'contents' => [
                            {
                              'parent' => {},
                              'text' => 'withx breakx '
                            },
                            {
                              'cmdname' => '*',
                              'parent' => {}
                            },
                            {
                              'parent' => {},
                              'text' => ' afterx'
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
                      'cmdname' => 'itemx',
                      'extra' => {
                        'spaces_before_argument' => ' '
                      },
                      'parent' => {},
                      'source_info' => {
                        'file_name' => '',
                        'line_nr' => 12,
                        'macro' => ''
                      }
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_term'
                },
                {
                  'contents' => [
                    {
                      'contents' => [
                        {
                          'parent' => {},
                          'text' => 'Text
'
                        }
                      ],
                      'parent' => {},
                      'type' => 'paragraph'
                    }
                  ],
                  'parent' => {},
                  'type' => 'table_item'
                }
              ],
              'parent' => {},
              'type' => 'table_entry'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'table'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'table',
                'spaces_before_argument' => ' ',
                'text_arg' => 'table'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 14,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'command_as_argument' => {},
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 10,
            'macro' => ''
          }
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'Q'
                },
                {
                  'cmdname' => '*',
                  'parent' => {}
                },
                {
                  'parent' => {},
                  'text' => ' uotation'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'block_line_arg'
            }
          ],
          'cmdname' => 'quotation',
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'T
'
                }
              ],
              'parent' => {},
              'type' => 'paragraph'
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'quotation'
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
              'cmdname' => 'end',
              'extra' => {
                'command_argument' => 'quotation',
                'spaces_before_argument' => ' ',
                'text_arg' => 'quotation'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => '',
                'line_nr' => 18,
                'macro' => ''
              }
            }
          ],
          'extra' => {
            'end_command' => {},
            'spaces_before_argument' => ' '
          },
          'parent' => {},
          'source_info' => {
            'file_name' => '',
            'line_nr' => 16,
            'macro' => ''
          }
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'extra'}{'end_command'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'contents'}[2];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[6]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'extra'}{'command_as_argument'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'args'}[0]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'extra'}{'end_command'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[7]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[8]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'extra'}{'end_command'} = $result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'contents'}[1];
$result_trees{'line_breaks'}{'contents'}[0]{'contents'}[9]{'parent'} = $result_trees{'line_breaks'}{'contents'}[0];
$result_trees{'line_breaks'}{'contents'}[0]{'parent'} = $result_trees{'line_breaks'};

$result_texis{'line_breaks'} = '@documentdescription 
a document @* yes!
@end documentdescription

@settitle the manual @* new version
@title AWK As A Major Systems Programming @* Language---Revisited

@center in center @* line break

@table @strong
@item with break @* after
@itemx withx breakx @* afterx
Text
@end table

@quotation Q@* uotation
T
@end quotation
';


$result_texts{'line_breaks'} = '
AWK As A Major Systems Programming 
 Language--Revisited

in center 
 line break

with break 
 after
withx breakx 
 afterx
Text

Q
 uotation
T
';

$result_errors{'line_breaks'} = [];


$result_floats{'line_breaks'} = {};



$result_converted{'plaintext'}->{'line_breaks'} = '                               in center
                              line break

*with break
after*
*withx breakx
afterx*
     Text

     Q
     uotation: T
';


$result_converted{'html'}->{'line_breaks'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>the manual 
 new version</title>

<meta name="description" content="a document 
 yes!">
<meta name="keywords" content="the manual 
 new version">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
div.center {text-align:center}
h1.settitle {text-align:center}
-->
</style>


</head>

<body lang="en">
<h1 class="settitle">the manual <br> new version</h1>
<hr>

<h1 class="title">AWK As A Major Systems Programming <br> Language&mdash;Revisited</h1>

<div class="center">in center <br> line break
</div>
<dl class="table">
<dt><strong class="strong">with break <br> after</strong></dt>
<dt><strong class="strong">withx breakx <br> afterx</strong></dt>
<dd><p>Text
</p></dd>
</dl>

<blockquote class="quotation">
<p><b class="b">Q<br> uotation:</b> T
</p></blockquote>



</body>
</html>
';


$result_converted{'xml'}->{'line_breaks'} = '<documentdescription endspaces=" "> 
<para>a document &linebreak; yes!
</para></documentdescription>

<settitle spaces=" ">the manual &linebreak; new version</settitle>
<title spaces=" ">AWK As A Major Systems Programming &linebreak; Language&textmdash;Revisited</title>

<center spaces=" ">in center &linebreak; line break</center>

<table commandarg="strong" spaces=" " endspaces=" ">
<tableentry><tableterm><item spaces=" "><itemformat command="strong">with break &linebreak; after</itemformat></item>
<itemx spaces=" "><itemformat command="strong">withx breakx &linebreak; afterx</itemformat></itemx>
</tableterm><tableitem><para>Text
</para></tableitem></tableentry></table>

<quotation spaces=" " endspaces=" "><quotationtype>Q&linebreak; uotation</quotationtype>
<para>T
</para></quotation>
';


$result_converted{'docbook_doc'}->{'line_breaks'} = '<?xml version="1.0"?>
<!DOCTYPE book PUBLIC "-//OASIS//DTD DocBook XML V4.5//EN" "http://www.oasis-open.org/docbook/xml/4.5/docbookx.dtd" [
  <!ENTITY tex "TeX">
  <!ENTITY latex "LaTeX">
]>
<book lang="en">
<title>AWK As A Major Systems Programming 
 Language&#8212;Revisited</title>
<titleabbrev>the manual 
 new version</titleabbrev>
<bookinfo><title>AWK As A Major Systems Programming 
 Language&#8212;Revisited</title>
<titleabbrev>the manual 
 new version</titleabbrev>
</bookinfo>


<simpara role="center">in center 
 line break</simpara>

<variablelist><varlistentry><term><emphasis role="bold">with break 
 after</emphasis>
</term><term><emphasis role="bold">withx breakx 
 afterx</emphasis>
</term><listitem><para>Text
</para></listitem></varlistentry></variablelist>
<blockquote><para><emphasis role="bold">Q
 uotation:</emphasis> T
</para></blockquote></book>
';


$result_converted{'latex'}->{'line_breaks'} = '
{\\raggedright {\\huge \\bfseries AWK As A Major Systems Programming \\leavevmode{}\\\\ Language---Revisited}}
\\vskip 4pt \\hrule height 4pt width \\hsize \\vskip 4pt

\\begin{center}
in center \\leavevmode{}\\\\ line break
\\end{center}

\\begin{description}
\\item[{\\parbox[b]{\\linewidth}{%
\\textbf{with break \\leavevmode{}\\\\ after}\\\\
\\textbf{withx breakx \\leavevmode{}\\\\ afterx}}}]
Text
\\end{description}

\\begin{quote}
\\textbf{Q\\leavevmode{}\\\\ uotation:} T
\\end{quote}
';

1;
