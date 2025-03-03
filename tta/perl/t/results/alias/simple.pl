use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'simple'} = '*document_root C1
 *before_node_section C7
  *@alias C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{myalias|code}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {myalias = code}
  {empty_line:\\n}
  *@alias C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |misc_args:A{o-theralias|verb}
   *line_arg C1
   |INFO
   |comment_at_end:
    |*@c C1
     |{rawline_arg: comment\\n}
   |spaces_after_argument:
    |{ }
    {o-theralias=verb}
  {empty_line:\\n}
  *paragraph C3
   {Should be code: }
   *0 @code C1 l5
   |INFO
   |alias_of:{myalias}
    *brace_container C1
     {code}
   {\\n}
  {empty_line:\\n}
  *paragraph C3
   {Should be verb: }
   *1 @verb C1 l7
   |INFO
   |alias_of:{o-theralias}
   |delimiter:{!}
    *brace_container C1
     {raw:verb}
   {\\n}
';


$result_texis{'simple'} = '@alias myalias = code

@alias o-theralias=verb @c comment

Should be code: @code{code}

Should be verb: @verb{!verb!}
';


$result_texts{'simple'} = '

Should be code: code

Should be verb: verb
';

$result_errors{'simple'} = [];


1;
