use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'two_setchapternewpage_odd_on'} = '*document_root C1
 *before_node_section C1
  *preamble_before_content C3
   *@setchapternewpage C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{odd}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {odd}
   {empty_line:\\n}
   *@setchapternewpage C1 l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{on}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {on}
';


$result_texis{'two_setchapternewpage_odd_on'} = '@setchapternewpage odd

@setchapternewpage on
';


$result_texts{'two_setchapternewpage_odd_on'} = '
';

$result_errors{'two_setchapternewpage_odd_on'} = [
  {
    'error_line' => 'warning: multiple @setchapternewpage
',
    'line_nr' => 3,
    'text' => 'multiple @setchapternewpage',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'two_setchapternewpage_odd_on'} = '\\pagestyle{double}%

\\makeatletter
\\patchcmd{\\chapter}{\\if@openright\\cleardoublepage\\else\\clearpage\\fi}{\\Texinfoplaceholder{setchapternewpage placeholder}\\clearpage}{}{}
\\makeatother
\\pagestyle{single}%
\\begin{document}
';

1;
