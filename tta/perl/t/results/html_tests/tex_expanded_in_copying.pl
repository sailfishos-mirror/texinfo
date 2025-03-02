use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'tex_expanded_in_copying'} = '*document_root C1
 *before_node_section C1
  *0 @copying C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @tex C3 l2
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *rawpreformatted C1
     {aa\\n}
    *@end C1 l4
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{tex}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {tex}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{copying}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {copying}
';


$result_texis{'tex_expanded_in_copying'} = '@copying
@tex
aa
@end tex
@end copying
';


$result_texts{'tex_expanded_in_copying'} = '';

$result_errors{'tex_expanded_in_copying'} = [];


$result_floats{'tex_expanded_in_copying'} = {};



$result_converted{'html'}->{'tex_expanded_in_copying'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, https://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- aa -->
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">



</head>

<body lang="en">



</body>
</html>
';

$result_converted_errors{'html'}->{'tex_expanded_in_copying'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
