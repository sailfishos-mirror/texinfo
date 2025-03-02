use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'namedanchor'} = '*document_root C11
 *before_node_section
 *0 @node C1 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E4]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C5 l2
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E5|E28]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E5]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
  *2 @namedanchor C2 l4
  |EXTRA
  |is_target:{1}
  |menu_directions:D[next->E6|prev->E30|up->E27]
  |normalized:{in-Top}
   *brace_arg C1
    {in Top}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    *3 @emph C1 l4
     *brace_container C1
      {n in Top}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *4 @node C1 l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E5]
 |is_target:{1}
 |node_directions:D[next->E27|prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *5 @chapter C12 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E4]
 |section_childs:EC[E12]
 |section_directions:D[next->E28|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E28|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C4
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter }
    *6 @namedanchor C2 l7
    |EXTRA
    |is_target:{1}
    |menu_directions:D[next->E7|prev->E2|up->E27]
    |normalized:{Not-here_0021}
     *brace_arg C1
      {Not here!}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {There}
    {spaces_after_close_brace: }
    {after}
  {empty_line:\\n}
  *7 @namedanchor C1 l9
  |EXTRA
  |is_target:{1}
  |menu_directions:D[next->E10|prev->E6|up->E27]
  |normalized:{in-chap-no-name}
   *brace_arg C1
    {in chap no name}
  {spaces_after_close_brace:\\n}
  *8 @namedanchor C2 l10
  |EXTRA
  |is_target:{1}
  |menu_directions:D[prev->E10|up->E27]
  |normalized:{in-chap-empty-name}
   *brace_arg C1
    {in chap empty name}
   *brace_arg
   |INFO
   |spaces_before_argument:
    |{ }
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
  *paragraph C3
   {Empty namedanchor\\n}
   *9 @namedanchor C1 l13
    *brace_arg
    |INFO
    |spaces_before_argument:
     |{ }
   {.\\n}
  {empty_line:\\n}
  *10 @namedanchor C2 l15
  |EXTRA
  |is_target:{1}
  |menu_directions:D[next->E8|prev->E7|up->E27]
  |normalized:{normal}
   *brace_arg C1
    {normal}
   *brace_arg C1
   |INFO
   |spaces_before_argument:
    |{ }
    {here we are}
  {spaces_after_close_brace:\\n}
  {empty_line:\\n}
 *11 @node C1 l17
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E12]
 |is_target:{1}
 |node_directions:D[up->E4]
 |normalized:{secc1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {secc1}
 *12 @section C16 l18
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E11]
 |section_directions:D[up->E5]
 |section_level:{2}
 |section_number:{1.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {secc1}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l20
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
  {empty_line:\\n}
  *paragraph C6
   *13 @xref C1 l22
    *brace_arg C1
    |EXTRA
    |node_content:{in chap no name}
    |normalized:{in-chap-no-name}
     {in chap no name}
   {\\n}
   *14 @xref C2 l23
    *brace_arg C1
    |EXTRA
    |node_content:{in chap no name}
    |normalized:{in-chap-no-name}
     {in chap no name}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {t}
   {\\n}
   *15 @xref C3 l24
    *brace_arg C1
    |EXTRA
    |node_content:{in chap no name}
    |normalized:{in-chap-no-name}
     {in chap no name}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {t}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {o}
   {\\n}
  {empty_line:\\n}
  *paragraph C6
   *16 @xref C1 l26
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
   {\\n}
   *17 @xref C2 l27
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {nt}
   {\\n}
   *18 @xref C3 l28
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {nt}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {no}
   {\\n}
  {empty_line:\\n}
  *@xrefautomaticsectiontitle C1 l30
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  {empty_line:\\n}
  *paragraph C6
   *19 @xref C1 l32
    *brace_arg C1
    |EXTRA
    |node_content:{in chap empty name}
    |normalized:{in-chap-empty-name}
     {in chap empty name}
   {\\n}
   *20 @xref C2 l33
    *brace_arg C1
    |EXTRA
    |node_content:{in chap empty name}
    |normalized:{in-chap-empty-name}
     {in chap empty name}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on t}
   {\\n}
   *21 @xref C3 l34
    *brace_arg C1
    |EXTRA
    |node_content:{in chap empty name}
    |normalized:{in-chap-empty-name}
     {in chap empty name}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on t}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on o}
   {\\n}
  {empty_line:\\n}
  *paragraph C6
   *22 @xref C1 l36
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
   {\\n}
   *23 @xref C2 l37
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on nt}
   {\\n}
   *24 @xref C3 l38
    *brace_arg C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on nt}
    *brace_arg C1
    |INFO
    |spaces_before_argument:
     |{ }
     {xat on no}
   {\\n}
  {empty_line:\\n}
  *paragraph C4
   *25 @xref C1 l40
    *brace_arg C1
    |EXTRA
    |node_content:{in Top}
    |normalized:{in-Top}
     {in Top}
   {\\n}
   *26 @xref C1 l41
    *brace_arg C1
    |EXTRA
    |node_content:{Not here!}
    |normalized:{Not-here_0021}
     {Not here!}
   {\\n}
  {empty_line:\\n}
 *27 @node C1 l43
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E28]
 |is_target:{1}
 |menus:EC[E29]
 |node_directions:D[prev->E4|up->E0]
 |normalized:{chap1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap1}
 *28 @chapter C4 l44
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E27]
 |section_childs:EC[E31]
 |section_directions:D[prev->E5|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E5|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap1}
  {empty_line:\\n}
  *29 @menu C8 l46
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *menu_entry C4 l47
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{secc2}
    |normalized:{secc2}
     {secc2}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l48
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{in Top}
    |normalized:{in-Top}
     {in Top}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l49
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{Not here!}
    |normalized:{Not-here_0021}
     {Not here!}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l50
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{in chap no name}
    |normalized:{in-chap-no-name}
     {in chap no name}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l51
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{normal}
    |normalized:{normal}
     {normal}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *menu_entry C4 l52
    {menu_entry_leading_text:* }
    *menu_entry_node C1
    |EXTRA
    |node_content:{in chap empty name}
    |normalized:{in-chap-empty-name}
     {in chap empty name}
    {menu_entry_separator:::}
    *menu_entry_description C1
     *preformatted C1
      {\\n}
   *@end C1 l53
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
 *30 @node C1 l55
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E31]
 |is_target:{1}
 |menu_directions:D[next->E2|up->E27]
 |node_directions:D[next->E2|up->E27]
 |normalized:{secc2}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {secc2}
 *31 @section C1 l56
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E30]
 |section_directions:D[up->E28]
 |section_level:{2}
 |section_number:{2.1}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Secc2}
';


$result_texis{'namedanchor'} = '@node Top
@top top

@namedanchor{in Top, @emph{n in Top}}

@node chap
@chapter chapter @namedanchor{Not here!, There} after

@namedanchor{in chap no name}
@namedanchor{in chap empty name, }

Empty namedanchor
@namedanchor{ }.

@namedanchor{normal, here we are}

@node secc1
@section secc1

@xrefautomaticsectiontitle off

@xref{in chap no name}
@xref{in chap no name, t}
@xref{in chap no name, t, o}

@xref{normal}
@xref{normal, nt}
@xref{normal, nt, no}

@xrefautomaticsectiontitle on

@xref{in chap empty name}
@xref{in chap empty name, xat on t}
@xref{in chap empty name, xat on t, xat on o}

@xref{normal}
@xref{normal, xat on nt}
@xref{normal, xat on nt, xat on no}

@xref{in Top}
@xref{Not here!}

@node chap1
@chapter chap1

@menu
* secc2::
* in Top::
* Not here!::
* in chap no name::
* normal::
* in chap empty name::
@end menu

@node secc2
@section Secc2
';


$result_texts{'namedanchor'} = 'top
***


1 chapter after
***************


Empty namedanchor
.


1.1 secc1
=========


in chap no name
in chap no name
in chap no name

normal
normal
normal


in chap empty name
in chap empty name
in chap empty name

normal
normal
normal

in Top
Not here!

2 chap1
*******

* secc2::
* in Top::
* Not here!::
* in chap no name::
* normal::
* in chap empty name::

2.1 Secc2
=========
';

$result_sectioning{'namedanchor'} = {
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
                    'normalized' => 'chap'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'secc1'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '1.1'
                    }
                  }
                ],
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
                    'normalized' => 'chap1'
                  }
                },
                'section_childs' => [
                  {
                    'cmdname' => 'section',
                    'extra' => {
                      'associated_node' => {
                        'cmdname' => 'node',
                        'extra' => {
                          'normalized' => 'secc2'
                        }
                      },
                      'section_directions' => {
                        'up' => {}
                      },
                      'section_level' => 2,
                      'section_number' => '2.1'
                    }
                  }
                ],
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
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0];
$result_sectioning{'namedanchor'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'namedanchor'};

$result_nodes{'namedanchor'} = [
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
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'chap1'
                }
              },
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
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '1.1'
        }
      },
      'node_directions' => {
        'up' => {}
      },
      'normalized' => 'secc1'
    }
  },
  {},
  {
    'cmdname' => 'node',
    'extra' => {
      'associated_section' => {
        'cmdname' => 'section',
        'extra' => {
          'section_number' => '2.1'
        }
      },
      'node_directions' => {
        'next' => {
          'cmdname' => 'namedanchor',
          'extra' => {
            'normalized' => 'in-Top'
          }
        },
        'up' => {}
      },
      'normalized' => 'secc2'
    }
  }
];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0];
$result_nodes{'namedanchor'}[1] = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[2]{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[3] = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};
$result_nodes{'namedanchor'}[4]{'extra'}{'node_directions'}{'up'} = $result_nodes{'namedanchor'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'namedanchor'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  },
  {
    'extra' => {
      'normalized' => 'secc1'
    }
  },
  {
    'extra' => {
      'menus' => [
        {}
      ],
      'normalized' => 'chap1'
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
                          'next' => {
                            'extra' => {
                              'menu_directions' => {
                                'next' => {
                                  'extra' => {
                                    'menu_directions' => {
                                      'prev' => {},
                                      'up' => {}
                                    },
                                    'normalized' => 'in-chap-empty-name'
                                  }
                                },
                                'prev' => {},
                                'up' => {}
                              },
                              'normalized' => 'normal'
                            }
                          },
                          'prev' => {},
                          'up' => {}
                        },
                        'normalized' => 'in-chap-no-name'
                      }
                    },
                    'prev' => {},
                    'up' => {}
                  },
                  'normalized' => 'Not-here_0021'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'in-Top'
          }
        },
        'up' => {}
      },
      'normalized' => 'secc2'
    }
  }
];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'};
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'prev'} = $result_menus{'namedanchor'}[4];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'next'}{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];
$result_menus{'namedanchor'}[4]{'extra'}{'menu_directions'}{'up'} = $result_menus{'namedanchor'}[3];

$result_errors{'namedanchor'} = [
  {
    'error_line' => 'warning: @namedanchor should not appear on @chapter line
',
    'line_nr' => 7,
    'text' => '@namedanchor should not appear on @chapter line',
    'type' => 'warning'
  },
  {
    'error_line' => 'empty argument in @namedanchor
',
    'line_nr' => 13,
    'text' => 'empty argument in @namedanchor',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: node `in Top\' is next for `secc2\' in menu but not in sectioning
',
    'line_nr' => 55,
    'text' => 'node `in Top\' is next for `secc2\' in menu but not in sectioning',
    'type' => 'warning'
  }
];


$result_floats{'namedanchor'} = {};



$result_converted{'plaintext'}->{'namedanchor'} = 'top
***

1 chapter after
***************

Empty namedanchor .

1.1 secc1
=========

See in chap no name See t: in chap no name See t: in chap no name

   See normal See nt: normal See nt: normal

   See in chap empty name See xat on t: in chap empty name See xat on t:
in chap empty name

   See normal See xat on nt: normal See xat on nt: normal

   See in Top See Not here!

2 chap1
*******

2.1 Secc2
=========

';


$result_converted{'html_text'}->{'namedanchor'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<a class="namedanchor" id="in-Top"></a>
<ul class="mini-toc">
<li><a href="#chap" accesskey="1">chapter <a class="namedanchor" id="Not-here_0021"></a>after</a></li>
<li><a href="#chap1" accesskey="2">chap1</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="chapter-after"><span>1 chapter after<a class="copiable-link" href="#chapter-after"> &para;</a></span></h2>

<a class="namedanchor" id="in-chap-no-name"></a><a class="namedanchor" id="in-chap-empty-name"></a>
<p>Empty namedanchor
.
</p>
<a class="namedanchor" id="normal"></a>
<ul class="mini-toc">
<li><a href="#secc1" accesskey="1">secc1</a></li>
</ul>
<hr>
<div class="section-level-extent" id="secc1">
<h3 class="section" id="secc1-1"><span>1.1 secc1<a class="copiable-link" href="#secc1-1"> &para;</a></span></h3>


<p>See <a class="xref" href="#in-chap-no-name">in chap no name</a>
See <a class="xref" href="#in-chap-no-name">t</a>
See <a class="xref" href="#in-chap-no-name">o</a>
</p>
<p>See <a class="xref" href="#normal">normal</a>
See <a class="xref" href="#normal">nt</a>
See <a class="xref" href="#normal">no</a>
</p>

<p>See <a class="xref" href="#in-chap-empty-name">in chap empty name</a>
See <a class="xref" href="#in-chap-empty-name">xat on t</a>
See <a class="xref" href="#in-chap-empty-name">xat on o</a>
</p>
<p>See <a class="xref" href="#normal">here we are</a>
See <a class="xref" href="#normal">xat on nt</a>
See <a class="xref" href="#normal">xat on no</a>
</p>
<p>See <a class="xref" href="#in-Top"><em class="emph">n in Top</em></a>
See <a class="xref" href="#Not-here_0021">There</a>
</p>
<hr>
</div>
</div>
<div class="chapter-level-extent" id="chap1">
<h2 class="chapter" id="chap1-1"><span>2 chap1<a class="copiable-link" href="#chap1-1"> &para;</a></span></h2>


<ul class="mini-toc">
<li><a href="#secc2" accesskey="1">Secc2</a></li>
</ul>
<hr>
<div class="section-level-extent" id="secc2">
<h3 class="section" id="Secc2"><span>2.1 Secc2<a class="copiable-link" href="#Secc2"> &para;</a></span></h3>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'namedanchor'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

<namedanchor><anchoridentifier identifier="in-Top">in Top</anchoridentifier><anchorname spaces=" "><emph>n in Top</emph></anchorname></namedanchor>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodenext automatic="on">chap1</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chapter <namedanchor><anchoridentifier identifier="Not-here_0021">Not here!</anchoridentifier><anchorname spaces=" ">There</anchorname></namedanchor> after</sectiontitle>

<namedanchor><anchoridentifier identifier="in-chap-no-name">in chap no name</anchoridentifier></namedanchor>
<namedanchor><anchoridentifier identifier="in-chap-empty-name">in chap empty name</anchoridentifier><anchorname spaces=" "></anchorname></namedanchor>

<para>Empty namedanchor
<namedanchor><anchoridentifier identifier="" spaces=" "></anchoridentifier></namedanchor>.
</para>
<namedanchor><anchoridentifier identifier="normal">normal</anchoridentifier><anchorname spaces=" ">here we are</anchorname></namedanchor>

<node identifier="secc1" spaces=" "><nodename>secc1</nodename><nodeup automatic="on">chap</nodeup></node>
<section spaces=" "><sectiontitle>secc1</sectiontitle>

<xrefautomaticsectiontitle spaces=" " value="off" line="off"></xrefautomaticsectiontitle>

<para><xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename></xref>
<xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename><xrefinfoname spaces=" ">t</xrefinfoname></xref>
<xref label="in-chap-no-name"><xrefnodename>in chap no name</xrefnodename><xrefinfoname spaces=" ">t</xrefinfoname><xrefprinteddesc spaces=" ">o</xrefprinteddesc></xref>
</para>
<para><xref label="normal"><xrefnodename>normal</xrefnodename></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">nt</xrefinfoname></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">nt</xrefinfoname><xrefprinteddesc spaces=" ">no</xrefprinteddesc></xref>
</para>
<xrefautomaticsectiontitle spaces=" " value="on" line="on"></xrefautomaticsectiontitle>

<para><xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename></xref>
<xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename><xrefinfoname spaces=" ">xat on t</xrefinfoname></xref>
<xref label="in-chap-empty-name"><xrefnodename>in chap empty name</xrefnodename><xrefinfoname spaces=" ">xat on t</xrefinfoname><xrefprinteddesc spaces=" ">xat on o</xrefprinteddesc></xref>
</para>
<para><xref label="normal"><xrefnodename>normal</xrefnodename></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">xat on nt</xrefinfoname></xref>
<xref label="normal"><xrefnodename>normal</xrefnodename><xrefinfoname spaces=" ">xat on nt</xrefinfoname><xrefprinteddesc spaces=" ">xat on no</xrefprinteddesc></xref>
</para>
<para><xref label="in-Top"><xrefnodename>in Top</xrefnodename></xref>
<xref label="Not-here_0021"><xrefnodename>Not here!</xrefnodename></xref>
</para>
</section>
</chapter>
<node identifier="chap1" spaces=" "><nodename>chap1</nodename><nodeprev automatic="on">chap</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>chap1</sectiontitle>

<menu endspaces=" ">
<menuentry><menuleadingtext>* </menuleadingtext><menunode>secc2</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in Top</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>Not here!</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in chap no name</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>normal</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry><menuentry><menuleadingtext>* </menuleadingtext><menunode>in chap empty name</menunode><menuseparator>::</menuseparator><menudescription><pre xml:space="preserve">
</pre></menudescription></menuentry></menu>

<node identifier="secc2" spaces=" "><nodename>secc2</nodename><nodenext automatic="on">in Top</nodenext><nodeup automatic="on">chap1</nodeup></node>
<section spaces=" "><sectiontitle>Secc2</sectiontitle>
</section>
</chapter>
';


$result_converted{'docbook'}->{'namedanchor'} = '<chapter label="1" id="chap">
<title>chapter <anchor id="Not-here_0021"/>after</title>

<anchor id="in-chap-no-name"/><anchor id="in-chap-empty-name"/>
<para>Empty namedanchor
.
</para>
<anchor id="normal"/>
<sect1 label="1.1" id="secc1">
<title>secc1</title>


<para>See <link linkend="in-chap-no-name">in chap no name</link>
See <link linkend="in-chap-no-name">t</link>
See <link linkend="in-chap-no-name">o</link>
</para>
<para>See <link linkend="normal">normal</link>
See <link linkend="normal">nt</link>
See <link linkend="normal">no</link>
</para>

<para>See <link linkend="in-chap-empty-name">in chap empty name</link>
See <link linkend="in-chap-empty-name">xat on t</link>
See <link linkend="in-chap-empty-name">xat on o</link>
</para>
<para>See <link linkend="normal">normal</link>
See <link linkend="normal">xat on nt</link>
See <link linkend="normal">xat on no</link>
</para>
<para>See <link linkend="in-Top">in Top</link>
See <link linkend="Not-here_0021">Not here!</link>
</para>
</sect1>
</chapter>
<chapter label="2" id="chap1">
<title>chap1</title>


<sect1 label="2.1" id="secc2">
<title>Secc2</title>
</sect1>
</chapter>
';


$result_converted{'latex_text'}->{'namedanchor'} = '\\label{anchor:Top}%
\\label{anchor:in-Top}%
\\chapter{{chapter \\label{anchor:Not-here_0021}%
after}}
\\label{anchor:chap}%

\\label{anchor:in-chap-no-name}%
\\label{anchor:in-chap-empty-name}%

Empty namedanchor
\\label{anchor:}%
.

\\label{anchor:normal}%

\\section{{secc1}}
\\label{anchor:secc1}%


See \\hyperref[anchor:in-chap-no-name]{[in chap no name], page~\\pageref*{anchor:in-chap-no-name}}
See \\hyperref[anchor:in-chap-no-name]{[in chap no name], page~\\pageref*{anchor:in-chap-no-name}}
See \\hyperref[anchor:in-chap-no-name]{[o], page~\\pageref*{anchor:in-chap-no-name}}

See \\hyperref[anchor:normal]{[normal], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[normal], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[no], page~\\pageref*{anchor:normal}}


See \\hyperref[anchor:in-chap-empty-name]{[chapter \\label{anchor:Not-here_0021}%
after], page~\\pageref*{anchor:in-chap-empty-name}}
See \\hyperref[anchor:in-chap-empty-name]{[chapter \\label{anchor:Not-here_0021}%
after], page~\\pageref*{anchor:in-chap-empty-name}}
See \\hyperref[anchor:in-chap-empty-name]{[xat on o], page~\\pageref*{anchor:in-chap-empty-name}}

See \\hyperref[anchor:normal]{[here we are], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[here we are], page~\\pageref*{anchor:normal}}
See \\hyperref[anchor:normal]{[xat on no], page~\\pageref*{anchor:normal}}

See \\hyperref[anchor:in-Top]{[\\emph{n in Top}], page~\\pageref*{anchor:in-Top}}
See \\hyperref[anchor:Not-here_0021]{[There], page~\\pageref*{anchor:Not-here_0021}}

\\chapter{{chap1}}
\\label{anchor:chap1}%


\\section{{Secc2}}
\\label{anchor:secc2}%
';

1;
