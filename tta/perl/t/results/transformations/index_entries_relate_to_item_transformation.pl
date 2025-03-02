use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entries_relate_to_item_transformation'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 index_entries_relate_to_item.texi:l3 {Top}
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
 *1 @top C2 index_entries_relate_to_item.texi:l4 {top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 index_entries_relate_to_item.texi:l6 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C6 index_entries_relate_to_item.texi:l7 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  {empty_line:\\n}
  *4 @table C5 index_entries_relate_to_item.texi:l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |command_as_argument:[E5]
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     *5 @code index_entries_relate_to_item.texi:l9
   *before_item C1
    {empty_line:\\n}
   *table_entry C2
    *table_term C6
     *6 index_entry_command@cindex C1 index_entries_relate_to_item.texi:l11
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
       {A}
     *7 index_entry_command@cindex C1 index_entries_relate_to_item.texi:l12
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,2}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {B}
     *8 index_entry_command@cindex C1 index_entries_relate_to_item.texi:l13
     |INFO
     |command_name:{cindex}
     |spaces_before_argument:
      |{ }
     |EXTRA
     |element_node:[E2]
     |index_entry:I{cp,3}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {C}
     *@item C1 index_entries_relate_to_item.texi:l14
     |INFO
     |spaces_before_argument:
      |{ }
     |EXTRA
     |associated_index_entry:I{cp,1}
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {A}
     *@itemx C1 index_entries_relate_to_item.texi:l15
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {B}
     *@itemx C1 index_entries_relate_to_item.texi:l16
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {C}
    *table_definition C3
     {empty_line:\\n}
     *paragraph C1
      {body\\n}
     {empty_line:\\n}
   *table_entry C2
    *table_term C1
     *@item C1 index_entries_relate_to_item.texi:l20
     |INFO
     |spaces_before_argument:
      |{ }
      *line_arg C1
      |INFO
      |spaces_after_argument:
       |{\\n}
       {D}
    *table_definition C3
     {empty_line:\\n}
     *paragraph C1
      {body2\\n}
     {empty_line:\\n}
   *@end C1 index_entries_relate_to_item.texi:l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{table}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {table}
  {empty_line:\\n}
  *@printindex C1 index_entries_relate_to_item.texi:l26
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
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_entries_relate_to_item_transformation'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top top

@node chap
@chapter Chapter

@table @code

@cindex A
@cindex B
@cindex C
@item A
@itemx B
@itemx C

body

@item D

body2

@end table

@printindex cp

@bye
';


$result_texts{'index_entries_relate_to_item_transformation'} = 'top
***

1 Chapter
*********


A
B
C

body

D

body2



';

$result_sectioning{'index_entries_relate_to_item_transformation'} = {
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
                    'isindex' => 1,
                    'normalized' => 'chap'
                  }
                },
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
$result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_entries_relate_to_item_transformation'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'index_entries_relate_to_item_transformation'};

$result_nodes{'index_entries_relate_to_item_transformation'} = [
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
            'isindex' => 1,
            'node_directions' => {
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'index_entries_relate_to_item_transformation'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_entries_relate_to_item_transformation'}[0];
$result_nodes{'index_entries_relate_to_item_transformation'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'index_entries_relate_to_item_transformation'}[0];
$result_nodes{'index_entries_relate_to_item_transformation'}[1] = $result_nodes{'index_entries_relate_to_item_transformation'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'index_entries_relate_to_item_transformation'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'index_entries_relate_to_item_transformation'} = [];


$result_floats{'index_entries_relate_to_item_transformation'} = {};


$result_indices_sort_strings{'index_entries_relate_to_item_transformation'} = {
  'cp' => [
    'A',
    'B',
    'C'
  ]
};



$result_converted{'info'}->{'index_entries_relate_to_item_transformation'} = 'This is , produced from index_entries_relate_to_item.texi.


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

‘A’
‘B’
‘C’

     body

‘D’

     body2

 [index ]
* Menu:

* A:                                     chap.                  (line 6)
* B:                                     chap.                  (line 6)
* C:                                     chap.                  (line 6)


Tag Table:
Node: Top60
Node: chap135

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
