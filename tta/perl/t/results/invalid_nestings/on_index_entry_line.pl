use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'on_index_entry_line'} = '*document_root C1
 *before_node_section C1
  *0 index_entry_command@cindex C1 l1
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C8
    *@indent l1
    {ignorable_spaces_after_command: }
    *1 @titlefont C1 l1
    |EXTRA
    |global_command_number:{1}
     *brace_container C1
      {in titlefont}
    { }
    *2 @anchor C1 l1
    |EXTRA
    |is_target:{1}
    |normalized:{in-anchor}
     *brace_arg C1
      {in anchor}
    *3 @footnote C1 l1
    |EXTRA
    |global_command_number:{1}
     *brace_command_context C1
      *paragraph C1
       {footnote}
    { }
    *@exdent C1 l1
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {exdent}
';


$result_texis{'on_index_entry_line'} = '@cindex @indent @titlefont{in titlefont} @anchor{in anchor}@footnote{footnote} @exdent exdent
';


$result_texts{'on_index_entry_line'} = '';

$result_errors{'on_index_entry_line'} = [
  {
    'error_line' => 'warning: @indent should not appear on @cindex line
',
    'line_nr' => 1,
    'text' => '@indent should not appear on @cindex line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @titlefont should not appear on @cindex line
',
    'line_nr' => 1,
    'text' => '@titlefont should not appear on @cindex line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear on @cindex line
',
    'line_nr' => 1,
    'text' => '@anchor should not appear on @cindex line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear on @cindex line
',
    'line_nr' => 1,
    'text' => '@footnote should not appear on @cindex line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear on @cindex line
',
    'line_nr' => 1,
    'text' => '@exdent should not appear on @cindex line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


$result_indices_sort_strings{'on_index_entry_line'} = {
  'cp' => [
    'in titlefont  exdent
'
  ]
};


1;
