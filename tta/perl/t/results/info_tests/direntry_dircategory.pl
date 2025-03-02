use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'direntry_dircategory'} = '*document_root C6
 *before_node_section C2
  *preamble_before_setfilename C1
   *preamble_before_beginning C2
    {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
    {text_before_beginning:\\n}
  *preamble_before_content C9
   *@setfilename C1 direntry_dircategory.texi:l3
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{direntry_dircategory.info}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {direntry_dircategory.info}
   {empty_line:\\n}
   *@dircategory C1 direntry_dircategory.texi:l5
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     {``category---}
     *0 @var C1 direntry_dircategory.texi:l5
      *brace_container C1
       {th  ere}
     {?\'\'}
   *1 @direntry C3 direntry_dircategory.texi:l6
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C6 direntry_dircategory.texi:l7
     {menu_entry_leading_text:* }
     *menu_entry_name C1
      {foo}
     {menu_entry_separator:: }
     *menu_entry_node C3
     |EXTRA
     |manual_content:{foo}
      {(}
      {foo}
      {)}
     {menu_entry_separator:.   }
     *menu_entry_description C1
      *preformatted C3
       {``hello---}
       *2 @var C1 direntry_dircategory.texi:l7
        *brace_container C1
         {there}
       {?\'\'\\n}
    *@end C1 direntry_dircategory.texi:l8
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{direntry}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {direntry}
   {empty_line:\\n}
   *@dircategory C1 direntry_dircategory.texi:l10
   |INFO
   |spaces_before_argument:
    |{ }
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {cat2}
   *3 @direntry C4 direntry_dircategory.texi:l11
    *arguments_line C1
     *block_line_arg
     |INFO
     |spaces_after_argument:
      |{\\n}
    *menu_entry C4 direntry_dircategory.texi:l12
     {menu_entry_leading_text:* }
     *menu_entry_node C2
     |EXTRA
     |node_content:{aaa }
     |normalized:{aaa}
      {aaa}
      {space_at_end_menu_node: }
     {menu_entry_separator:::               }
     *menu_entry_description C1
      *preformatted C2
       {aaaa\\n}
       {                   bbbbb\\n}
    *menu_comment C1
     *preformatted C2
      {after_menu_description_line:\\n}
      {menutitle\\n}
    *@end C1 direntry_dircategory.texi:l16
    |INFO
    |spaces_before_argument:
     |{ }
    |EXTRA
    |text_arg:{direntry}
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {direntry}
   {empty_line:\\n}
   {empty_line:\\n}
 *4 @node C1 direntry_dircategory.texi:l19 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |menus:EC[E7]
 |node_directions:D[next->E8]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *5 @top C8 direntry_dircategory.texi:l20 {Test dircategory and direntry}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E9]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E5]
  ||section_level:{-1}
 |toplevel_directions:D[next->E9]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test dircategory and direntry}
  {empty_line:\\n}
  *paragraph C1
   {Text\\n}
  *@dircategory C1 direntry_dircategory.texi:l23
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in text}
  *6 @direntry C3 direntry_dircategory.texi:l24
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C6 direntry_dircategory.texi:l25
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {in text}
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |manual_content:{in_text}
     {(}
     {in_text}
     {)}
    {menu_entry_separator:. }
    *menu_entry_description C1
     *preformatted C1
      {in text\\n}
   *@end C1 direntry_dircategory.texi:l26
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{direntry}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {direntry}
  {empty_line:\\n}
  *7 @menu C3 direntry_dircategory.texi:l28
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 direntry_dircategory.texi:l29
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
   *@end C1 direntry_dircategory.texi:l30
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
 *8 @node C1 direntry_dircategory.texi:l32 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E9]
 |is_target:{1}
 |menu_directions:D[up->E4]
 |node_directions:D[prev->E4|up->E4]
 |normalized:{chapter}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
 *9 @chapter C4 direntry_dircategory.texi:l33 {chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E8]
 |section_directions:D[up->E5]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[prev->E5|up->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *paragraph C1
   {In chapter\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'direntry_dircategory'} = '\\input texinfo @c -*-texinfo-*-

@setfilename direntry_dircategory.info

@dircategory ``category---@var{th  ere}?\'\'
@direntry
* foo: (foo).   ``hello---@var{there}?\'\'
@end direntry

@dircategory cat2
@direntry
* aaa ::               aaaa
                   bbbbb

menutitle
@end direntry


@node Top
@top Test dircategory and direntry

Text
@dircategory in text
@direntry
* in text: (in_text). in text
@end direntry

@menu
* chapter::
@end menu

@node chapter
@chapter chapter

In chapter

@bye
';


$result_texts{'direntry_dircategory'} = '
* foo: (foo).   "hello--there?"

* aaa ::               aaaa
                   bbbbb

menutitle


Test dircategory and direntry
*****************************

Text
* in text: (in_text). in text

* chapter::

1 chapter
*********

In chapter

';

$result_sectioning{'direntry_dircategory'} = {
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
$result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0];
$result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0];
$result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0];
$result_sectioning{'direntry_dircategory'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'direntry_dircategory'};

$result_nodes{'direntry_dircategory'} = [
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
            'normalized' => 'chapter'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'direntry_dircategory'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'direntry_dircategory'}[0];
$result_nodes{'direntry_dircategory'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'direntry_dircategory'}[0];
$result_nodes{'direntry_dircategory'}[1] = $result_nodes{'direntry_dircategory'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'direntry_dircategory'} = [
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
$result_menus{'direntry_dircategory'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'direntry_dircategory'}[0];

$result_errors{'direntry_dircategory'} = [
  {
    'error_line' => 'warning: @dircategory after first node
',
    'file_name' => 'direntry_dircategory.texi',
    'line_nr' => 23,
    'text' => '@dircategory after first node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @direntry after first node
',
    'file_name' => 'direntry_dircategory.texi',
    'line_nr' => 24,
    'text' => '@direntry after first node',
    'type' => 'warning'
  }
];


$result_floats{'direntry_dircategory'} = {};


1;
