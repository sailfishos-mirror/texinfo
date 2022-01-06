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
      'type' => 'before_node_section'
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
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 1,
        'macro' => ''
      },
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
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'subsection',
        'extra' => {},
        'structure' => {
          'section_level' => 3,
          'section_number' => 1,
          'section_up' => {}
        }
      }
    ],
    'section_level' => 2
  }
};
$result_sectioning{'one_subsection'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'one_subsection'};

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
kbd {font-style: oblique}
-->
</style>


</head>

<body lang="en">
<div class="subsection" id="The-subsection">
<h4 class="subsection">1 The subsection</h4>
</div>



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
