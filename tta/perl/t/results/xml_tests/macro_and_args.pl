use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'macro_and_args'} = '*document_root C1
 *before_node_section C3
  *0 @macro C2 l1
  |EXTRA
  |macro_name:{good}
  |misc_args:A{aaa|2b-bb}
   *arguments_line C1
    {macro_line: good { aaa, 2b-bb}\\n}
   *@end C1 l2
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
  {empty_line:\\n}
  *1 @macro C2 l4
  |EXTRA
  |invalid_syntax:{1}
  |macro_name:{bad}
  |misc_args:A{ggg"@@^_ ff|nnn_b|ccc v}
   *arguments_line C1
    {macro_line: bad { ggg"@@^_ ff, nnn_b, ccc v}\\n}
   *@end C1 l5
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{macro}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {macro}
';


$result_texis{'macro_and_args'} = '@macro good { aaa, 2b-bb}
@end macro

@macro bad { ggg"@@^_ ff, nnn_b, ccc v}
@end macro
';


$result_texts{'macro_and_args'} = '
';

$result_errors{'macro_and_args'} = [
  {
    'error_line' => 'bad or empty @macro formal argument: ggg"@@^_ ff
',
    'line_nr' => 4,
    'text' => 'bad or empty @macro formal argument: ggg"@@^_ ff',
    'type' => 'error'
  },
  {
    'error_line' => 'bad or empty @macro formal argument: ccc v
',
    'line_nr' => 4,
    'text' => 'bad or empty @macro formal argument: ccc v',
    'type' => 'error'
  }
];



$result_converted{'xml'}->{'macro_and_args'} = '<macro name="good" line=" good { aaa, 2b-bb}" endspaces=" "><formalarg>aaa</formalarg><formalarg>2b-bb</formalarg>
</macro>

<macro name="bad" line=" bad { ggg&quot;@@^_ ff, nnn_b, ccc v}" endspaces=" "><formalarg>ggg&quot;@@^_ ff</formalarg><formalarg>nnn_b</formalarg><formalarg>ccc v</formalarg>
</macro>
';

1;
