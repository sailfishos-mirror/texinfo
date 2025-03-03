use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'verb'} = '*document_root C1
 *before_node_section C8
  *preamble_before_content
  *paragraph C2
   *0 @verb C1 l1
   |INFO
   |delimiter:{!}
    *brace_container C1
     {raw:a}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *1 @verb C1 l3
   |INFO
   |delimiter:{!}
    *brace_container C1
     {raw:a!a}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *2 @verb C1 l5
   |INFO
   |delimiter:{!}
    *brace_container C2
     {raw:a\\n}
     {raw:b}
   {\\n}
  {empty_line:\\n}
  *paragraph C2
   *3 @verb C1 l8
   |INFO
   |delimiter:{%}
    *brace_container C1
     {raw:a%|!:@b}
   {\\n}
';


$result_texis{'verb'} = '@verb{!a!}

@verb{!a!a!}

@verb{!a
b!}

@verb{%a%|!:@b%}
';


$result_texts{'verb'} = 'a

a!a

a
b

a%|!:@b
';

$result_errors{'verb'} = [];



$result_converted{'latex_text'}->{'verb'} = '\\begin{document}
\\verb!a!

\\verb|a!a|

\\verb!a!\\\\
\\verb!b!

\\verb%%
';

$result_converted_errors{'latex_text'}->{'verb'} = [
  {
    'error_line' => 'warning: \\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'
',
    'line_nr' => 8,
    'text' => '\\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'',
    'type' => 'warning'
  }
];


$result_converted_errors{'file_latex'}->{'verb'} = [
  {
    'error_line' => 'warning: \\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'
',
    'line_nr' => 8,
    'text' => '\\verb delimiter `%\' (for LaTeX) used in text `a%|!:@b\'',
    'type' => 'warning'
  }
];


1;
