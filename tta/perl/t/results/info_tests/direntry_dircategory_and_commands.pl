use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'direntry_dircategory_and_commands'} = '*document_root C3
 *before_node_section C7
  *@dircategory C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {``category---}
    *0 @var C1 l1
     *brace_container C1
      {th  ere}
    {?\'\'}
  *1 @direntry C3 l2
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C6 l3
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
      *2 @var C1 l3
       *brace_container C1
        {there}
      {?\'\'\\n}
   *@end C1 l4
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
  *@dircategory C1 l6
  |INFO
  |spaces_before_argument:
   |{ }
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cat2}
  *3 @direntry C4 l7
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l8
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
   *@end C1 l12
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
 *4 @node C1 l15
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *5 @top C3 l16
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E5]
  ||section_level:{-1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Test dircategory and direntry}
  {empty_line:\\n}
  *paragraph C1
   {Text\\n}
';


$result_texis{'direntry_dircategory_and_commands'} = '@dircategory ``category---@var{th  ere}?\'\'
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
';


$result_texts{'direntry_dircategory_and_commands'} = '* foo: (foo).   "hello--there?"

* aaa ::               aaaa
                   bbbbb

menutitle


Test dircategory and direntry
*****************************

Text
';

$result_sectioning{'direntry_dircategory_and_commands'} = {
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
          'section_level' => 0,
          'sectioning_root' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'direntry_dircategory_and_commands'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'direntry_dircategory_and_commands'};

$result_nodes{'direntry_dircategory_and_commands'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'top',
        'extra' => {}
      },
      'normalized' => 'Top'
    }
  }
];

$result_menus{'direntry_dircategory_and_commands'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'direntry_dircategory_and_commands'} = [];


$result_floats{'direntry_dircategory_and_commands'} = {};



$result_converted{'info'}->{'direntry_dircategory_and_commands'} = 'This is , produced from .

INFO-DIR-SECTION "category--TH ERE?"
START-INFO-DIR-ENTRY
* foo: (foo).   "hello--THERE?"
END-INFO-DIR-ENTRY

INFO-DIR-SECTION cat2
START-INFO-DIR-ENTRY
* aaa ::               aaaa
                   bbbbb

menutitle
END-INFO-DIR-ENTRY


File: ,  Node: Top,  Up: (dir)

Test dircategory and direntry
*****************************

Text


Tag Table:
Node: Top264

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
