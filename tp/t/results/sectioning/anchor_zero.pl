use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'anchor_zero'} = {
  'contents' => [
    {
      'type' => 'before_node_section'
    },
    {
      'cmdname' => 'node',
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'text' => 'Top'
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
          'type' => 'arguments_line'
        },
        {
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'cmdname' => 'anchor',
          'contents' => [
            {
              'contents' => [
                {
                  'text' => '0'
                }
              ],
              'type' => 'brace_arg'
            }
          ],
          'extra' => {
            'is_target' => 1,
            'normalized' => '0'
          },
          'source_info' => {
            'line_nr' => 3
          }
        },
        {
          'contents' => [
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
          'contents' => [
            {
              'cmdname' => 'xref',
              'contents' => [
                {
                  'contents' => [
                    {
                      'text' => '0'
                    }
                  ],
                  'extra' => {
                    'node_content' => {
                      'contents' => [
                        {}
                      ]
                    },
                    'normalized' => '0'
                  },
                  'type' => 'brace_arg'
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
          'type' => 'paragraph'
        }
      ],
      'extra' => {
        'is_target' => 1,
        'normalized' => 'Top'
      },
      'info' => {
        'spaces_before_argument' => {
          'text' => ' '
        }
      },
      'source_info' => {
        'line_nr' => 1
      }
    }
  ],
  'type' => 'document_root'
};
$result_trees{'anchor_zero'}{'contents'}[1]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'extra'}{'node_content'}{'contents'}[0] = $result_trees{'anchor_zero'}{'contents'}[1]{'contents'}[5]{'contents'}[0]{'contents'}[0]{'contents'}[0];

$result_texis{'anchor_zero'} = '@node Top

@anchor{0}.

@xref{0}.
';


$result_texts{'anchor_zero'} = '
.

0.
';

$result_nodes{'anchor_zero'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_menus{'anchor_zero'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'anchor_zero'} = [];


$result_floats{'anchor_zero'} = {};



$result_converted{'info'}->{'anchor_zero'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

.

   *Note 0::.


Tag Table:
Node: Top27
Ref: 061

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'html'}->{'anchor_zero'} = '<!DOCTYPE html>
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

<link href="#Top" rel="start" title="Top">
<style type="text/css">
<!--
a.copiable-link {visibility: hidden; text-decoration: none; line-height: 0em}
span:hover a.copiable-link {visibility: visible}
-->
</style>


</head>

<body lang="en">
<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<a class="anchor" id="g_t0"></a><p>.
</p>
<p>See <a class="xref" href="#g_t0">0</a>.
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'anchor_zero'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
