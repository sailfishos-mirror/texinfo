use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'one_line'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'AB
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'one_line'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'one_line'}{'contents'}[0];
$result_trees{'one_line'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'one_line'}{'contents'}[0]{'contents'}[1];
$result_trees{'one_line'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'one_line'}{'contents'}[0];
$result_trees{'one_line'}{'contents'}[0]{'parent'} = $result_trees{'one_line'};

$result_texis{'one_line'} = 'AB
';


$result_texts{'one_line'} = 'AB
';

$result_errors{'one_line'} = [];


$result_floats{'one_line'} = {};



$result_converted{'html'}->{'one_line'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="Generator" content="texi2any">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
kbd {font-style: oblique}
span.smaller {font-size: smaller}
-->
</style>


</head>

<body lang="en">
<p>AB
</p><hr>
<p>
  <span class="smaller">This document was generated on <em>a sunny day</em> using <a href="http://www.gnu.org/software/texinfo/"><em>texi2any</em></a>.</span>
</p>


</body>
</html>
';

$result_converted_errors{'html'}->{'one_line'} = [
  {
    'error_line' => 'one_line.texi: warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
