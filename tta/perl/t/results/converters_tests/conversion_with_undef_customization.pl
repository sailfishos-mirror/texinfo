use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'conversion_with_undef_customization'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *@contents C1 l4
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  *@shortcontents C1 l5
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
 *2 @node C1 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap_00ea}
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
    *3 @^ C1 l7
     *following_arg C1
      {e}
 *4 @chapter C6 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_childs:EC[E10]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C2
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
    *5 @^ C1 l8
     *following_arg C1
      {e}
  {empty_line:\\n}
  *paragraph C3
   {Text}
   *6 @footnote C1 l10
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C2
      {Go }
      *7 @samp C1 l10
       *brace_container C1
        {s}
   {\\n}
  {empty_line:\\n}
  *8 index_entry_command@cindex C1 l12
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E2]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {entry}
  {empty_line:\\n}
 *9 @node C1 l14
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[up->E2]
 |normalized:{sec}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {sec}
 *10 @section C5 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E9]
 |section_directions:D[up->E4]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Section}
  {empty_line:\\n}
  *@printindex C1 l17
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *11 @deftypefn C3 l19
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l19
   |EXTRA
   |def_command:{deftypefn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{name}
   |element_node:[E9]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypefn}
    *block_line_arg C13
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {category}
     {spaces: }
     *def_type C1
      *def_line_arg C1
       {type}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {name}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {something}
     {spaces: }
     {delimiter:(}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {aa}
     {spaces: }
     {delimiter:)}
   *def_item C1
    *paragraph C1
     {A def.\\n}
   *@end C1 l21
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypefn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypefn}
';


$result_texis{'conversion_with_undef_customization'} = '@node Top
@top top

@contents
@shortcontents

@node chap@^e
@chapter Chap@^e

Text@footnote{Go @samp{s}}

@cindex entry

@node sec
@section Section

@printindex cp

@deftypefn category type name something ( aa )
A def.
@end deftypefn
';


$result_texts{'conversion_with_undef_customization'} = 'top
***


1 Chape^
********

Text


1.1 Section
===========


category: type name something ( aa )
A def.
';

$result_sectioning{'conversion_with_undef_customization'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          },
          'section_childs' => [
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'chap_00ea'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'isindex' => 1,
                          'normalized' => 'sec'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '1',
                'toplevel_directions' => {
                  'prev' => {},
                  'up' => {}
                }
              }
            }
          ],
          'section_level' => 0,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0];
$result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0];
$result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0];
$result_sectioning{'conversion_with_undef_customization'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'conversion_with_undef_customization'};

$result_nodes{'conversion_with_undef_customization'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'associated_section' => {
              'cmdname' => 'chapter',
              'extra' => {
                'section_number' => '1'
              }
            },
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap_00ea'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'isindex' => 1,
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'sec'
    }
  }
];
$result_nodes{'conversion_with_undef_customization'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'conversion_with_undef_customization'}[0];
$result_nodes{'conversion_with_undef_customization'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'conversion_with_undef_customization'}[0];
$result_nodes{'conversion_with_undef_customization'}[1] = $result_nodes{'conversion_with_undef_customization'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'conversion_with_undef_customization'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'conversion_with_undef_customization'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'conversion_with_undef_customization'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap_00ea'
    }
  },
  {
    'extra' => {
      'normalized' => 'sec'
    }
  }
];

$result_errors{'conversion_with_undef_customization'} = [];


$result_floats{'conversion_with_undef_customization'} = {};


$result_indices_sort_strings{'conversion_with_undef_customization'} = {
  'cp' => [
    'entry'
  ],
  'fn' => [
    'name'
  ]
};


1;
