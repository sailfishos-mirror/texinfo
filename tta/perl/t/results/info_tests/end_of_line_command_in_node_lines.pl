use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'end_of_line_command_in_node_lines'} = '*document_root C7
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E2]
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C4 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E4|E8]
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
  *2 @menu C4 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C5
    |EXTRA
    |node_content:{chap @* f     nl Something? @* After punct}
    |normalized:{chap-f-nl-Something_003f-After-punct}
     {chap }
     *@*
     { f     nl Something? }
     *@*
     { After punct}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l6
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{new n}
    |normalized:{new-n}
     {new n}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l7
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
 *3 @node C1 l9
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |is_target:{1}
 |isindex:{1}
 |menu_directions:D[next->E7|up->E0]
 |node_directions:D[next->E7|prev->E0|up->E0]
 |normalized:{chap-f-nl-Something_003f-After-punct}
  *arguments_line C1
   *line_arg C5
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap }
    *@*
    { f     nl Something? }
    *@*
    { After punct}
 *4 @chapter C11 l10
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E3]
 |section_directions:D[next->E8|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E8|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap}
  {empty_line:\\n}
  *5 @anchor C1 l12
  |EXTRA
  |is_target:{1}
  |menu_directions:D[next->E5|prev->E5|up->E7]
  |normalized:{ankh-p}
   *brace_arg C3
    {ankh }
    *@*
    { p}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *paragraph C5
   {text }
   *@*
   { f     nl Something? }
   *@*
   { After punct\\n}
  {empty_line:\\n}
  *6 index_entry_command@cindex C1 l16
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
  |index_entry:I{cp,1}
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {a }
    *@*
    { b}
  {empty_line:\\n}
  *@printindex C1 l18
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
 *7 @node C1 l20
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |is_target:{1}
 |menu_directions:D[prev->E3|up->E0]
 |menus:EC[E12]
 |node_directions:D[prev->E3|up->E0]
 |normalized:{new-n}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {new n}
 *8 @chapter C9 l21
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E7]
 |section_directions:D[prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Ochap}
  {empty_line:\\n}
  *paragraph C2
   *9 @xref C1 l23
    *brace_arg C5
    |EXTRA
    |node_content:{chap @* f     nl Something? @* After punct}
    |normalized:{chap-f-nl-Something_003f-After-punct}
     {chap }
     *@*
     { f     nl Something? }
     *@*
     { After punct}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *10 @xref C1 l25
    *brace_arg C3
    |EXTRA
    |node_content:{ankh @* p}
    |normalized:{ankh-p}
     {ankh }
     *@*
     { p}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *11 @xref C2 l27
    *brace_arg C3
    |EXTRA
    |node_content:{ankh @* p}
    |normalized:{ankh-p}
     {ankh }
     *@*
     { p}
    *brace_arg C3
    |INFO
    |spaces_before_argument:
     |{ }
     {addll}
     *@*
     {gg}
   {.\\n}
  {empty_line:\\n}
  *12 @menu C5 l29
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l30
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{ankh @* p}
    |normalized:{ankh-p}
     {ankh }
     *@*
     { p}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 l31
    {menu_entry_leading_text:* }
    *menu_entry_name C3
     {what }
     *@*
     { is}
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |node_content:{ankh @* p}
    |normalized:{ankh-p}
     {ankh }
     *@*
     { p}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 l32
    {menu_entry_leading_text:* }
    *menu_entry_name C3
     {what }
     *@*
     { is}
    {menu_entry_separator:: }
    *menu_entry_node C1
    |EXTRA
    |node_content:{ankh p}
    |normalized:{ankh-p}
     {ankh p}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l33
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
';


$result_texis{'end_of_line_command_in_node_lines'} = '@node Top
@top top

@menu
* chap @* f     nl Something? @* After punct::
* new n::
@end menu

@node chap @* f     nl Something? @* After punct
@chapter Chap

@anchor{ankh @* p}

text @* f     nl Something? @* After punct

@cindex a @* b

@printindex cp

@node new n
@chapter Ochap

@xref{chap @* f     nl Something? @* After punct}.

@xref{ankh @* p}.

@xref{ankh @* p, addll@*gg}.

@menu
* ankh @* p::
* what @* is: ankh @* p.
* what @* is: ankh p.
@end menu
';


$result_texts{'end_of_line_command_in_node_lines'} = 'top
***

* chap 
 f     nl Something? 
 After punct::
* new n::

1 Chap
******


text 
 f     nl Something? 
 After punct



2 Ochap
*******

chap 
 f     nl Something? 
 After punct.

ankh 
 p.

ankh 
 p.

* ankh 
 p::
* what 
 is: ankh 
 p.
* what 
 is: ankh p.
';

$result_sectioning{'end_of_line_command_in_node_lines'} = {
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
                    'normalized' => 'chap-f-nl-Something_003f-After-punct'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'new-n'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '2',
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
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0];
$result_sectioning{'end_of_line_command_in_node_lines'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'end_of_line_command_in_node_lines'};

$result_nodes{'end_of_line_command_in_node_lines'} = [
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
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'associated_section' => {
                    'cmdname' => 'chapter',
                    'extra' => {
                      'section_number' => '2'
                    }
                  },
                  'node_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'new-n'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chap-f-nl-Something_003f-After-punct'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'end_of_line_command_in_node_lines'}[0];
$result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'end_of_line_command_in_node_lines'}[0];
$result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'end_of_line_command_in_node_lines'}[0];
$result_nodes{'end_of_line_command_in_node_lines'}[1] = $result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'end_of_line_command_in_node_lines'}[2] = $result_nodes{'end_of_line_command_in_node_lines'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'end_of_line_command_in_node_lines'} = [
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
        'next' => {
          'extra' => {
            'menu_directions' => {
              'prev' => {},
              'up' => {}
            },
            'menus' => [
              {}
            ],
            'normalized' => 'new-n'
          }
        },
        'up' => {}
      },
      'normalized' => 'chap-f-nl-Something_003f-After-punct'
    }
  },
  {}
];
$result_menus{'end_of_line_command_in_node_lines'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'end_of_line_command_in_node_lines'}[1];
$result_menus{'end_of_line_command_in_node_lines'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'end_of_line_command_in_node_lines'}[0];
$result_menus{'end_of_line_command_in_node_lines'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'end_of_line_command_in_node_lines'}[0];
$result_menus{'end_of_line_command_in_node_lines'}[2] = $result_menus{'end_of_line_command_in_node_lines'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'end_of_line_command_in_node_lines'} = [
  {
    'error_line' => 'warning: @menu entry node name `ankh p\' different from anchor name `ankh @* p\'
',
    'line_nr' => 32,
    'text' => '@menu entry node name `ankh p\' different from anchor name `ankh @* p\'',
    'type' => 'warning'
  }
];


$result_floats{'end_of_line_command_in_node_lines'} = {};


$result_indices_sort_strings{'end_of_line_command_in_node_lines'} = {
  'cp' => [
    'a 
 b'
  ]
};


1;
