use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'alias_of_definfoenclose'} = '*document_root C1
 *before_node_section C5
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
  {empty_line:\\n}
  *@alias C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{new|phoo}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {new = phoo}
  {empty_line:\\n}
  *paragraph C2
   *0 definfoenclose_command@phoo C1 l5
   |INFO
   |alias_of:{new}
   |command_name:{phoo}
   |EXTRA
   |begin:{;}
   |end:{:}
    *brace_container C1
     {aa}
   {\\n}
';


$result_texis{'alias_of_definfoenclose'} = '@definfoenclose phoo,;,:

@alias new = phoo

@phoo{aa}
';


$result_texts{'alias_of_definfoenclose'} = '

aa
';

$result_errors{'alias_of_definfoenclose'} = [
  {
    'error_line' => 'warning: @definfoenclose is obsolete
',
    'line_nr' => 1,
    'text' => '@definfoenclose is obsolete',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'alias_of_definfoenclose'} = ';aa:
';

1;
