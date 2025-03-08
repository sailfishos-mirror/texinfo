use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'at_commands_in_node'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1 {A @sc{sc} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{A-sc-node-_00ef-_00ef-_1e14-_0142-_1e08-_00a1}
  *arguments_line C1
   *line_arg C14
    {A }
    *1 @sc C1 l1
     *brace_container C1
      {sc}
    { node }
    *2 @" C1 l1
     *following_arg C1
      {i}
    { }
    *3 @" C1 l1
     *brace_container C1
      *4 @dotless C1 l1
       *brace_container C1
        {i}
    { }
    *5 @` C1 l1
     *brace_container C1
      *6 @= C1 l1
       *following_arg C1
        {E}
    { }
    *7 @l C1 l1
     *brace_container
    { }
    *8 @, C1 l1
     *brace_container C1
      *9 @\' C1 l1
       *following_arg C1
        {C}
    { }
    *10 @exclamdown C1 l1
     *brace_container
';


$result_texis{'at_commands_in_node'} = '@node A @sc{sc} node @"i @"{@dotless{i}} @`{@=E} @l{} @,{@\'C} @exclamdown{}';


$result_texts{'at_commands_in_node'} = '';

$result_errors{'at_commands_in_node'} = [];


1;
