use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'also_not_line'} = '*document_root C1
 *before_node_section C23
  {empty_line:\\n}
  {empty_line:\\n}
  *paragraph C1
   {page }
  *@page C1
   {rawline_arg: \\n}
  *paragraph C6
   {noindent }
   *@noindent l4
   {ignorable_spaces_after_command: }
   {refill }
   *@refill
   { something\\n}
  {empty_line:\\n}
  *@noindent l6
  {ignorable_spaces_after_command:     }
  *paragraph C8
  |EXTRA
  |noindent:{1}
   {noindent at beginning of line\\n}
   *@noindent l7
   {ignorable_spaces_after_command:  \\n}
   {noindent on the preceding line\\n}
   {  }
   *@noindent l9
   {ignorable_spaces_after_command:    }
   {noindent after space at beginning of line\\n}
  *@page C1
   {rawline_arg:         page at beginning of line\\n}
  *@page C1
   {rawline_arg:\\n}
  *paragraph C1
   {After page on its own line.\\n}
  {empty_line:\\n}
  *paragraph C1
   {page }
  *@page C1
   {rawline_arg:   \\n}
  *paragraph C8
   {noindent }
   *@noindent l15
   {ignorable_spaces_after_command:    }
   {refill }
   *@refill
   { \\n}
   {novalidate }
   *@novalidate C1 l16
    {rawline_arg: something\\n}
  {empty_line:\\n}
  *0 @subheading C1 l18
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |heading_number:{1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {special}
  {empty_line:\\n}
  *paragraph C3
   {Only valid between iftex:\\n}
   {vskip }
   *@vskip C1
    {rawline_arg: \\n}
  {empty_line:\\n}
  *paragraph C1
   {exdent }
  *@exdent C1 l23
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {line after exdent}
';


$result_texis{'also_not_line'} = '

page @page 
noindent @noindent refill @refill something

@noindent     noindent at beginning of line
@noindent  
noindent on the preceding line
  @noindent    noindent after space at beginning of line
@page         page at beginning of line
@page
After page on its own line.

page @page   
noindent @noindent    refill @refill 
novalidate @novalidate something

@subheading special

Only valid between iftex:
vskip @vskip 

exdent @exdent line after exdent
';


$result_texts{'also_not_line'} = '

page 
noindent refill  something

noindent at beginning of line
noindent on the preceding line
  noindent after space at beginning of line


After page on its own line.

page 
noindent refill  
novalidate 
special
-------

Only valid between iftex:
vskip 
exdent line after exdent
';

$result_errors{'also_not_line'} = [
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 4,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete
',
    'line_nr' => 4,
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 7,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 9,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @page should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@page should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @noindent is useless inside of a paragraph
',
    'line_nr' => 15,
    'text' => '@noindent is useless inside of a paragraph',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @refill is obsolete
',
    'line_nr' => 15,
    'text' => '@refill is obsolete',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @novalidate should only appear at the beginning of a line
',
    'line_nr' => 16,
    'text' => '@novalidate should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @vskip should only appear at the beginning of a line
',
    'line_nr' => 21,
    'text' => '@vskip should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 23,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_nodes_list{'also_not_line'} = '';

$result_sections_list{'also_not_line'} = '';

1;
