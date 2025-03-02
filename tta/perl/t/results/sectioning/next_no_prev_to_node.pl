use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'next_no_prev_to_node'} = '*document_root C4
 *before_node_section
 *0 @node C4 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menus:EC[E1]
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @menu C4 l3
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l4
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{chap first node}
    |normalized:{chap-first-node}
     {chap first node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l5
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{no return}
    |normalized:{no-return}
     {no return}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l6
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
 *2 @node C2 l8 {chap first node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[next->E3|up->E0]
 |node_directions:D[next->E3|up->E0]
 |normalized:{chap-first-node}
  *arguments_line C4
   *line_arg C1
    {chap first node}
   *line_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{no return}
   |normalized:{no-return}
    {no return}
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
  {empty_line:\\n}
 *3 @node C1 l10 {no return}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |menu_directions:D[prev->E2|up->E0]
 |node_directions:D[up->E0]
 |normalized:{no-return}
  *arguments_line C4
   *line_arg C1
    {no return}
   *line_arg
   *line_arg
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{ \\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |node_content:{Top}
   |normalized:{Top}
    {Top}
';


$result_texis{'next_no_prev_to_node'} = '@node Top

@menu
* chap first node::
* no return::
@end menu

@node chap first node, no return,, Top

@node no return,,, Top 
';


$result_texts{'next_no_prev_to_node'} = '
* chap first node::
* no return::


';

$result_nodes{'next_no_prev_to_node'} = [
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
                    'up' => {}
                  },
                  'normalized' => 'no-return'
                }
              },
              'up' => {}
            },
            'normalized' => 'chap-first-node'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'next_no_prev_to_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'next_no_prev_to_node'}[0];
$result_nodes{'next_no_prev_to_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'next_no_prev_to_node'}[0];
$result_nodes{'next_no_prev_to_node'}[1] = $result_nodes{'next_no_prev_to_node'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'next_no_prev_to_node'}[2] = $result_nodes{'next_no_prev_to_node'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'next_no_prev_to_node'} = [
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
            'normalized' => 'no-return'
          }
        },
        'up' => {}
      },
      'normalized' => 'chap-first-node'
    }
  },
  {}
];
$result_menus{'next_no_prev_to_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'next_no_prev_to_node'}[1];
$result_menus{'next_no_prev_to_node'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'next_no_prev_to_node'}[0];
$result_menus{'next_no_prev_to_node'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'next_no_prev_to_node'}[0];
$result_menus{'next_no_prev_to_node'}[2] = $result_menus{'next_no_prev_to_node'}[1]{'extra'}{'menu_directions'}{'next'};

$result_errors{'next_no_prev_to_node'} = [];


$result_floats{'next_no_prev_to_node'} = {};



$result_converted{'xml'}->{'next_no_prev_to_node'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap first node</nodenext></node>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>chap first node</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>no return</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="chap-first-node" spaces=" "><nodename>chap first node</nodename><nodenext spaces=" ">no return</nodenext><nodeprev></nodeprev><nodeup spaces=" ">Top</nodeup></node>

<node identifier="no-return" spaces=" "><nodename>no return</nodename><nodenext></nodenext><nodeprev></nodeprev><nodeup spaces=" " trailingspaces=" ">Top</nodeup></node>
';

1;
