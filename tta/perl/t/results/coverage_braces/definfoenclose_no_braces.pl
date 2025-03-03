use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'definfoenclose_no_braces'} = '*document_root C1
 *before_node_section C2
  *@definfoenclose C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{phoo|;|:}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {phoo,;,:}
  *paragraph C1
   *0 definfoenclose_command@phoo l2
   |INFO
   |command_name:{phoo}
   |EXTRA
   |begin:{;}
   |end:{:}
';


$result_texis{'definfoenclose_no_braces'} = '@definfoenclose phoo,;,:
@phoo';


$result_texts{'definfoenclose_no_braces'} = '';

$result_errors{'definfoenclose_no_braces'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => '@phoo expected braces
',
    'line_nr' => 2,
    'text' => '@phoo expected braces',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'definfoenclose_no_braces'} = ';:
';


$result_converted{'html_text'}->{'definfoenclose_no_braces'} = '<p>;:</p>';


$result_converted{'latex_text'}->{'definfoenclose_no_braces'} = '';


$result_converted{'docbook'}->{'definfoenclose_no_braces'} = '<para></para>';

1;
