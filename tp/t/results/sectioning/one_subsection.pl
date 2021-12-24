use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'one_subsection'} = {
  'contents' => [
    {
      'contents' => [],
      'parent' => {},
      'type' => 'text_root'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'The subsection'
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
      'cmdname' => 'subsection',
      'contents' => [],
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 3,
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
      'number' => 1,
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'one_subsection'}{'contents'}[0]{'parent'} = $result_trees{'one_subsection'};
$result_trees{'one_subsection'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_subsection'}{'contents'}[1]{'args'}[0];
$result_trees{'one_subsection'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'one_subsection'}{'contents'}[1];
$result_trees{'one_subsection'}{'contents'}[1]{'parent'} = $result_trees{'one_subsection'};

$result_texis{'one_subsection'} = '@subsection The subsection
';


$result_texts{'one_subsection'} = '1 The subsection
----------------
';

$result_sectioning{'one_subsection'} = {
  'level' => 2,
  'section_childs' => [
    {
      'cmdname' => 'subsection',
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'level' => 3,
      'number' => 1,
      'section_up' => {}
    }
  ]
};
$result_sectioning{'one_subsection'}{'section_childs'}[0]{'section_up'} = $result_sectioning{'one_subsection'};

$result_errors{'one_subsection'} = [];


$result_floats{'one_subsection'} = {};



$result_converted{'plaintext'}->{'one_subsection'} = '1 The subsection
----------------

';


$result_converted{'html'}->{'one_subsection'} = '<!DOCTYPE html>
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
<div class="subsection" id="The-subsection">
<h4 class="subsection">1 The subsection</h4>
<hr></div>



</body>
</html>
';

$result_converted_errors{'html'}->{'one_subsection'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
