use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'no_argument_and_contents'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'parent' => {},
              'text' => '
',
              'type' => 'misc_arg'
            }
          ],
          'cmdname' => 'contents',
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
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
              'text' => 'for example'
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
        }
      ],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'asis',
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
      'cmdname' => 'chapter',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
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
$result_trees{'no_argument_and_contents'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[0]{'contents'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'};
$result_trees{'no_argument_and_contents'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[1]{'args'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[1];
$result_trees{'no_argument_and_contents'}{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[1];
$result_trees{'no_argument_and_contents'}{'contents'}[1]{'parent'} = $result_trees{'no_argument_and_contents'};
$result_trees{'no_argument_and_contents'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[2]{'args'}[0]{'contents'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[2]{'args'}[0];
$result_trees{'no_argument_and_contents'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[2];
$result_trees{'no_argument_and_contents'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'no_argument_and_contents'}{'contents'}[2];
$result_trees{'no_argument_and_contents'}{'contents'}[2]{'parent'} = $result_trees{'no_argument_and_contents'};

$result_texis{'no_argument_and_contents'} = '@contents

@top for example

@chapter @asis{}

';


$result_texts{'no_argument_and_contents'} = '
for example
***********

1 
**

';

$result_sectioning{'no_argument_and_contents'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {},
        'structure' => {
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {},
              'structure' => {
                'section_level' => 1,
                'section_number' => 1,
                'section_up' => {},
                'toplevel_prev' => {},
                'toplevel_up' => {}
              }
            }
          ],
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_prev'} = $result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0]{'structure'}{'section_childs'}[0]{'structure'}{'toplevel_up'} = $result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0];
$result_sectioning{'no_argument_and_contents'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'no_argument_and_contents'};

$result_errors{'no_argument_and_contents'} = [];


$result_floats{'no_argument_and_contents'} = {};



$result_converted{'plaintext'}->{'no_argument_and_contents'} = 'for example
1 
for example
***********

1 
**

';


$result_converted{'html'}->{'no_argument_and_contents'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>for example</title>

<meta name="description" content="for example">
<meta name="keywords" content="for example">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<link href="#SEC_Contents" rel="contents" title="Table of Contents">
<style type="text/css">
<!--
kbd {font-style: oblique}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">

<div class="top" id="for-example">
<h1 class="top">for example</h1>

<div class="contents-element" id="SEC_Contents">
<h2 class="contents-heading">Table of Contents</h2>

<div class="contents">

<ul class="no-bullet">
  <li>1 </li>
</ul>
</div>
</div>
<div class="chapter">
<h2 class="chapter">1 </h2>

</div>
</div>



</body>
</html>
';

1;
