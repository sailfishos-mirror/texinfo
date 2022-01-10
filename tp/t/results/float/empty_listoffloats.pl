use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'empty_listoffloats'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [],
          'parent' => {},
          'type' => 'preamble_before_content'
        },
        {
          'args' => [
            {
              'contents' => [],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'listoffloats',
          'extra' => {
            'type' => {
              'normalized' => ''
            }
          },
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
$result_trees{'empty_listoffloats'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'empty_listoffloats'}{'contents'}[0];
$result_trees{'empty_listoffloats'}{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'empty_listoffloats'}{'contents'}[0]{'contents'}[1];
$result_trees{'empty_listoffloats'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'empty_listoffloats'}{'contents'}[0];
$result_trees{'empty_listoffloats'}{'contents'}[0]{'parent'} = $result_trees{'empty_listoffloats'};

$result_texis{'empty_listoffloats'} = '@listoffloats
';


$result_texts{'empty_listoffloats'} = '';

$result_errors{'empty_listoffloats'} = [];


$result_floats{'empty_listoffloats'} = {};



$result_converted{'plaintext'}->{'empty_listoffloats'} = '';


$result_converted{'html'}->{'empty_listoffloats'} = '<!DOCTYPE html>
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
-->
</style>


</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'empty_listoffloats'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
