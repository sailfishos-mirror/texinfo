use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'set_on_item_line'} = '*document_root C1
 *before_node_section C3
  *@table C5 l1
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@code l1
   *table_entry C2
    *table_term C1
     *@item C1 l2
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{ca|b}
        *line_arg C1
        |INFO
        |comment_at_end:
         |*@c C1
          |*line_arg C1
          ||INFO
          ||spaces_after_argument:
           ||{spaces_after_argument:\\n}
           |{}
         {ca b}
    *table_definition C1
     *paragraph C2
      {item text\\n}
      {in item\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l5
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C2
       {cjj }
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{cj|}
        *line_arg C1
        |INFO
        |comment_at_end:
         |*@c C1
          |*line_arg C1
          ||INFO
          ||spaces_after_argument:
           ||{spaces_after_argument:\\n}
           |{}
         {cj}
    *table_definition C1
     *paragraph C1
      {line\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l7
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C2
       {cvvv }
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{cg|}
        *line_arg C1
        |INFO
        |comment_at_end:
         |*@c C1
          |*line_arg C1
          ||INFO
          ||spaces_after_argument:
           ||{spaces_after_argument:\\n}
           |{}
         {cg}
   *@end C1 l8
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {table}
  {empty_line:\\n}
  *@table C5 l10
  |INFO
  |spaces_before_argument:
   |{spaces_before_argument: }
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     *@code l10
   *table_entry C2
    *table_term C1
     *@item C1 l11
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C1
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{a|b}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {a b}
    *table_definition C1
     *paragraph C2
      {item text\\n}
      {in item\\n}
   *table_entry C2
    *table_term C1
     *@item C1 l14
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C2
       {jj }
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{j|}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {j}
    *table_definition C1
     *paragraph C1
      {line\\n}
   *table_entry C1
    *table_term C1
     *@item C1 l16
     |INFO
     |spaces_before_argument:
      |{spaces_before_argument: }
      *line_arg C2
       {vvv }
       *@set C1
       |INFO
       |spaces_before_argument:
        |{spaces_before_argument: }
       |EXTRA
       |misc_args:A{g|}
        *line_arg C1
        |INFO
        |spaces_after_argument:
         |{spaces_after_argument:\\n}
         {g}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{spaces_before_argument: }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{spaces_after_argument:\\n}
     {table}
';


$result_texis{'set_on_item_line'} = '@table @code
@item @set ca b@c
item text
in item
@item cjj @set cj@c
line
@item cvvv @set cg@c
@end table

@table @code
@item @set a b
item text
in item
@item jj @set j
line
@item vvv @set g
@end table
';


$result_texts{'set_on_item_line'} = '
item text
in item
cjj 
line
cvvv 


item text
in item
jj 
line
vvv 
';

$result_errors{'set_on_item_line'} = [
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 2,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 7,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 11,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 14,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @set should only appear at the beginning of a line
',
    'line_nr' => 16,
    'text' => '@set should only appear at the beginning of a line',
    'type' => 'warning'
  }
];


$result_nodes_list{'set_on_item_line'} = '';

$result_sections_list{'set_on_item_line'} = '';

$result_sectioning_root{'set_on_item_line'} = '';

$result_headings_list{'set_on_item_line'} = '';

1;
