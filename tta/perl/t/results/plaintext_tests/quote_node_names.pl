use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'quote_node_names'} = '*document_root C12
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 nodequote.texi:l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |menus:EC[E19]
 |node_directions:D[next->E24]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C30 nodequote.texi:l2
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E25|E27|E31|E34]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E25]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
  *paragraph C4
   *2 @xref C2 nodequote.texi:l4
    *brace_arg C1
    |EXTRA
    |node_content:{normal node}
    |normalized:{normal-node}
     {normal node}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption and a word}
   {\\n}
   *3 @xref C2 nodequote.texi:l5
    *brace_arg C1
    |EXTRA
    |node_content:{normal node}
    |normalized:{normal-node}
     {normal node}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption}
   {\\n}
  {empty_line:\\n}
  *paragraph C4
   *4 @xref C2 nodequote.texi:l7
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption and a word}
   {\\n}
   *5 @xref C2 nodequote.texi:l8
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption}
   {\\n}
  {empty_line:\\n}
  *paragraph C4
   *6 @xref C2 nodequote.texi:l10
    *brace_arg C1
    |EXTRA
    |node_content:{blumpty.fump}
    |normalized:{blumpty_002efump}
     {blumpty.fump}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption and a word}
   {\\n}
   *7 @xref C2 nodequote.texi:l11
    *brace_arg C1
    |EXTRA
    |node_content:{blumpty.fump}
    |normalized:{blumpty_002efump}
     {blumpty.fump}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {the::caption}
   {.mrmrmrmmrmrmr\\n}
  {empty_line:\\n}
  *paragraph C2
   *8 @xref C1 nodequote.texi:l13
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *9 @xref C1 nodequote.texi:l15
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{secret,node}}
    |normalized:{secret_002cnode}
     *10 @asis C1 nodequote.texi:l15
      *brace_container C1
       {secret,node}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA }
   *11 @xref C1 nodequote.texi:l17
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
   {.)\\n}
  {empty_line:\\n}
  *paragraph C2
   *12 @xref C5 nodequote.texi:l19
    *brace_arg C1
    |EXTRA
    |node_content:{x:y::z}
     {x:y::z}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {man_ual}
    *brace_arg C1
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *13 @xref C5 nodequote.texi:l21
    *brace_arg C1
    |EXTRA
    |node_content:{x.y.z}
     {x.y.z}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {man_ual}
    *brace_arg C1
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *14 @xref C5 nodequote.texi:l23
    *brace_arg C1
    |EXTRA
    |node_content:{pp:qq::rr}
     {pp:qq::rr}
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {label}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {man_ual}
    *brace_arg C1
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *15 @xref C5 nodequote.texi:l25
    *brace_arg C1
    |EXTRA
    |node_content:{pp:qq.rr}
     {pp:qq.rr}
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {label}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {man_ual}
    *brace_arg C1
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *16 @xref C5 nodequote.texi:l27
    *brace_arg C1
    |EXTRA
    |node_content:{ext}
     {ext}
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {label}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {man:u.al}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *17 @xref C5 nodequote.texi:l29
    *brace_arg C1
    |EXTRA
    |node_content:{e:x.t}
     {e:x.t}
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {label}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {man:u.al}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *18 @xref C5 nodequote.texi:l31
    *brace_arg C1
    |EXTRA
    |node_content:{ext}
     {ext}
    *brace_arg
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {la:bel}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {man:u.al}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {Book Title}
   {.\\n}
  {empty_line:\\n}
  *19 @menu C8 nodequote.texi:l33
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 nodequote.texi:l34
    {menu_entry_leading_text:* }
    *menu_entry_node C3
    |EXTRA
    |node_content:{blah@asis{:}blah}
    |normalized:{blah_003ablah}
     {blah}
     *20 @asis C1 nodequote.texi:l34
      *brace_container C1
       {:}
     {blah}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 nodequote.texi:l35
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {the topic}
    {menu_entry_separator::}
    *menu_entry_node C3
    |EXTRA
    |node_content:{blumpty@asis{.}fump}
    |normalized:{blumpty_002efump}
     {blumpty}
     *21 @asis C1 nodequote.texi:l35
      *brace_container C1
       {.}
     {fump}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 nodequote.texi:l36
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{normal node}
    |normalized:{normal-node}
     {normal node}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C6 nodequote.texi:l37
    {menu_entry_leading_text:* }
    *menu_entry_name C3
     {funny}
     *22 @asis C1 nodequote.texi:l37
      *brace_container C1
       {:}
     {label}
    {menu_entry_separator::}
    *menu_entry_node C1
    |EXTRA
    |node_content:{@asis{secret,node}}
    |normalized:{secret_002cnode}
     *23 @asis C1 nodequote.texi:l37
      *brace_container C1
       {secret,node}
    {menu_entry_separator:.}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C5 nodequote.texi:l38
    {menu_entry_leading_text:* }
    *menu_entry_name C1
     {(man}
    {menu_entry_separator::}
    *menu_entry_node C2
    |EXTRA
    |node_content:{u.al)ext::\\n}
    |normalized:{u_002eal_0029ext_003a_003a}
     {u.al)ext::}
     {space_at_end_menu_node:\\n}
    *menu_entry_description
   *menu_comment C1
    *preformatted C1
     {after_menu_description_line:\\n}
   *@end C1 nodequote.texi:l40
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
 *24 @node C1 nodequote.texi:l42
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E25]
 |is_target:{1}
 |menu_directions:D[next->E26|up->E0]
 |node_directions:D[next->E26|prev->E0|up->E0]
 |normalized:{blah_003ablah}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blah:blah}
 *25 @chapter C4 nodequote.texi:l43
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E24]
 |section_directions:D[next->E27|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E27|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blah:blah}
  {empty_line:\\n}
  *paragraph C1
   {stuff here.\\n}
  {empty_line:\\n}
 *26 @node C1 nodequote.texi:l47
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E27]
 |is_target:{1}
 |menu_directions:D[next->E28|prev->E24|up->E0]
 |node_directions:D[next->E28|prev->E24|up->E0]
 |normalized:{blumpty_002efump}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blumpty.fump}
 *27 @chapter C2 nodequote.texi:l48
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E26]
 |section_directions:D[next->E31|prev->E25|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E31|prev->E25|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blumpty.fump}
  {empty_line:\\n}
 *28 @node C1 nodequote.texi:l50
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E31]
 |is_target:{1}
 |menu_directions:D[next->E32|prev->E26|up->E0]
 |node_directions:D[next->MISSING: (line_arg)[C6]|prev->MISSING: (line_arg)[C6]|up->MISSING: (line_arg)[C4]]
 |normalized:{normal-node}
  *arguments_line C4
   *line_arg C1
    {normal node}
   *line_arg C6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{man@comma{}u:a.l}
   |node_content:{direction}
   |normalized:{direction}
    {(}
    {man}
    *29 @comma C1 nodequote.texi:l50
     *brace_container
    {u:a.l}
    {)}
    {direction}
   *line_arg C6
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{man_ual}
   |node_content:{direct@comma{}ion}
   |normalized:{direct_002cion}
    {(}
    {man_ual}
    {)}
    {direct}
    *30 @comma C1 nodequote.texi:l50
     *brace_container
    {ion}
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{man_ual}
   |node_content:{direct::i.on}
   |normalized:{direct_003a_003ai_002eon}
    {(}
    {man_ual}
    {)}
    {direct::i.on}
 *31 @chapter C2 nodequote.texi:l51
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E28]
 |section_directions:D[next->E34|prev->E27|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E34|prev->E27|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {normal node}
  {empty_line:\\n}
 *32 @node C1 nodequote.texi:l53
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E34]
 |is_target:{1}
 |menu_directions:D[prev->E28|up->E0]
 |node_directions:D[prev->E28|up->E0]
 |normalized:{secret_002cnode}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *33 @asis C1 nodequote.texi:l53
     *brace_container C1
      {secret,node}
 *34 @chapter C2 nodequote.texi:l54
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E32]
 |section_directions:D[prev->E31|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E31|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *35 @asis C1 nodequote.texi:l54
     *brace_container C1
      {secret,node}
  {empty_line:\\n}
 *36 @node C3 nodequote.texi:l56
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |normalized:{top-secret-node}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top secret node}
  {empty_line:\\n}
  *paragraph C1
   {stuff here.\\n}
';


$result_texis{'quote_node_names'} = '@node Top
@top

@xref{normal node, the::caption and a word}
@xref{normal node, the::caption}

@xref{blah:blah, the::caption and a word}
@xref{blah:blah, the::caption}

@xref{blumpty.fump, the::caption and a word}
@xref{blumpty.fump, the::caption}.mrmrmrmmrmrmr

@xref{blah:blah}.

@xref{@asis{secret,node}}.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA @xref{blah:blah}.)

@xref{x:y::z,,,man_ual,Book Title}.

@xref{x.y.z,,,man_ual,Book Title}.

@xref{pp:qq::rr,, label, man_ual,Book Title}.

@xref{pp:qq.rr,, label, man_ual,Book Title}.

@xref{ext,, label, man:u.al, Book Title}.

@xref{e:x.t,, label, man:u.al, Book Title}.

@xref{ext,, la:bel, man:u.al, Book Title}.

@menu
* blah@asis{:}blah::
* the topic:blumpty@asis{.}fump.
* normal node::
* funny@asis{:}label:@asis{secret,node}.
* (man:u.al)ext::

@end menu

@node blah:blah
@chapter blah:blah

stuff here.

@node blumpty.fump
@chapter blumpty.fump

@node normal node, (man@comma{}u:a.l)direction, (man_ual)direct@comma{}ion, (man_ual)direct::i.on
@chapter normal node

@node @asis{secret,node}
@chapter @asis{secret,node}

@node top secret node

stuff here.
';


$result_texts{'quote_node_names'} = '
normal node
normal node

blah:blah
blah:blah

blumpty.fump
blumpty.fump.mrmrmrmmrmrmr

blah:blah.

secret,node.

AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA blah:blah.)

x:y::z.

x.y.z.

pp:qq::rr.

pp:qq.rr.

ext.

e:x.t.

ext.

* blah:blah::
* the topic:blumpty.fump.
* normal node::
* funny:label:secret,node.
* (man:u.al)ext::


1 blah:blah
***********

stuff here.

2 blumpty.fump
**************

3 normal node
*************

4 secret,node
*************


stuff here.
';

$result_sectioning{'quote_node_names'} = {
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
                    'normalized' => 'blah_003ablah'
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
                    'normalized' => 'blumpty_002efump'
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
            },
            {
              'cmdname' => 'chapter',
              'extra' => {
                'associated_node' => {
                  'cmdname' => 'node',
                  'extra' => {
                    'normalized' => 'normal-node'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '3',
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
                    'normalized' => 'secret_002cnode'
                  }
                },
                'section_directions' => {
                  'prev' => {},
                  'up' => {}
                },
                'section_level' => 1,
                'section_number' => '4',
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
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[2];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0];
$result_sectioning{'quote_node_names'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'quote_node_names'};

$result_nodes{'quote_node_names'} = [
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
                    'next' => {
                      'cmdname' => 'node',
                      'extra' => {
                        'associated_section' => {
                          'cmdname' => 'chapter',
                          'extra' => {
                            'section_number' => '3'
                          }
                        },
                        'node_directions' => {
                          'next' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direction'
                            },
                            'type' => 'line_arg'
                          },
                          'prev' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direct_002cion'
                            },
                            'type' => 'line_arg'
                          },
                          'up' => {
                            'extra' => {
                              'manual_content' => {},
                              'normalized' => 'direct_003a_003ai_002eon'
                            },
                            'type' => 'line_arg'
                          }
                        },
                        'normalized' => 'normal-node'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'blumpty_002efump'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'blah_003ablah'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {},
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'chapter',
        'extra' => {
          'section_number' => '4'
        }
      },
      'node_directions' => {
        'prev' => {},
        'up' => {}
      },
      'normalized' => 'secret_002cnode'
    }
  },
  {
    'cmdname' => 'node',
    'extra' => {
      'normalized' => 'top-secret-node'
    }
  }
];
$result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names'}[0];
$result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names'}[0];
$result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names'}[0];
$result_nodes{'quote_node_names'}[1] = $result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names'}[2] = $result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names'}[3] = $result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names'}[4]{'extra'}{'node_directions'}{'prev'} = $result_nodes{'quote_node_names'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'quote_node_names'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'quote_node_names'}[0];

$result_menus{'quote_node_names'} = [
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
                    'next' => {
                      'extra' => {
                        'menu_directions' => {
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'secret_002cnode'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'normal-node'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'blumpty_002efump'
          }
        },
        'up' => {}
      },
      'normalized' => 'blah_003ablah'
    }
  },
  {},
  {},
  {},
  {
    'extra' => {
      'normalized' => 'top-secret-node'
    }
  }
];
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names'}[0];
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names'}[0];
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'quote_node_names'}[1];
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names'}[0];
$result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'up'} = $result_menus{'quote_node_names'}[0];
$result_menus{'quote_node_names'}[2] = $result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names'}[3] = $result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'quote_node_names'}[4] = $result_menus{'quote_node_names'}[1]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};

$result_errors{'quote_node_names'} = [
  {
    'error_line' => 'warning: @menu entry node name `blah@asis{:}blah\' different from node name `blah:blah\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 34,
    'text' => '@menu entry node name `blah@asis{:}blah\' different from node name `blah:blah\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @menu entry node name `blumpty@asis{.}fump\' different from node name `blumpty.fump\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 35,
    'text' => '@menu entry node name `blumpty@asis{.}fump\' different from node name `blumpty.fump\'',
    'type' => 'warning'
  },
  {
    'error_line' => '@menu reference to nonexistent node `u.al)ext::
\'
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 38,
    'text' => '@menu reference to nonexistent node `u.al)ext::
\'',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `top secret node\' unreferenced
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 56,
    'text' => 'node `top secret node\' unreferenced',
    'type' => 'warning'
  }
];


$result_floats{'quote_node_names'} = {};


1;
