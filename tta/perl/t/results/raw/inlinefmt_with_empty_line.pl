use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'inlinefmt_with_empty_line'} = '*document_root C1
 *before_node_section C3
  *paragraph C2
   {A }
   *0 @inlinefmt C2 l1
   |EXTRA
   |expand_index:{1}
   |format:{plaintext}
    *brace_arg C1
     {plaintext}
    *brace_arg C2
    |INFO
    |spaces_before_argument:
     |{ }
     {plaintext `` \\n}
     {empty_line:\\n}
  *paragraph C3
   *1 @lbracechar C1 l3
    *brace_container
   {  a.  Now html\\n}
   *2 @inlinefmt C2 l4
   |EXTRA
   |expand_index:{1}
   |format:{html}
    *brace_arg C1
     {html}
    *brace_arg C2
    |INFO
    |spaces_before_argument:
     |{ }
     {in \\n}
     {empty_line:\\n}
  *paragraph C3
   {<i>}
   *3 @acronym C1 l6
    *brace_arg C1
     {HTML}
   {</i>.\\n}
';


$result_texis{'inlinefmt_with_empty_line'} = 'A @inlinefmt{plaintext, plaintext `` 

}@lbracechar{}  a.  Now html
@inlinefmt{html, in 

}<i>@acronym{HTML}</i>.
';


$result_texts{'inlinefmt_with_empty_line'} = 'A plaintext " 

{  a.  Now html
in 

<i>HTML</i>.
';

$result_errors{'inlinefmt_with_empty_line'} = [
  {
    'error_line' => '@inlinefmt missing closing brace
',
    'line_nr' => 1,
    'text' => '@inlinefmt missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 3,
    'text' => 'misplaced }',
    'type' => 'error'
  },
  {
    'error_line' => '@inlinefmt missing closing brace
',
    'line_nr' => 4,
    'text' => '@inlinefmt missing closing brace',
    'type' => 'error'
  },
  {
    'error_line' => 'misplaced }
',
    'line_nr' => 6,
    'text' => 'misplaced }',
    'type' => 'error'
  }
];


$result_floats{'inlinefmt_with_empty_line'} = {};


1;
