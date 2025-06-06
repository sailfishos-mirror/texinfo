use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'unclosed_verb_on_misc_line'} = '*document_root C1
 *before_node_section C1
  *@setfilename C1 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
  |EXTRA
  |text_arg:{name }
   *line_arg C2
    {name }
    *@verb C1 l1
    |INFO
    |delimiter:{f}
     *brace_container C1
      {raw:ile.texi}
';


$result_texis{'unclosed_verb_on_misc_line'} = '@setfilename name @verb{file.texif}';


$result_texts{'unclosed_verb_on_misc_line'} = '';

$result_errors{'unclosed_verb_on_misc_line'} = [
  {
    'error_line' => 'warning: @verb should not appear in @setfilename
',
    'line_nr' => 1,
    'text' => '@verb should not appear in @setfilename',
    'type' => 'warning'
  },
  {
    'error_line' => '@verb missing closing delimiter sequence: f}
',
    'line_nr' => 1,
    'text' => '@verb missing closing delimiter sequence: f}',
    'type' => 'error'
  },
  {
    'error_line' => 'bad argument to @setfilename: name @verb{file.texif}
',
    'line_nr' => 1,
    'text' => 'bad argument to @setfilename: name @verb{file.texif}',
    'type' => 'error'
  }
];


$result_nodes_list{'unclosed_verb_on_misc_line'} = '';

$result_sections_list{'unclosed_verb_on_misc_line'} = '';

$result_sectioning_root{'unclosed_verb_on_misc_line'} = '';

$result_headings_list{'unclosed_verb_on_misc_line'} = '';

1;
