use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'def_groupings_args'} = '*document_root C1
 *before_node_section C5
  *0 @deffn C2 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l1
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C3
      |{b}
      |*8 @code C1
       |*brace_container C1
        |{aa}
      |{c}
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {a}
     {spaces: }
     *def_name C1
      *def_line_arg C3
       {b}
       *1 @code C1 l1
        *brace_container C1
         {aa}
       {c}
   *@end C1 l2
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
  {empty_line:\\n}
  *2 @deffn C2 l4
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l4
   |EXTRA
   |def_command:{deffn}
   |original_def_cmdname:{deffn}
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C2
       {a}
       *3 @samp C1 l4
        *brace_container C1
         {g1}
   *@end C1 l5
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
  {empty_line:\\n}
  *4 @deffn C2 l7
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l7
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*bracketed_arg C2
      |{br }
      |*9 @samp C1
       |*brace_container C1
        |{s}
   |index_entry:I{fn,2}
   |original_def_cmdname:{deffn}
    *block_line_arg C7
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C2
       *5 @var C1 l7
        *brace_container C1
         {var}
       {c}
     {spaces: }
     *def_name C1
      *bracketed_arg C2 l7
       {br }
       *6 @samp C1 l7
        *brace_container C1
         {s}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {c}
     *def_arg C1
      *def_line_arg C1
       *7 @code C1 l7
        *brace_container C1
         {arg}
     {delimiter:)}
   *@end C1 l8
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
';


$result_texis{'def_groupings_args'} = '@deffn a b@code{aa}c
@end deffn

@deffn a@samp{g1}
@end deffn

@deffn @var{var}c {br @samp{s}} c@code{arg})
@end deffn
';


$result_texts{'def_groupings_args'} = 'a: baac

ag1: 

varc: br s carg)
';

$result_errors{'def_groupings_args'} = [
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: missing name for @deffn
',
    'line_nr' => 4,
    'text' => 'missing name for @deffn',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `fn\' outside of any node
',
    'line_nr' => 7,
    'text' => 'entry for index `fn\' outside of any node',
    'type' => 'warning'
  }
];


$result_floats{'def_groupings_args'} = {};


$result_indices_sort_strings{'def_groupings_args'} = {
  'fn' => [
    'baac',
    'br s'
  ]
};



$result_converted{'plaintext'}->{'def_groupings_args'} = ' -- a: baac

 -- ag1:

 -- VARc: br s carg)
';

1;
