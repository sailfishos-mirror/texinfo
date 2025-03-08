use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'inter_item_commands_in_def_in_example'} = '*document_root C1
 *before_node_section C1
  *0 @example C3 l1
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *1 @deffn C7 l2
   |INFO
   |spaces_before_argument:
    |{ }
    *def_line C1 l2
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |*7 @var C1
        |*brace_container C1
         |{i}
    |index_entry:I{fn,1}
    |original_def_cmdname:{deffn}
     *block_line_arg C7
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *def_line_arg C1
        {fset}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *2 @var C1 l2
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
    *inter_def_item C1
     *preformatted C2
      *@c C1
       {rawline_arg: comment before first deffnx\\n}
      {empty_line:\\n}
    *@deffnx C1 l5
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*bracketed_arg C1
      ||INFO
      ||spaces_before_argument:
       ||{ }
       |{log trap1}
    |index_entry:I{fn,2}
    |original_def_cmdname:{deffnx}
     *line_arg C5
     |INFO
     |spaces_after_argument:
      |{  \\n}
      *def_category C1
       *def_line_arg C1
        {Command}
      {spaces: }
      *def_name C1
       *bracketed_arg C1 l5
       |INFO
       |spaces_before_argument:
        |{ }
        {log trap1}
      {spaces: }
      *def_arg C1
       *bracketed_arg l5
    *inter_def_item C1
     *preformatted C1
      *3 index_entry_command@cindex C1 l6
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |index_entry:I{cp,1}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {between deffnx}
    *@deffnx C1 l7
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |def_command:{deffn}
    |def_index_element:
     |*def_name C1
      |*def_line_arg C1
       |*8 @b C1
        |*brace_container C3
         |{id }
         |*9 @samp C1
          |*brace_container C1
           |{i}
         |{ ule}
    |index_entry:I{fn,3}
    |original_def_cmdname:{deffnx}
     *line_arg C5
     |INFO
     |spaces_after_argument:
      |{\\n}
      *def_category C1
       *def_line_arg C1
        {cmde2}
      {spaces: }
      *def_name C1
       *def_line_arg C1
        *4 @b C1 l7
         *brace_container C3
          {id }
          *5 @samp C1 l7
           *brace_container C1
            {i}
          { ule}
      {spaces: }
      *def_arg C1
       *def_line_arg C1
        {truc}
    *def_item C1
     *preformatted C3
      *6 index_entry_command@cindex C1 l8
      |INFO
      |command_name:{cindex}
      |spaces_before_argument:
       |{ }
      |EXTRA
      |index_entry:I{cp,2}
       *line_arg C1
       |INFO
       |spaces_after_argument:
        |{\\n}
        {cindex in deff item}
      {empty_line:\\n}
      {In deff item.\\n}
    *@end C1 l11
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{deffn}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {deffn}
   *@end C1 l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
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

$result_errors{'inter_item_commands_in_def_in_example'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 2,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 5,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 6,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 7,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 8,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];


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
