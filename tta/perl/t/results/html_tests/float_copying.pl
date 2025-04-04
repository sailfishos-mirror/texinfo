use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'float_copying'} = '*document_root C6
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C2
    {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
    {text_before_beginning:\\n}
  *preamble_before_content C4
   *@setfilename C1 float_copying.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{float_copying.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {float_copying.info}
   {empty_line:\\n}
   *@copying C4 float_copying.texi:l5
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{ \\n}
    {empty_line:\\n}
    *0 @float C7 float_copying.texi:l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |float_number:{1}
    |float_type:{Copyright notice}
    |global_command_number:{1}
    |is_target:{1}
    |normalized:{public-domain}
     *arguments_line C2
      *block_line_arg C1
       {Copyright notice}
      *block_line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
      |spaces_before_argument:
       |{ }
       {public domain}
     {empty_line:\\n}
     *paragraph C2
      {Public domain is not really a licence, as it means than \\n}
      {the author abandon his copyright.\\n}
     {empty_line:\\n}
     *@caption C1 float_copying.texi:l12
      *brace_command_context C6
       *paragraph C3
        {The Public Domain notice}
        *@footnote C1 float_copying.texi:l12
        |INFO
        |spaces_before_argument:
         |{\\n}
        |EXTRA
        |global_command_number:{1}
         *brace_command_context C7
          *paragraph C3
           {The caption copying footnote\\n}
           *1 @anchor C1 float_copying.texi:l14
           |EXTRA
           |is_target:{1}
           |normalized:{caption-copying-footnote-anchor}
            *brace_arg C1
            |EXTRA
            |element_region:{copying}
             {caption copying footnote anchor}
           {spaces_after_close_brace:\\n}
          {empty_line:\\n}
          *index_entry_command@cindex C1 float_copying.texi:l16
          |INFO
          |command_name:{cindex}
          |spaces_before_argument:
           |{ }
          |EXTRA
          |element_region:{copying}
          |index_entry:I{cp,1}
           *line_arg C1
           |INFO
           |spaces_after_argument:
            |{\\n}
            {indexed caption copying footnote}
          *index_entry_command@findex C1 float_copying.texi:l17
          |INFO
          |command_name:{findex}
          |spaces_before_argument:
           |{ }
          |EXTRA
          |element_region:{copying}
          |index_entry:I{fn,1}
           *line_arg C1
           |INFO
           |spaces_after_argument:
            |{\\n}
            {public domain function}
          {empty_line:\\n}
          *paragraph C3
           {see }
           *@ref C1 float_copying.texi:l19
            *brace_arg C1
            |EXTRA
            |node_content:{Copying and floats}
            |normalized:{Copying-and-floats}
             {Copying and floats}
           {.\\n}
          {empty_line:\\n}
        {\\n}
       {empty_line:\\n}
       *2 @anchor C1 float_copying.texi:l23
       |EXTRA
       |is_target:{1}
       |normalized:{public-domain-anchor}
        *brace_arg C1
        |EXTRA
        |element_region:{copying}
         {public domain anchor}
       {spaces_after_close_brace:\\n}
       *index_entry_command@cindex C1 float_copying.texi:l24
       |INFO
       |command_name:{cindex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{copying}
       |index_entry:I{cp,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {indexed caption}
       *index_entry_command@findex C1 float_copying.texi:l25
       |INFO
       |command_name:{findex}
       |spaces_before_argument:
        |{ }
       |EXTRA
       |element_region:{copying}
       |index_entry:I{fn,2}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{\\n}
         {indexed caption function}
     {spaces_after_close_brace:\\n}
     *@end C1 float_copying.texi:l27
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |text_arg:{float}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {float}
    *@end C1 float_copying.texi:l28
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{copying}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {copying}
   {empty_line:\\n}
 *3 @node C1 float_copying.texi:l30 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menus:EC[E5]
 |node_directions:D[next->E6]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *4 @top C12 float_copying.texi:l31 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_childs:EC[E7]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E4]
  ||section_level:{-1}
 |toplevel_directions:D[next->E7]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *index_entry_command@cindex C1 float_copying.texi:l33
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *paragraph C3
   {See the caption }
   *@ref C1 float_copying.texi:l35
    *brace_arg C1
    |EXTRA
    |node_content:{public domain anchor}
    |normalized:{public-domain-anchor}
     {public domain anchor}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {See the float }
   *@ref C1 float_copying.texi:l37
    *brace_arg C1
    |EXTRA
    |node_content:{public domain}
    |normalized:{public-domain}
     {public domain}
   {.\\n}
  {empty_line:\\n}
  *@insertcopying C1 float_copying.texi:l39
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *5 @menu C3 float_copying.texi:l41
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 float_copying.texi:l42
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Copying and floats}
    |normalized:{Copying-and-floats}
     {Copying and floats}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 float_copying.texi:l43
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *6 @node C1 float_copying.texi:l45 {Copying and floats}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E7]
 |associated_title_command:[E7]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E3]
 |node_directions:D[prev->E3|up->E3]
 |normalized:{Copying-and-floats}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copying and floats}
 *7 @appendix C20 float_copying.texi:l46 {Copying and floats}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E6]
 |associated_node:[E6]
 |section_directions:D[up->E4]
 |section_level:{1}
 |section_number:{A}
 |toplevel_directions:D[prev->E4|up->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copying and floats}
  {empty_line:\\n}
  *paragraph C2
   {In the appendix, we print the references and the copying once more\\n}
   {and the list of coyright notices (listoffloats).\\n}
  {empty_line:\\n}
  *paragraph C3
   {See the caption }
   *@ref C1 float_copying.texi:l51
    *brace_arg C1
    |EXTRA
    |node_content:{public domain anchor}
    |normalized:{public-domain-anchor}
     {public domain anchor}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {See the float }
   *@ref C1 float_copying.texi:l53
    *brace_arg C1
    |EXTRA
    |node_content:{public domain}
    |normalized:{public-domain}
     {public domain}
   {.\\n}
  {empty_line:\\n}
  *index_entry_command@cindex C1 float_copying.texi:l55
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E6]
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {listofloats}
  {empty_line:\\n}
  *@insertcopying C1 float_copying.texi:l57
  |EXTRA
  |global_command_number:{2}
   {rawline_arg:\\n}
  *@insertcopying C1 float_copying.texi:l58
  |EXTRA
  |global_command_number:{3}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *8 @subheading C1 float_copying.texi:l60
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {listoffloats}
  *@listoffloats C1 float_copying.texi:l61
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |float_type:{Copyright notice}
  |global_command_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Copyright notice}
  {empty_line:\\n}
  *9 @subheading C1 float_copying.texi:l63
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {printindex}
  *@printindex C1 float_copying.texi:l64
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  *@printindex C1 float_copying.texi:l65
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'float_copying'} = '\\input texinfo @c -*-texinfo-*-

@setfilename float_copying.info

@copying 

@float Copyright notice, public domain

Public domain is not really a licence, as it means than 
the author abandon his copyright.

@caption{The Public Domain notice@footnote{
The caption copying footnote
@anchor{caption copying footnote anchor}

@cindex indexed caption copying footnote
@findex public domain function

see @ref{Copying and floats}.

}

@anchor{public domain anchor}
@cindex indexed caption
@findex indexed caption function
}
@end float
@end copying

@node Top
@top Top

@cindex Top

See the caption @ref{public domain anchor}.

See the float @ref{public domain}.

@insertcopying

@menu
* Copying and floats::
@end menu

@node Copying and floats
@appendix Copying and floats

In the appendix, we print the references and the copying once more
and the list of coyright notices (listoffloats).

See the caption @ref{public domain anchor}.

See the float @ref{public domain}.

@cindex listofloats

@insertcopying
@insertcopying

@subheading listoffloats
@listoffloats Copyright notice

@subheading printindex
@printindex cp
@printindex fn

@bye
';


$result_texts{'float_copying'} = '

Top
***


See the caption public domain anchor.

See the float public domain.


* Copying and floats::

Appendix A Copying and floats
*****************************

In the appendix, we print the references and the copying once more
and the list of coyright notices (listoffloats).

See the caption public domain anchor.

See the float public domain.



listoffloats
------------

printindex
----------

';

$result_errors{'float_copying'} = [];


$result_floats{'float_copying'} = 'Copyright notice: 1
 F1: {public-domain}
  C: The Public Domain notice@footnote{
   The caption copying footnote
   @anchor{caption copying footnote anchor}
   
   @cindex indexed caption copying footnote
   @findex public domain function
   
   see @ref{Copying and floats}.
   
   }
   
   @anchor{public domain anchor}
   @cindex indexed caption
   @findex indexed caption function
';

$result_indices_sort_strings{'float_copying'} = 'cp:
 indexed caption
 indexed caption copying footnote
 listofloats
 Top
fn:
 indexed caption function
 public domain function
';

1;
