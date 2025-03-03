use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'all_empty_def'} = '*document_root C1
 *before_node_section C17
  *0 @deffn C2 l1
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffn}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *1 @defvr C2 l4
   *def_line C1 l4
   |EXTRA
   |def_command:{defvr}
   |original_def_cmdname:{defvr}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defvr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defvr}
  {empty_line:\\n}
  *2 @deftypefn C2 l7
   *def_line C1 l7
   |EXTRA
   |def_command:{deftypefn}
   |original_def_cmdname:{deftypefn}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
  {empty_line:\\n}
  *3 @deftypeop C2 l10
   *def_line C1 l10
   |EXTRA
   |def_command:{deftypeop}
   |original_def_cmdname:{deftypeop}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l11
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *4 @deftypevr C2 l13
   *def_line C1 l13
   |EXTRA
   |def_command:{deftypevr}
   |original_def_cmdname:{deftypevr}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l14
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypevr}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypevr}
  {empty_line:\\n}
  *5 @defcv C2 l16
   *def_line C1 l16
   |EXTRA
   |def_command:{defcv}
   |original_def_cmdname:{defcv}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defcv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defcv}
  {empty_line:\\n}
  *6 @deftypecv C2 l19
   *def_line C1 l19
   |EXTRA
   |def_command:{deftypecv}
   |original_def_cmdname:{deftypecv}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypecv}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypecv}
  {empty_line:\\n}
  *7 @defop C2 l22
   *def_line C1 l22
   |EXTRA
   |def_command:{defop}
   |original_def_cmdname:{defop}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l23
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
  {empty_line:\\n}
  *8 @deftp C2 l25
   *def_line C1 l25
   |EXTRA
   |def_command:{deftp}
   |original_def_cmdname:{deftp}
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *@end C1 l26
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftp}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftp}
';


$result_texis{'all_empty_def'} = '@deffn
@end deffn

@defvr
@end defvr

@deftypefn
@end deftypefn

@deftypeop
@end deftypeop

@deftypevr
@end deftypevr

@defcv
@end defcv

@deftypecv
@end deftypecv

@defop
@end defop

@deftp
@end deftp
';


$result_texts{'all_empty_def'} = '







';

$result_errors{'all_empty_def'} = [
  {
    'error_line' => 'warning: missing category for @deffn
',
    'line_nr' => 1,
    'text' => 'missing category for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @defvr
',
    'line_nr' => 4,
    'text' => 'missing category for @defvr',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @deftypefn
',
    'line_nr' => 7,
    'text' => 'missing category for @deftypefn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @deftypeop
',
    'line_nr' => 10,
    'text' => 'missing category for @deftypeop',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @deftypevr
',
    'line_nr' => 13,
    'text' => 'missing category for @deftypevr',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @defcv
',
    'line_nr' => 16,
    'text' => 'missing category for @defcv',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @deftypecv
',
    'line_nr' => 19,
    'text' => 'missing category for @deftypecv',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @defop
',
    'line_nr' => 22,
    'text' => 'missing category for @defop',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing category for @deftp
',
    'line_nr' => 25,
    'text' => 'missing category for @deftp',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'all_empty_def'} = 'This is , produced from .


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'all_empty_def'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'text' => 'document without nodes',
    'type' => 'warning'
  }
];



$result_converted{'html'}->{'all_empty_def'} = '<!DOCTYPE html>
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

<body lang="en">
<dl class="first-deffn def-block">
<dt class="deffn def-line"></dt>
</dl>

<dl class="first-defvr def-block">
<dt class="defvr def-line"></dt>
</dl>

<dl class="first-deftypefn def-block">
<dt class="deftypefn def-line"></dt>
</dl>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line"></dt>
</dl>

<dl class="first-deftypevr def-block">
<dt class="deftypevr def-line"></dt>
</dl>

<dl class="first-defcv def-block">
<dt class="defcv def-line"></dt>
</dl>

<dl class="first-deftypecv def-block">
<dt class="deftypecv def-line"></dt>
</dl>

<dl class="first-defop def-block">
<dt class="defop def-line"></dt>
</dl>

<dl class="first-deftp def-block">
<dt class="deftp def-line"></dt>
</dl>



</body>
</html>
';

$result_converted_errors{'html'}->{'all_empty_def'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'all_empty_def'} = '<deffn endspaces=" "><definitionterm></definitionterm>
</deffn>

<defvr endspaces=" "><definitionterm></definitionterm>
</defvr>

<deftypefn endspaces=" "><definitionterm></definitionterm>
</deftypefn>

<deftypeop endspaces=" "><definitionterm></definitionterm>
</deftypeop>

<deftypevr endspaces=" "><definitionterm></definitionterm>
</deftypevr>

<defcv endspaces=" "><definitionterm></definitionterm>
</defcv>

<deftypecv endspaces=" "><definitionterm></definitionterm>
</deftypecv>

<defop endspaces=" "><definitionterm></definitionterm>
</defop>

<deftp endspaces=" "><definitionterm></definitionterm>
</deftp>
';

1;
