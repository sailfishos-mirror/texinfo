use vars qw(%result_texis %result_texts %result_tree_text %result_errors
   %result_indices %result_floats %result_converted %result_converted_errors
   %result_indices_sort_strings);

use utf8;

$result_tree_text{'quote_node_names_info'} = '*document_root C12
 *before_node_section C1
  *preamble_before_content
 *0 @node C1 nodequote.texi:l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |associated_title_command:[E1]
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
 *1 @top C30 nodequote.texi:l2
 |EXTRA
 |associated_anchor_command:[E0]
 |associated_node:[E0]
 |section_childs:EC[E4|E6|E8|E10]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
  *paragraph C4
   *@xref C2 nodequote.texi:l4
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
   *@xref C2 nodequote.texi:l5
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
   *@xref C2 nodequote.texi:l7
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
   *@xref C2 nodequote.texi:l8
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
   *@xref C2 nodequote.texi:l10
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
   *@xref C2 nodequote.texi:l11
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
   *@xref C1 nodequote.texi:l13
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
   {.\\n}
  {empty_line:\\n}
  *paragraph C2
   *@xref C1 nodequote.texi:l15
    *brace_arg C1
    |EXTRA
    |node_content:{@asis{secret,node}}
    |normalized:{secret_002cnode}
     *@asis C1 nodequote.texi:l15
      *brace_container C1
       {secret,node}
   {.\\n}
  {empty_line:\\n}
  *paragraph C3
   {AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA }
   *@xref C1 nodequote.texi:l17
    *brace_arg C1
    |EXTRA
    |node_content:{blah:blah}
    |normalized:{blah_003ablah}
     {blah:blah}
   {.)\\n}
  {empty_line:\\n}
  *paragraph C2
   *@xref C5 nodequote.texi:l19
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
   *@xref C5 nodequote.texi:l21
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
   *@xref C5 nodequote.texi:l23
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
   *@xref C5 nodequote.texi:l25
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
   *@xref C5 nodequote.texi:l27
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
   *@xref C5 nodequote.texi:l29
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
   *@xref C5 nodequote.texi:l31
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
  *2 @menu C8 nodequote.texi:l33
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
     *@asis C1 nodequote.texi:l34
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
     *@asis C1 nodequote.texi:l35
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
     *@asis C1 nodequote.texi:l37
      *brace_container C1
       {:}
     {label}
    {menu_entry_separator::}
    *menu_entry_node C1
    |EXTRA
    |node_content:{@asis{secret,node}}
    |normalized:{secret_002cnode}
     *@asis C1 nodequote.texi:l37
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
 *3 @node C1 nodequote.texi:l42 {blah:blah}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E4]
 |associated_title_command:[E4]
 |is_target:{1}
 |menu_directions:D[next->E5|up->E0]
 |node_directions:D[next->E5|prev->E0|up->E0]
 |normalized:{blah_003ablah}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blah:blah}
 *4 @chapter C4 nodequote.texi:l43 {blah:blah}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E3]
 |associated_node:[E3]
 |section_directions:D[next->E6|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E6|prev->E1|up->E1]
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
 *5 @node C1 nodequote.texi:l47 {blumpty.fump}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E6]
 |associated_title_command:[E6]
 |is_target:{1}
 |menu_directions:D[next->E7|prev->E3|up->E0]
 |node_directions:D[next->E7|prev->E3|up->E0]
 |normalized:{blumpty_002efump}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blumpty.fump}
 *6 @chapter C2 nodequote.texi:l48 {blumpty.fump}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E5]
 |associated_node:[E5]
 |section_directions:D[next->E8|prev->E4|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[next->E8|prev->E4|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {blumpty.fump}
  {empty_line:\\n}
 *7 @node C1 nodequote.texi:l50 {normal node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E8]
 |associated_title_command:[E8]
 |is_target:{1}
 |menu_directions:D[next->E9|prev->E5|up->E0]
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
    *@comma C1 nodequote.texi:l50
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
    *@comma C1 nodequote.texi:l50
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
 *8 @chapter C2 nodequote.texi:l51 {normal node}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E7]
 |associated_node:[E7]
 |section_directions:D[next->E10|prev->E6|up->E1]
 |section_level:{1}
 |section_number:{3}
 |toplevel_directions:D[next->E10|prev->E6|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {normal node}
  {empty_line:\\n}
 *9 @node C1 nodequote.texi:l53 {@asis{secret,node}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E10]
 |associated_title_command:[E10]
 |is_target:{1}
 |menu_directions:D[prev->E7|up->E0]
 |node_directions:D[prev->E7|up->E0]
 |normalized:{secret_002cnode}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1 nodequote.texi:l53
     *brace_container C1
      {secret,node}
 *10 @chapter C2 nodequote.texi:l54 {@asis{secret,node}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_anchor_command:[E9]
 |associated_node:[E9]
 |section_directions:D[prev->E8|up->E1]
 |section_level:{1}
 |section_number:{4}
 |toplevel_directions:D[prev->E8|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    *@asis C1 nodequote.texi:l54
     *brace_container C1
      {secret,node}
  {empty_line:\\n}
 *11 @node C3 nodequote.texi:l56 {top secret node}
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


$result_texis{'quote_node_names_info'} = '@node Top
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


$result_texts{'quote_node_names_info'} = '
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

$result_errors{'quote_node_names_info'} = [
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


$result_converted_errors{'file_info'}->{'quote_node_names_info'} = [
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 4,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 5,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 7,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 8,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: `.\' or `,\' must follow @xref
',
    'file_name' => 'nodequote.texi',
    'line_nr' => 10,
    'text' => '`.\' or `,\' must follow @xref',
    'type' => 'warning'
  }
];


1;
