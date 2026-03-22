use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_nodes_list %result_sections_list
   %result_sectioning_root %result_headings_list
   %result_converted %result_converted_errors %result_indices_sort_strings);

use utf8;

$result_tree_text{'inter_item_commands_in_def_in_example'} = '*document_root C1
 *before_node_section C1
  *@example C3 l1
   *arguments_line C1
    *block_line_arg C1
     {spaces_before_argument:\\n}
   *@deffn C7 l2
    *def_line C1 l2
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |* C1
      |*def_line_arg C1
       |*@var C1
        |*brace_container C1
         |{i}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deffn}
     *block_line_arg C9
      {spaces_before_argument: }
      *def_category C1
       *def_line_arg C1
        {fset}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *@var C1 l2
         *brace_container C1
          {i}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {a}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {g}
      {spaces_after_argument:\\n}
    *inter_def_item C1
     *preformatted C2
      *@c C1
       *line_arg C3
        {spaces_before_argument: }
        {rawline_text:comment before first deffnx}
        {spaces_after_argument:\\n}
      {empty_line:\\n}
    *@deffnx C1 l5
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |* C1
      |*brace_arg C2
       |{spaces_before_argument: }
       |{log trap1}
    |index_entry:I{fn,2}
    |original_def_cmdname:{deffnx}
     *line_arg C7
      {spaces_before_argument: }
      *def_category C1
       *def_line_arg C1
        {Command}
      {spaces: }
      *def_name C1
       *bracketed_arg C2 l5
        {spaces_before_argument: }
        {log trap1}
      {spaces: }
      *def_arg C1
       *bracketed_arg l5
      {spaces_after_argument:  \\n}
    *inter_def_item C1
     *preformatted C1
      *index_entry_command@cindex C1 l6
      |EXTRA
      |index_entry:I{cp,1}
       *line_arg C3
        {spaces_before_argument: }
        {between deffnx}
        {spaces_after_argument:\\n}
    *@deffnx C1 l7
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |* C1
      |*def_line_arg C1
       |*@b C1
        |*brace_container C3
         |{id }
         |*@samp C1
          |*brace_container C1
           |{i}
         |{ ule}
    |index_entry:I{fn,3}
    |original_def_cmdname:{deffnx}
     *line_arg C7
      {spaces_before_argument: }
      *def_category C1
       *def_line_arg C1
        {cmde2}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *@b C1 l7
         *brace_container C3
          {id }
          *@samp C1 l7
           *brace_container C1
            {i}
          { ule}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {truc}
      {spaces_after_argument:\\n}
    *def_item C1
     *preformatted C3
      *index_entry_command@cindex C1 l8
      |EXTRA
      |index_entry:I{cp,2}
       *line_arg C3
        {spaces_before_argument: }
        {cindex in deff item}
        {spaces_after_argument:\\n}
      {empty_line:\\n}
      {In deff item.\\n}
    *@end C1 l11
    |EXTRA
    |text_arg:{deffn}
     *line_arg C3
      {spaces_before_argument: }
      {deffn}
      {spaces_after_argument:\\n}
   *@end C1 l12
   |EXTRA
   |text_arg:{example}
    *line_arg C3
     {spaces_before_argument: }
     {example}
     {spaces_after_argument:\\n}
';


$result_texis{'inter_item_commands_in_def_in_example'} = '@example
@deffn fset @var{i} a g
@c comment before first deffnx

@deffnx Command { log trap1} {}  
@cindex between deffnx
@deffnx cmde2 @b{id @samp{i} ule} truc
@cindex cindex in deff item

In deff item.
@end deffn
@end example
';


$result_texts{'inter_item_commands_in_def_in_example'} = 'fset: i a g

Command: log trap1 
cmde2: id i ule truc

In deff item.
';

$result_errors{'inter_item_commands_in_def_in_example'} = '* W l2|entry for index `fn\' outside of any node
 warning: entry for index `fn\' outside of any node

* W l5|entry for index `fn\' outside of any node
 warning: entry for index `fn\' outside of any node

* W l6|entry for index `cp\' outside of any node
 warning: entry for index `cp\' outside of any node

* W l7|entry for index `fn\' outside of any node
 warning: entry for index `fn\' outside of any node

* W l8|entry for index `cp\' outside of any node
 warning: entry for index `cp\' outside of any node

';

$result_nodes_list{'inter_item_commands_in_def_in_example'} = '';

$result_sections_list{'inter_item_commands_in_def_in_example'} = '';

$result_sectioning_root{'inter_item_commands_in_def_in_example'} = '';

$result_headings_list{'inter_item_commands_in_def_in_example'} = '';

$result_indices_sort_strings{'inter_item_commands_in_def_in_example'} = 'cp:
 between deffnx
 cindex in deff item
fn:
 i
 id i ule
 log trap1
';


$result_converted{'plaintext'}->{'inter_item_commands_in_def_in_example'} = '      -- fset: I a g

      -- Command: log trap1
      -- cmde2: id i ule truc

          In deff item.
';

1;
