use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'defindex_too_much_args'} = '*document_root C1
 *before_node_section C1
  *@defindex C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
    {chose    machin}
';


$result_texis{'defindex_too_much_args'} = '@defindex chose    machin';


$result_texts{'defindex_too_much_args'} = '';

$result_errors{'defindex_too_much_args'} = [
  {
    'error_line' => 'bad argument to @defindex: chose    machin
',
    'line_nr' => 1,
    'text' => 'bad argument to @defindex: chose    machin',
    'type' => 'error'
  }
];


1;
