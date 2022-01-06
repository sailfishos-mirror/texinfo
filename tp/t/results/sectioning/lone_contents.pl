use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'lone_contents'} = {
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
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'lone_contents'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'lone_contents'}{'contents'}[0]{'contents'}[0];
$result_trees{'lone_contents'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'lone_contents'}{'contents'}[0];
$result_trees{'lone_contents'}{'contents'}[0]{'parent'} = $result_trees{'lone_contents'};

$result_texis{'lone_contents'} = '@contents
';


$result_texts{'lone_contents'} = '';

$result_errors{'lone_contents'} = [];


$result_floats{'lone_contents'} = {};



$result_converted{'plaintext'}->{'lone_contents'} = '';


$result_converted{'html'}->{'lone_contents'} = '<!DOCTYPE html>
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
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'lone_contents'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
