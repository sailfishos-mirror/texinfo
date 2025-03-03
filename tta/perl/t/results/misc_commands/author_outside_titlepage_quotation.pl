use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'author_outside_titlepage_quotation'} = '*document_root C1
 *before_node_section C1
  *0 @author C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Some One}
';


$result_texis{'author_outside_titlepage_quotation'} = '@author Some One
';


$result_texts{'author_outside_titlepage_quotation'} = 'Some One
';

$result_errors{'author_outside_titlepage_quotation'} = [
  {
    'error_line' => 'warning: @author not meaningful outside `@titlepage\' and `@quotation\' environments
',
    'line_nr' => 1,
    'text' => '@author not meaningful outside `@titlepage\' and `@quotation\' environments',
    'type' => 'warning'
  }
];


1;
