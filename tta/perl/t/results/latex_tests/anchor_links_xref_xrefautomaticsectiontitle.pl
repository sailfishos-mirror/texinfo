use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'anchor_links_xref_xrefautomaticsectiontitle'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C4 l1 {node before}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{node-before}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node before}
  {empty_line:\\n}
  *paragraph C3
   {In node before\\n}
   *1 @anchor C1 l4
   |EXTRA
   |is_target:{1}
   |normalized:{anch_003a-in-node-before}
    *brace_arg C1
     {anch: in node before}
   {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *2 @node C1 l6 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |associated_title_command:[E3]
 |is_target:{1}
 |node_directions:D[next->E7]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *3 @top C4 l7 {top sectionning}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E2]
 |associated_node:[E2]
 |section_childs:EC[E8]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E3]
  ||section_level:{-1}
 |toplevel_directions:D[next->E8]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top sectionning}
  {empty_line:\\n}
  *paragraph C3
   {in node Top\\n}
   *4 @anchor C1 l10
   |EXTRA
   |is_target:{1}
   |normalized:{anch_003a-in-node-top}
    *brace_arg C1
     {anch: in node top}
   {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *5 @node C4 l12 {after}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{after}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {after}
  {empty_line:\\n}
  *paragraph C3
   {in node after\\n}
   *6 @anchor C1 l15
   |EXTRA
   |is_target:{1}
   |normalized:{anch_003a-in-node-after}
    *brace_arg C1
     {anch: in node after}
   {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *7 @node C1 l17 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E2]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *8 @chapter C9 l18 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[up->E3]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E3|up->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *paragraph C3
   {in chap\\n}
   *9 @anchor C1 l21
   |EXTRA
   |is_target:{1}
   |normalized:{anch_003a-in-chap}
    *brace_arg C1
     {anch: in chap}
   {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  *paragraph C8
   *@xref C1 l24
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node before}
    |normalized:{anch_003a-in-node-before}
     {anch: in node before}
   {.\\n}
   *@xref C1 l25
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node top}
    |normalized:{anch_003a-in-node-top}
     {anch: in node top}
   {.\\n}
   *@xref C1 l26
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node after}
    |normalized:{anch_003a-in-node-after}
     {anch: in node after}
   {.\\n}
   *@xref C1 l27
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in chap}
    |normalized:{anch_003a-in-chap}
     {anch: in chap}
   {.\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l29
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  *paragraph C8
   *@xref C1 l30
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node before}
    |normalized:{anch_003a-in-node-before}
     {anch: in node before}
   {.\\n}
   *@xref C1 l31
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node top}
    |normalized:{anch_003a-in-node-top}
     {anch: in node top}
   {.\\n}
   *@xref C1 l32
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in node after}
    |normalized:{anch_003a-in-node-after}
     {anch: in node after}
   {.\\n}
   *@xref C1 l33
    *brace_arg C1
    |EXTRA
    |node_content:{anch: in chap}
    |normalized:{anch_003a-in-chap}
     {anch: in chap}
   {.\\n}
';


$result_texis{'anchor_links_xref_xrefautomaticsectiontitle'} = '@node node before

In node before
@anchor{anch: in node before}

@node Top
@top top sectionning

in node Top
@anchor{anch: in node top}

@node after

in node after
@anchor{anch: in node after}

@node chap
@chapter chap

in chap
@anchor{anch: in chap}

@xrefautomaticsectiontitle on
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.

@xrefautomaticsectiontitle off
@xref{anch: in node before}.
@xref{anch: in node top}.
@xref{anch: in node after}.
@xref{anch: in chap}.
';


$result_texts{'anchor_links_xref_xrefautomaticsectiontitle'} = '
In node before

top sectionning
***************

in node Top


in node after

1 chap
******

in chap

anch: in node before.
anch: in node top.
anch: in node after.
anch: in chap.

anch: in node before.
anch: in node top.
anch: in node after.
anch: in chap.
';

$result_errors{'anchor_links_xref_xrefautomaticsectiontitle'} = [
  {
    'error_line' => 'warning: node `node before\' unreferenced
',
    'line_nr' => 1,
    'text' => 'node `node before\' unreferenced',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `after\' unreferenced
',
    'line_nr' => 12,
    'text' => 'node `after\' unreferenced',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'anchor_links_xref_xrefautomaticsectiontitle'} = '\\begin{document}
\\label{anchor:node-before}%

In node before
\\label{anchor:anch_003a-in-node-before}%

\\label{anchor:Top}%
\\label{anchor:anch_003a-in-node-top}%
\\label{anchor:after}%

in node after
\\label{anchor:anch_003a-in-node-after}%

\\chapter{{chap}}
\\label{anchor:chap}%

in chap
\\label{anchor:anch_003a-in-chap}%

See \\hyperref[anchor:anch_003a-in-node-before]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-before}}.
See \\hyperref[anchor:anch_003a-in-node-top]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-top}}.
See \\hyperref[anchor:anch_003a-in-node-after]{[top sectionning], page~\\pageref*{anchor:anch_003a-in-node-after}}.
See \\hyperref[anchor:anch_003a-in-chap]{[chap], page~\\pageref*{anchor:anch_003a-in-chap}}.

See \\hyperref[anchor:anch_003a-in-node-before]{[anch: in node before], page~\\pageref*{anchor:anch_003a-in-node-before}}.
See \\hyperref[anchor:anch_003a-in-node-top]{[anch: in node top], page~\\pageref*{anchor:anch_003a-in-node-top}}.
See \\hyperref[anchor:anch_003a-in-node-after]{[anch: in node after], page~\\pageref*{anchor:anch_003a-in-node-after}}.
See \\hyperref[anchor:anch_003a-in-chap]{[anch: in chap], page~\\pageref*{anchor:anch_003a-in-chap}}.
';

1;
