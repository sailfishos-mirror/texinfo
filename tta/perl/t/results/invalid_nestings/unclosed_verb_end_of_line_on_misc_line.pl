use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'unclosed_verb_end_of_line_on_misc_line'} = '*document_root C1
 *before_node_section C1
  *@setfilename C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |text_arg:{name }
   *line_arg C2
    {name }
    *0 @verb C1 l1
    |INFO
    |delimiter:{}
     *brace_container C1
      {raw:\\n}
';


$result_texis{'unclosed_verb_end_of_line_on_misc_line'} = '@setfilename name @verb{
}';


$result_texts{'unclosed_verb_end_of_line_on_misc_line'} = '';

$result_errors{'unclosed_verb_end_of_line_on_misc_line'} = [
  {
    'error_line' => 'warning: @verb should not appear in @setfilename
',
    'line_nr' => 1,
    'text' => '@verb should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => '@verb without associated character
',
    'line_nr' => 1,
    'text' => '@verb without associated character',
    'type' => 'error'
  },
  {
    'error_line' => '@verb missing closing brace
',
    'line_nr' => 1,
    'text' => '@verb missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @setfilename: name @verb{
}
',
    'line_nr' => 1,
    'text' => 'bad argument to @setfilename: name @verb{
}',
    'type' => 'error'
  }
];


$result_floats{'unclosed_verb_end_of_line_on_misc_line'} = {};


1;
