use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_brace'} = '*document_root C1
 *before_node_section C1
  *paragraph C6
   *0 @TeX l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   {and }
   *1 @code l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   {code and }
   *2 @footnote l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   {footnote }
';


$result_texis{'no_brace'} = '@TeX and @code code and @footnote footnote ';


$result_texts{'no_brace'} = 'TeXand code and footnote ';

$result_errors{'no_brace'} = [
  {
    'error_line' => '@TeX expected braces
',
    'line_nr' => 1,
    'text' => '@TeX expected braces',
    'type' => 'error'
  },
  {
    'error_line' => '@code expected braces
',
    'line_nr' => 1,
    'text' => '@code expected braces',
    'type' => 'error'
  },
  {
    'error_line' => '@footnote expected braces
',
    'line_nr' => 1,
    'text' => '@footnote expected braces',
    'type' => 'error'
  }
];


$result_floats{'no_brace'} = {};



$result_converted{'html_text'}->{'no_brace'} = '<p>TeXand code and footnote </p>';

1;
