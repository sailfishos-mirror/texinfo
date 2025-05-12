use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'test_two_include'} = '*document_root C1
 *before_node_section C9
  *paragraph C5
   {Include version\\n}
   >SOURCEMARKS
   >include<start;1><p:16>
    >*@include C1 l2
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{version.texi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{version.texi}
   *@set C2
   |INFO
   |arg_line:{ UPDATED 28 March 2002\\n}
    {rawline_arg:UPDATED}
    {rawline_arg:28 March 2002}
   *@set C2
   |INFO
   |arg_line:{ UPDATED-MONTH March 2002\\n}
    {rawline_arg:UPDATED-MONTH}
    {rawline_arg:March 2002}
   *@set C2
   |INFO
   |arg_line:{ EDITION 4.2\\n}
    {rawline_arg:EDITION}
    {rawline_arg:4.2}
   *@set C2
   |INFO
   |arg_line:{ VERSION 4.2\\n}
    {rawline_arg:VERSION}
    {rawline_arg:4.2}
  {empty_line:\\n}
  *@set C2
  |INFO
  |arg_line:{ VERSION_DATE October 2002\\n}
   {rawline_arg:VERSION_DATE}
   {rawline_arg:October 2002}
  *@set C2
  |INFO
  |arg_line:{ SHORT_VERSION 2-0\\n}
   {rawline_arg:SHORT_VERSION}
   {rawline_arg:2-0}
  *@set C2
  |INFO
  |arg_line:{ RPM_VERSION 2.0.4\\n}
  >SOURCEMARKS
  >include<end;1>
   {rawline_arg:RPM_VERSION}
   {rawline_arg:2.0.4}
  {empty_line:\\n}
  *paragraph C2
   {include inc_file\\n}
   >SOURCEMARKS
   >include<start;2><p:17>
    >*@include C1 l5
    >|INFO
    >|spaces_before_argument:
     >|{ }
    >|EXTRA
    >|text_arg:{inc_file.texi}
     >*line_arg C1
     >|INFO
     >|spaces_after_argument:
      >|{\\n}
      >{inc_file.texi}
   {In included file.\\n}
   >SOURCEMARKS
   >include<end;2><p:18>
  {empty_line:\\n}
  *paragraph C1
   {After inclusion.\\n}
';


$result_texis{'test_two_include'} = 'Include version
@set UPDATED 28 March 2002
@set UPDATED-MONTH March 2002
@set EDITION 4.2
@set VERSION 4.2

@set VERSION_DATE October 2002
@set SHORT_VERSION 2-0
@set RPM_VERSION 2.0.4

include inc_file
In included file.

After inclusion.
';


$result_texts{'test_two_include'} = 'Include version


include inc_file
In included file.

After inclusion.
';

$result_errors{'test_two_include'} = [];


$result_nodes_list{'test_two_include'} = '';

$result_sections_list{'test_two_include'} = '';

1;
