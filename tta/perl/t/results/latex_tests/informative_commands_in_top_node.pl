use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'informative_commands_in_top_node'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |node_number:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C7 l2 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top sectionning}
  {empty_line:\\n}
  *@paragraphindent C1 l4
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {5}
  {empty_line:\\n}
  *@evenfooting C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C11
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@thischapter
    { }
    *@thistitle
    { }
    *@|
    { }
    *@thisfile
    { }
    *@|
    { }
    *@code C1 l6
     *brace_container C1
      *@thischaptername
  *@paragraphindent C1 l7
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {2}
  {empty_line:\\n}
 *2 @node C1 l9 {next node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |node_number:{2}
 |normalized:{next-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {next node}
 *3 @chapter C3 l10 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |section_directions:D[up->E1]
 |section_heading_number:{1}
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C1
   {In chapter\\n}
';


$result_texis{'informative_commands_in_top_node'} = '@node Top
@top top sectionning

@paragraphindent 5

@evenfooting @thischapter @thistitle @| @thisfile @| @code{@thischaptername}
@paragraphindent 2

@node next node
@chapter chap

In chapter
';


$result_texts{'informative_commands_in_top_node'} = 'top sectionning
***************



1 chap
******

In chapter
';

$result_errors{'informative_commands_in_top_node'} = [];


$result_nodes_list{'informative_commands_in_top_node'} = '1|Top
 associated_section: top sectionning
2|next node
 associated_section: 1 chap
';

$result_sections_list{'informative_commands_in_top_node'} = '1|top sectionning
 associated_node: Top
2|chap
 associated_node: next node
';


$result_converted{'latex_text'}->{'informative_commands_in_top_node'} = '\\begin{document}
\\label{anchor:Top}%
\\setlength{\\parindent}{5em}
\\newpagestyle{custom}{%
\\setfoot[\\chaptername{} \\thechapter{} \\chaptertitle{} \\Texinfosettitle{}][\\Texinfotheinclude{}][\\texttt{\\chaptertitle{}}]%
{}{}{}%
}%
\\pagestyle{custom}%
\\setlength{\\parindent}{2em}
\\chapter{{chap}}
\\label{anchor:next-node}%

In chapter
';

1;
