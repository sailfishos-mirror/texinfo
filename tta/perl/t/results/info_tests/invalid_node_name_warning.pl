use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'invalid_node_name_warning'} = '*document_root C5
 *before_node_section C1
  {empty_line:\\n}
 *0 @node C4 l2 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E6]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C5 l4
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     *2 @asis C1 l5
      *brace_container C1
       {truc:}
    {menu_entry_separator:: }
    *menu_entry_node C2
    |EXTRA
    |node_content:{@asis{nodename. a}\\n}
    |normalized:{nodename_002e-a}
     *3 @asis C1 l5
      *brace_container C1
       {nodename. a}
     {space_at_end_menu_node:\\n}
   *menu_entry C6 l6
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {machin}
    {menu_entry_separator:: }
    *menu_entry_node C3
    |EXTRA
    |node_content:{node@comma{}comma}
    |normalized:{node_002ccomma}
     {node}
     *4 @comma C1 l6
      *brace_container
     {comma}
    {menu_entry_separator:, }
    *menu_entry_description C1
     *preformatted C1
      {def\\n}
   *menu_entry C4 l7
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{@asis{bidule:}}
    |normalized:{bidule_003a}
     *5 @asis C1 l7
      *brace_container C1
       {bidule:}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l8
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
 *6 @node C2 l10 {@asis{nodename. a}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E8|up->E0]
 |node_directions:D[next->E8|prev->E0|up->E0]
 |normalized:{nodename_002e-a}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *7 @asis C1 l10
     *brace_container C1
      {nodename. a}
  {empty_line:\\n}
 *8 @node C2 l12 {node@comma{}comma}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E10|prev->E6|up->E0]
 |node_directions:D[next->E10|prev->E6|up->E0]
 |normalized:{node_002ccomma}
  *arguments_line C1
   *line_arg C3
   |INFO
   |spaces_after_argument:
    |{\\n}
    {node}
    *9 @comma C1 l12
     *brace_container
    {comma}
  {empty_line:\\n}
 *10 @node C3 l14 {@asis{bidule:}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E8|up->E0]
 |node_directions:D[prev->E8|up->E0]
 |normalized:{bidule_003a}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *11 @asis C1 l14
     *brace_container C1
      {bidule:}
  {empty_line:\\n}
  *paragraph C6
   *12 @ref C2 l16
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{nodename. a}}
    |normalized:{nodename_002e-a}
     *13 @asis C1 l16
      *brace_container C1
       {nodename. a}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     *14 @asis C1 l16
      *brace_container C1
       {truc:}
   {. }
   *15 @ref C2 l16
    *brace_arg C3
    |EXTRA
    |node_content:{node@comma{}comma}
    |normalized:{node_002ccomma}
     {node}
     *16 @comma C1 l16
      *brace_container
     {comma}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {machin}
   {.\\n}
   *17 @ref C1 l17
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{bidule:}}
    |normalized:{bidule_003a}
     *18 @asis C1 l17
      *brace_container C1
       {bidule:}
   {.\\n}
';


$result_texis{'invalid_node_name_warning'} = '
@node Top

@menu
* @asis{truc:}: @asis{nodename. a}
* machin: node@comma{}comma, def
* @asis{bidule:}::
@end menu

@node @asis{nodename. a}

@node node@comma{}comma

@node @asis{bidule:}

@ref{@asis{nodename. a}, @asis{truc:}}. @ref{node@comma{}comma, machin}.
@ref{@asis{bidule:}}.
';


$result_texts{'invalid_node_name_warning'} = '

* truc:: nodename. a
* machin: node,comma, def
* bidule:::




nodename. a. node,comma.
bidule:.
';

$result_nodes{'invalid_node_name_warning'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'node_directions' => {
              'next' => {
                'cmdname' => 'node',
                'extra' => {
                  'node_directions' => {
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'node_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'bidule_003a'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'node_002ccomma'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'nodename_002e-a'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {}
];
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'invalid_node_name_warning'}[0];
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'invalid_node_name_warning'}[0];
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'invalid_node_name_warning'}[0];
$result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'invalid_node_name_warning'}[0];
$result_nodes{'invalid_node_name_warning'}[1] = $result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'invalid_node_name_warning'}[2] = $result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'invalid_node_name_warning'}[3] = $result_nodes{'invalid_node_name_warning'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'invalid_node_name_warning'} = [
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
              'next' => {
                'extra' => {
                  'menu_directions' => {
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'bidule_003a'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'node_002ccomma'
          }
        },
        'up' => {}
      },
      'normalized' => 'nodename_002e-a'
    }
  },
  {},
  {}
];
$result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'invalid_node_name_warning'}[0];
$result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'invalid_node_name_warning'}[1];
$result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'invalid_node_name_warning'}[0];
$result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'invalid_node_name_warning'}[0];
$result_menus{'invalid_node_name_warning'}[2] = $result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'invalid_node_name_warning'}[3] = $result_menus{'invalid_node_name_warning'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'invalid_node_name_warning'} = [];


$result_floats{'invalid_node_name_warning'} = {};



$result_converted{'info'}->{'invalid_node_name_warning'} = 'This is , produced from .


File: ,  Node: Top,  Next: nodename. a,  Up: (dir)

* Menu:

* truc:: nodename. a

* machin: node,comma, def
* bidule:::


File: ,  Node: nodename. a,  Next: node,comma,  Prev: Top,  Up: Top


File: ,  Node: node,comma,  Next: bidule:,  Prev: nodename. a,  Up: Top


File: ,  Node: bidule:,  Prev: node,comma,  Up: Top

*note truc:: nodename. a.  *note machin: node,comma.  *note bidule:::.


Tag Table:
Node: Top27
Node: nodename. a159
Node: node,comma232
Node: bidule:309

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'invalid_node_name_warning'} = [
  {
    'error_line' => 'warning: menu entry name should not contain `:\'
',
    'line_nr' => 5,
    'text' => 'menu entry name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: menu entry node name should not contain `. \'
',
    'line_nr' => 5,
    'text' => 'menu entry node name should not contain `. \'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: menu entry node name should not contain `,\'
',
    'line_nr' => 6,
    'text' => 'menu entry node name should not contain `,\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: menu entry node name should not contain `:\'
',
    'line_nr' => 7,
    'text' => 'menu entry node name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @node name should not contain `,\': node,comma
',
    'line_nr' => 12,
    'text' => '@node name should not contain `,\': node,comma',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref cross-reference name should not contain `:\'
',
    'line_nr' => 16,
    'text' => '@ref cross-reference name should not contain `:\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref node name should not contain `.\'
',
    'line_nr' => 16,
    'text' => '@ref node name should not contain `.\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref node name should not contain `,\'
',
    'line_nr' => 16,
    'text' => '@ref node name should not contain `,\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @ref node name should not contain `:\'
',
    'line_nr' => 17,
    'text' => '@ref node name should not contain `:\'',
    'type' => 'warning'
  }
];


1;
