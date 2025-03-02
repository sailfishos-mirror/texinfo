use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'no_monolithic_only_toc_out'} = '*document_root C6
 *before_node_section C2
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
 *0 @node C1 no_monolithic.texi:l3 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E4]
 |node_directions:D[next->E5]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C8 no_monolithic.texi:l4 {Not monolithic}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E6]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E6]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Not monolithic}
  {empty_line:\\n}
  *paragraph C3
   {Not monolitic manual}
   *2 @footnote C1 no_monolithic.texi:l6
   |EXTRA
   |global_command_number:{1}
    *brace_command_context C1
     *paragraph C1
      {my footnote}
   {.\\n}
  {empty_line:\\n}
  *3 index_entry_command@cindex C1 no_monolithic.texi:l8
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *4 @menu C3 no_monolithic.texi:l10
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 no_monolithic.texi:l11
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chapter}
    |normalized:{chapter}
     {chapter}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 no_monolithic.texi:l12
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{menu}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {menu}
  {empty_line:\\n}
 *5 @node C1 no_monolithic.texi:l14 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[up->E0]
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *6 @chapter C8 no_monolithic.texi:l15 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E5]
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
  *paragraph C1
   {Chapter.\\n}
  {empty_line:\\n}
  *@contents C1 no_monolithic.texi:l19
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  *@shortcontents C1 no_monolithic.texi:l20
  |EXTRA
  |global_command_number:{1}
   {rawline_arg:\\n}
  {empty_line:\\n}
  *@printindex C1 no_monolithic.texi:l22
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
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'no_monolithic_only_toc_out'} = '\\input texinfo @c -*-texinfo-*-

@node Top
@top Not monolithic

Not monolitic manual@footnote{my footnote}.

@cindex top

@menu
* chapter::
@end menu

@node chapter
@chapter Chapter

Chapter.

@contents
@shortcontents

@printindex cp
@bye
';


$result_texts{'no_monolithic_only_toc_out'} = 'Not monolithic
**************

Not monolitic manual.


* chapter::

1 Chapter
*********

Chapter.


';

$result_sectioning{'no_monolithic_only_toc_out'} = {
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
                    'normalized' => 'chapter'
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
$result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0];
$result_sectioning{'no_monolithic_only_toc_out'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'no_monolithic_only_toc_out'};

$result_nodes{'no_monolithic_only_toc_out'} = [
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
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'no_monolithic_only_toc_out'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'no_monolithic_only_toc_out'}[0];
$result_nodes{'no_monolithic_only_toc_out'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'no_monolithic_only_toc_out'}[0];
$result_nodes{'no_monolithic_only_toc_out'}[1] = $result_nodes{'no_monolithic_only_toc_out'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'no_monolithic_only_toc_out'} = [
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'menu_directions' => {
        'up' => {}
      },
      'normalized' => 'chapter'
    }
  }
];
$result_menus{'no_monolithic_only_toc_out'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'no_monolithic_only_toc_out'}[0];

$result_errors{'no_monolithic_only_toc_out'} = [];


$result_floats{'no_monolithic_only_toc_out'} = {};


$result_indices_sort_strings{'no_monolithic_only_toc_out'} = {
  'cp' => [
    'top'
  ]
};


1;
