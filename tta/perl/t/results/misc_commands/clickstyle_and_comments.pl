use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'clickstyle_and_comments'} = '*document_root C1
 *before_node_section C5
  *@comment C1
   *line_arg C3
    {spaces_before_argument: }
    {rawline_text:a}
    {spaces_after_argument:\\n}
  {spaces_before_paragraph: }
  *@comment C1
   *line_arg C3
    {spaces_before_argument: }
    {rawline_text:b}
    {spaces_after_argument:\\n}
  {spaces_before_paragraph: }
  *paragraph C14
   {nocmd}
   *@comment C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:c}
     {spaces_after_argument:\\n}
   { more than one word }
   *@comment C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:d}
     {spaces_after_argument:\\n}
   { }
   *@result l5
   *@comment C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:e}
     {spaces_after_argument:\\n}
   { }
   *@result l6
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg:   }
   *@comment C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:f}
     {spaces_after_argument:\\n}
   { }
   *@result l7
   |INFO
   |spaces_after_cmd_before_arg:
    |{spaces_after_cmd_before_arg: }
   {on the same line }
   *@comment C1
    *line_arg C3
     {spaces_before_argument: }
     {rawline_text:g}
     {spaces_after_argument:\\n}
';


$result_texis{'clickstyle_and_comments'} = '@comment a
 @comment b
 nocmd@comment c
 more than one word @comment d
 @result@comment e
 @result   @comment f
 @result on the same line @comment g
';


$result_texts{'clickstyle_and_comments'} = 'nocmd more than one word  => => =>on the same line ';

$result_errors{'clickstyle_and_comments'} = '* E l1|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l2|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l3|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l4|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l5|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l5|@result expected braces
 @result expected braces

* E l6|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l6|@result expected braces
 @result expected braces

* E l7|unknown command `clickstyle\'
 unknown command `clickstyle\'

* E l7|@result expected braces
 @result expected braces

';

$result_nodes_list{'clickstyle_and_comments'} = '';

$result_sections_list{'clickstyle_and_comments'} = '';

$result_sectioning_root{'clickstyle_and_comments'} = '';

$result_headings_list{'clickstyle_and_comments'} = '';

1;
