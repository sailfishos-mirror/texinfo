use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'unclosed_verb_on_section_line'} = '*document_root C2
 *before_node_section
 *0 @section C1 l1 {in section @verb{Truc

Now text.
T}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E0]
  ||section_level:{1}
  *arguments_line C1
   *line_arg C2
    {in section }
    *@verb C1 l1
    |INFO
    |delimiter:{T}
     *brace_container C3
      {raw:ruc\\n}
      {raw:\\n}
      {raw:Now text.\\n}
';


$result_texis{'unclosed_verb_on_section_line'} = '@section in section @verb{Truc

Now text.
T}';


$result_texts{'unclosed_verb_on_section_line'} = '1 in section ruc

Now text.
=========================
';

$result_errors{'unclosed_verb_on_section_line'} = [
  {
    'error_line' => 'warning: @verb should not appear on @section line
',
    'line_nr' => 1,
    'text' => '@verb should not appear on @section line',
    'type' => 'warning'
  },
  {
    'error_line' => '@verb missing closing delimiter sequence: T}
',
    'line_nr' => 1,
    'text' => '@verb missing closing delimiter sequence: T}',
    'type' => 'error'
  }
];


1;
