use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_no_node_no_top_no_node'} = '*document_root C7
 *before_node_section C7
  *preamble_before_beginning C2
   {text_before_beginning:\\input texinfo @c -*-texinfo-*-\\n}
   {text_before_beginning:\\n}
  *preamble_before_content
  *0 index_entry_command@cindex C1 index_no_node_no_top.texi:l3
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {truc}
  *paragraph C1
   {Garbage\\n}
  *@printindex C1 index_no_node_no_top.texi:l5
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
  {empty_line:\\n}
 *1 @unnumbered C8 index_no_node_no_top.texi:l8 {unnumbered}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E4]
 |section_level:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E4|E15|E18]
  ||section_level:{0}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  *@printindex C1 index_no_node_no_top.texi:l9
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {bidule}
  {empty_line:\\n}
  *2 index_entry_command@cindex C1 index_no_node_no_top.texi:l11
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {unnumbered}
  *paragraph C2
   {in unnumbered\\n}
   *3 index_entry_command@cindex C1 index_no_node_no_top.texi:l13
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |index_entry:I{cp,3}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {unnumbered after text}
  {empty_line:\\n}
  *@printindex C1 index_no_node_no_top.texi:l15
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{3}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
 *4 @unnumbered C15 index_no_node_no_top.texi:l17 {top (chapter) section}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_childs:EC[E12]
 |section_directions:D[next->E15|prev->E1]
 |section_level:{1}
 |toplevel_directions:D[next->E15|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top (chapter) section}
  {empty_line:\\n}
  *5 index_entry_command@cindex C1 index_no_node_no_top.texi:l19
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,4}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *6 index_entry_command@cindex C1 index_no_node_no_top.texi:l20
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,5}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *7 index_entry_command@cindex C1 index_no_node_no_top.texi:l21
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,6}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *8 index_entry_command@cindex C1 index_no_node_no_top.texi:l22
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,7}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *9 index_entry_command@cindex C1 index_no_node_no_top.texi:l23
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,8}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *10 index_entry_command@cindex C1 index_no_node_no_top.texi:l24
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,9}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section}
  *paragraph C1
   {Top node\\n}
  {empty_line:\\n}
  *@printindex C1 index_no_node_no_top.texi:l27
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{4}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  {empty_line:\\n}
  *11 index_entry_command@cindex C1 index_no_node_no_top.texi:l29
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,10}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top section1}
  {empty_line:\\n}
  {empty_line:\\n}
 *12 @section C7 index_no_node_no_top.texi:l32 {second}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[up->E4]
 |section_level:{2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
  *@printindex C1 index_no_node_no_top.texi:l34
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{5}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  *13 index_entry_command@cindex C1 index_no_node_no_top.texi:l35
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,11}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  *paragraph C2
   {second node\\n}
   *14 index_entry_command@cindex C1 index_no_node_no_top.texi:l37
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |index_entry:I{cp,12}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {second}
  {empty_line:\\n}
  *@printindex C1 index_no_node_no_top.texi:l39
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{6}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
 *15 @chapter C6 index_no_node_no_top.texi:l40 {Chapter}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E18|prev->E4]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E18|prev->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter}
  *16 index_entry_command@cindex C1 index_no_node_no_top.texi:l41
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |index_entry:I{cp,13}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter}
  {empty_line:\\n}
  *@printindex C1 index_no_node_no_top.texi:l43
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{7}
  |misc_args:A{cp}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {cp}
  *paragraph C2
   {Text of chapter\\n}
   *17 index_entry_command@cindex C1 index_no_node_no_top.texi:l45
   |INFO
   |command_name:{cindex}
   |spaces_before_argument:
    |{ }
   |EXTRA
   |index_entry:I{cp,14}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {Chapter2}
  {empty_line:\\n}
 *18 @chapter C4 index_no_node_no_top.texi:l47 {Chapter 2}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E15]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E15]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chapter 2}
  {empty_line:\\n}
  *paragraph C1
   {In chapter 2\\n}
  {empty_line:\\n}
 *@bye C1
  {rawline_arg:\\n}
';


$result_texis{'index_no_node_no_top_no_node'} = '\\input texinfo @c -*-texinfo-*-

@cindex truc
Garbage
@printindex cp


@unnumbered unnumbered
@printindex bidule

@cindex unnumbered
in unnumbered
@cindex unnumbered after text

@printindex cp

@unnumbered top (chapter) section

@cindex top section
@cindex top section
@cindex top section
@cindex top section
@cindex top section
@cindex top section
Top node

@printindex cp

@cindex top section1


@section second

@printindex cp
@cindex second
second node
@cindex second

@printindex cp
@chapter Chapter
@cindex chapter

@printindex cp
Text of chapter
@cindex Chapter2

@chapter Chapter 2

In chapter 2

@bye
';


$result_texts{'index_no_node_no_top_no_node'} = 'Garbage


unnumbered
**********

in unnumbered


top (chapter) section
*********************

Top node




second
======

second node

1 Chapter
*********

Text of chapter

2 Chapter 2
***********

In chapter 2

';

$result_sectioning{'index_no_node_no_top_no_node'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'unnumbered',
        'extra' => {
          'section_directions' => {},
          'section_level' => 1,
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'unnumbered',
        'extra' => {
          'section_childs' => [
            {
              'cmdname' => 'section',
              'extra' => {
                'section_directions' => {
                  'up' => {}
                },
                'section_level' => 2
              }
            }
          ],
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => '1',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      },
      {
        'cmdname' => 'chapter',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 1,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 0
  }
};
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'index_no_node_no_top_no_node'};
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[0];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[1];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[3]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[2];
$result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[3]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'index_no_node_no_top_no_node'}{'extra'}{'section_childs'}[2];

$result_errors{'index_no_node_no_top_no_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: printindex before document beginning: @printindex cp
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 5,
    'text' => 'printindex before document beginning: @printindex cp',
    'type' => 'warning'
  },
  {
    'error_line' => 'unknown index `bidule\' in @printindex
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 9,
    'text' => 'unknown index `bidule\' in @printindex',
    'type' => 'error'
  }
];


$result_floats{'index_no_node_no_top_no_node'} = {};


$result_indices_sort_strings{'index_no_node_no_top_no_node'} = {
  'cp' => [
    'chapter',
    'Chapter2',
    'second',
    'second',
    'top section',
    'top section',
    'top section',
    'top section',
    'top section',
    'top section',
    'top section1',
    'truc',
    'unnumbered',
    'unnumbered after text'
  ]
};



$result_converted{'info'}->{'index_no_node_no_top_no_node'} = 'This is , produced from index_no_node_no_top.texi.

Garbage

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

unnumbered
**********

in unnumbered

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

top (chapter) section
*********************

Top node

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

second
======

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

second node

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

1 Chapter
*********

 [index ]
* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

Text of chapter

2 Chapter 2
***********

In chapter 2


Tag Table:

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'index_no_node_no_top_no_node'} = [
  {
    'error_line' => 'warning: document without nodes
',
    'file_name' => 'index_no_node_no_top.texi',
    'text' => 'document without nodes',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 41,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 45,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 35,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 37,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 19,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 20,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 21,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 22,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 23,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 24,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 29,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 11,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 13,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'index_no_node_no_top_no_node'} = 'Garbage

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

unnumbered
**********

in unnumbered

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

top (chapter) section
*********************

Top node

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

second
======

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

second node

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

1 Chapter
*********

* Menu:

* chapter:                               (outside of any node). (line 0)
* Chapter2:                              (outside of any node). (line 0)
* second:                                (outside of any node). (line 0)
* second <1>:                            (outside of any node). (line 0)
* top section:                           (outside of any node). (line 0)
* top section <1>:                       (outside of any node). (line 0)
* top section <2>:                       (outside of any node). (line 0)
* top section <3>:                       (outside of any node). (line 0)
* top section <4>:                       (outside of any node). (line 0)
* top section <5>:                       (outside of any node). (line 0)
* top section1:                          (outside of any node). (line 0)
* truc:                                  (outside of any node). (line 0)
* unnumbered:                            (outside of any node). (line 0)
* unnumbered after text:                 (outside of any node). (line 0)

Text of chapter

2 Chapter 2
***********

In chapter 2

';

$result_converted_errors{'plaintext'}->{'index_no_node_no_top_no_node'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 41,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 45,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 35,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 37,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 19,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 20,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 21,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 22,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 23,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 24,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 29,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 3,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 11,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'file_name' => 'index_no_node_no_top.texi',
    'line_nr' => 13,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'index_no_node_no_top_no_node'} = '<a class="index-entry-id" id="index-truc"></a>
<p>Garbage
</p><div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#unnumbered_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#unnumbered_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>


<div class="unnumbered-level-extent" id="unnumbered">
<div class="nav-panel">
<p>
[<a href="#Chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="unnumbered"><span>unnumbered<a class="copiable-link" href="#unnumbered"> &para;</a></span></h2>

<a class="index-entry-id" id="index-unnumbered"></a>
<p>in unnumbered
<a class="index-entry-id" id="index-unnumbered-after-text"></a>
</p>
<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#unnumbered_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="unnumbered_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#unnumbered_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#unnumbered_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>

<hr>
</div>
<div class="unnumbered-level-extent" id="top-_0028chapter_0029-section">
<div class="nav-panel">
<p>
[<a href="#Chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="unnumbered"><span>top (chapter) section<a class="copiable-link" href="#top-_0028chapter_0029-section"> &para;</a></span></h2>

<a class="index-entry-id" id="index-top-section"></a>
<a class="index-entry-id" id="index-top-section-1"></a>
<a class="index-entry-id" id="index-top-section-2"></a>
<a class="index-entry-id" id="index-top-section-3"></a>
<a class="index-entry-id" id="index-top-section-4"></a>
<a class="index-entry-id" id="index-top-section-5"></a>
<p>Top node
</p>
<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="top-_0028chapter_0029-section_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="top-_0028chapter_0029-section_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="top-_0028chapter_0029-section_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="top-_0028chapter_0029-section_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#top-_0028chapter_0029-section_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>

<a class="index-entry-id" id="index-top-section1"></a>


<ul class="mini-toc">
<li><a href="#second" accesskey="1">second</a></li>
</ul>
<hr>
<div class="section-level-extent" id="second">
<div class="nav-panel">
<p>
[<a href="#Chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h3 class="section"><span>second<a class="copiable-link" href="#second"> &para;</a></span></h3>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#second_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#second_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>
<a class="index-entry-id" id="index-second"></a>
<p>second node
<a class="index-entry-id" id="index-second-1"></a>
</p>
<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#second_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="second_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#second_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#second_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="Chapter">
<div class="nav-panel">
<p>
[<a href="#Chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>
<a class="index-entry-id" id="index-chapter"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Chapter_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Chapter_cp_letter-C">C</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-chapter">chapter</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-Chapter2">Chapter2</a></td><td class="printindex-index-section"><a href="#Chapter">1 Chapter</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Chapter_cp_letter-S">S</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-second">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-second-1">second</a></td><td class="printindex-index-section"><a href="#second">second</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Chapter_cp_letter-T">T</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-1">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-2">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-3">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-4">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section-5">top section</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-top-section1">top section1</a></td><td class="printindex-index-section"><a href="#top-_0028chapter_0029-section">top (chapter) section</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-truc">truc</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Chapter_cp_letter-U">U</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered">unnumbered</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-unnumbered-after-text">unnumbered after text</a></td><td class="printindex-index-section"><a href="#unnumbered">unnumbered</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#Chapter_cp_letter-C"><b>C</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-S"><b>S</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-T"><b>T</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#Chapter_cp_letter-U"><b>U</b></a>
 &nbsp; 
</td></tr></table>
</div>
<p>Text of chapter
<a class="index-entry-id" id="index-Chapter2"></a>
</p>
<hr>
</div>
<div class="chapter-level-extent" id="Chapter-2">
<div class="nav-panel">
<p>
[<a href="#Chapter" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter"><span>2 Chapter 2<a class="copiable-link" href="#Chapter-2"> &para;</a></span></h2>

<p>In chapter 2
</p>
</div>
';


$result_converted{'xml'}->{'index_no_node_no_top_no_node'} = '<preamblebeforebeginning>\\input texinfo @c -*-texinfo-*-

</preamblebeforebeginning><cindex index="cp" spaces=" "><indexterm index="cp" number="1">truc</indexterm></cindex>
<para>Garbage
</para><printindex spaces=" " value="cp" line="cp"></printindex>


<unnumbered spaces=" "><sectiontitle>unnumbered</sectiontitle>
<printindex spaces=" " line="bidule"></printindex>

<cindex index="cp" spaces=" "><indexterm index="cp" number="2">unnumbered</indexterm></cindex>
<para>in unnumbered
<cindex index="cp" spaces=" "><indexterm index="cp" number="3">unnumbered after text</indexterm></cindex>
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>

</unnumbered>
<unnumbered spaces=" "><sectiontitle>top (chapter) section</sectiontitle>

<cindex index="cp" spaces=" "><indexterm index="cp" number="4">top section</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="5">top section</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="6">top section</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="7">top section</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="8">top section</indexterm></cindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="9">top section</indexterm></cindex>
<para>Top node
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>

<cindex index="cp" spaces=" "><indexterm index="cp" number="10">top section1</indexterm></cindex>


<section spaces=" "><sectiontitle>second</sectiontitle>

<printindex spaces=" " value="cp" line="cp"></printindex>
<cindex index="cp" spaces=" "><indexterm index="cp" number="11">second</indexterm></cindex>
<para>second node
<cindex index="cp" spaces=" "><indexterm index="cp" number="12">second</indexterm></cindex>
</para>
<printindex spaces=" " value="cp" line="cp"></printindex>
</section>
</unnumbered>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>
<cindex index="cp" spaces=" "><indexterm index="cp" number="13">chapter</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
<para>Text of chapter
<cindex index="cp" spaces=" "><indexterm index="cp" number="14">Chapter2</indexterm></cindex>
</para>
</chapter>
<chapter spaces=" "><sectiontitle>Chapter 2</sectiontitle>

<para>In chapter 2
</para>
</chapter>
<bye></bye>
';

1;
