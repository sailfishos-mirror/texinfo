use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'titlepage_and_setchapternewpage_odd'} = '*document_root C1
 *before_node_section C1
  *preamble_before_content C4
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
   *0 @titlepage C3 l3
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *paragraph C1
     {in titlepage\\n}
    *@end C1 l5
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{titlepage}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {titlepage}
   {empty_line:\\n}
';


$result_texis{'titlepage_and_setchapternewpage_odd'} = '@setchapternewpage odd

@titlepage
in titlepage
@end titlepage

';


$result_texts{'titlepage_and_setchapternewpage_odd'} = '

';

$result_errors{'titlepage_and_setchapternewpage_odd'} = [];



$result_converted{'latex_text'}->{'titlepage_and_setchapternewpage_odd'} = '\\pagestyle{double}%


\\begin{document}

\\frontmatter
\\pagestyle{empty}%
\\begin{titlepage}
\\begingroup
\\newskip\\titlepagetopglue \\titlepagetopglue = 1.5in
\\newskip\\titlepagebottomglue \\titlepagebottomglue = 2pc
\\setlength{\\parindent}{0pt}
% Leave some space at the very top of the page.
    \\vglue\\titlepagetopglue
in titlepage
\\endgroup
\\end{titlepage}
\\mainmatter
\\pagestyle{double}%
';

1;
