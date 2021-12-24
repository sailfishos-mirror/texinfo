use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'} = {
  'contents' => [
    {
      'contents' => [
        {
          'parent' => {},
          'text' => '\\input texinfo
',
          'type' => 'preamble_text'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'preamble_text'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'preamble_text'
        }
      ],
      'parent' => {},
      'type' => 'preamble'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'centered'
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
      'line_nr' => {
        'file_name' => 'empty_lines_at_beginning_no_setfilename_no_element.texi',
        'line_nr' => 4,
        'macro' => ''
      },
      'parent' => {}
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
          'text' => 'Some text.
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
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'text_root'
};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[1]{'args'}[0];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[1];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[1]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[2]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[3];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[3]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[4]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[5];
$result_trees{'empty_lines_at_beginning_no_setfilename_no_element'}{'contents'}[5]{'parent'} = $result_trees{'empty_lines_at_beginning_no_setfilename_no_element'};

$result_texis{'empty_lines_at_beginning_no_setfilename_no_element'} = '\\input texinfo


@center centered

Some text.

@bye
';


$result_texts{'empty_lines_at_beginning_no_setfilename_no_element'} = 'centered

Some text.

';

$result_errors{'empty_lines_at_beginning_no_setfilename_no_element'} = [];


$result_floats{'empty_lines_at_beginning_no_setfilename_no_element'} = {};



$result_converted{'html'}->{'empty_lines_at_beginning_no_setfilename_no_element'} = '<!DOCTYPE html>
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
div.center-align {text-align:center}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
h1.center-align {text-align:center}
h2.center-align {text-align:center}
h3.center-align {text-align:center}
h3.right-align {text-align:right}
h4.center-align {text-align:center}
kbd {font-style: oblique}
p.center-align {text-align:center}
p.left-align {text-align:left}
p.right-align {text-align:right}
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
<div class="center-align">centered
</div>
<p>Some text.
</p>



</body>
</html>
';

$result_converted_errors{'html'}->{'empty_lines_at_beginning_no_setfilename_no_element'} = [
  {
    'error_line' => 'empty_lines_at_beginning_no_setfilename_no_element.texi: warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
