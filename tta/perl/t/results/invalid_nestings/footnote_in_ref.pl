use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'footnote_in_ref'} = '*document_root C2
 *before_node_section
 *0 @node C3 l1 {first}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{first}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *paragraph C1
   *1 @xref C2 l3
    *brace_arg C1
     {first}
    *brace_arg C3
    |INFO
    |spaces_before_argument:
     |{ }
     {Text}
     *2 @footnote C1 l3
     |EXTRA
     |global_command_number:{1}
      *brace_command_context C3
       *paragraph C1
        {First para\\n}
       {empty_line:\\n}
       *paragraph C1
        {seond para}
     {.}
';


$result_texis{'footnote_in_ref'} = '@node first

@xref{first, Text@footnote{First para

seond para}.}';


$result_texts{'footnote_in_ref'} = '
first';

$result_nodes{'footnote_in_ref'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_menus{'footnote_in_ref'} = [
  {
    'extra' => {
      'normalized' => 'first'
    }
  }
];

$result_errors{'footnote_in_ref'} = [
  {
    'error_line' => 'warning: @footnote should not appear anywhere inside @xref
',
    'line_nr' => 3,
    'text' => '@footnote should not appear anywhere inside @xref',
    'type' => 'warning'
  },
  {
    'error_line' => '@xref missing closing brace
',
    'line_nr' => 3,
    'text' => '@xref missing closing brace',
    'type' => 'error'
  }
];


$result_floats{'footnote_in_ref'} = {};


1;
