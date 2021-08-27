use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'redefined_need'} = {
  'contents' => [
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '0.1'
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
      'cmdname' => 'need',
      'extra' => {
        'misc_args' => [
          '0.1'
        ],
        'spaces_before_argument' => ' '
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'redefined_need'}{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'redefined_need'}{'contents'}[0]{'args'}[0];
$result_trees{'redefined_need'}{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'redefined_need'}{'contents'}[0];
$result_trees{'redefined_need'}{'contents'}[0]{'parent'} = $result_trees{'redefined_need'};

$result_texis{'redefined_need'} = '@need 0.1
';


$result_texts{'redefined_need'} = '';

$result_errors{'redefined_need'} = [];


$result_floats{'redefined_need'} = {};



$result_converted{'html'}->{'redefined_need'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
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
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="en">
<!-- need: 0.1 -->



</body>
</html>
';

$result_converted_errors{'html'}->{'redefined_need'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  },
  {
    'error_line' => ':1: warning: need has the right arg: 0.1
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'need has the right arg: 0.1',
    'type' => 'warning'
  }
];


1;
