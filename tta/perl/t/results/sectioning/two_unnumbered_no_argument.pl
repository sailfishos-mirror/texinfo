use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_unnumbered_no_argument'} = '*document_root C3
 *before_node_section C1
  *preamble_before_content
 *0 @unnumbered C1 l1
 |EXTRA
 |section_directions:D[next->E1]
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0|E1]
  ||section_level:{0}
 |toplevel_directions:D[next->E1]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
 *1 @unnumbered C1 l2
 |EXTRA
 |section_directions:D[prev->E0]
 |section_level:{1}
 |toplevel_directions:D[prev->E0]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
';


$result_texis{'two_unnumbered_no_argument'} = '@unnumbered
@unnumbered
';


$result_texts{'two_unnumbered_no_argument'} = '';

$result_errors{'two_unnumbered_no_argument'} = [
  {
    'error_line' => 'warning: @unnumbered missing argument
',
    'line_nr' => 1,
    'text' => '@unnumbered missing argument',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @unnumbered missing argument
',
    'line_nr' => 2,
    'text' => '@unnumbered missing argument',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'two_unnumbered_no_argument'} = '';


$result_converted{'html'}->{'two_unnumbered_no_argument'} = '<!DOCTYPE html>
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



</head>

<body lang="">
<div class="unnumbered-level-extent">
</div>
<div class="unnumbered-level-extent">
</div>



</body>
</html>
';

$result_converted_errors{'html'}->{'two_unnumbered_no_argument'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'two_unnumbered_no_argument'} = '<unnumbered><sectiontitle></sectiontitle>
</unnumbered>
<unnumbered><sectiontitle></sectiontitle>
</unnumbered>
';

1;
