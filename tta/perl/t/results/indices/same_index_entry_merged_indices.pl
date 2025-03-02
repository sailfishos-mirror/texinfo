use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'same_index_entry_merged_indices'} = '*document_root C5
 *before_node_section C1
  *preamble_before_content C2
   *@syncodeindex C1 l1
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |misc_args:A{vr|fn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {vr fn}
   {empty_line:\\n}
 *0 @node C1 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E1]
 |is_target:{1}
 |node_directions:D[next->E2]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
 *1 @top C2 l4
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg
   |INFO
   |spaces_after_argument:
    |{\\n}
  {empty_line:\\n}
 *2 @node C1 l6
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C9 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
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
   {Text.\\n}
  {empty_line:\\n}
  *4 @deffn C3 l11
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l11
   |EXTRA
   |def_command:{deffn}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{mmm-mode}
   |element_node:[E2]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deffn}
    *block_line_arg C5
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *def_line_arg C1
       {Command}
     {spaces: }
     *def_name C1
      *def_line_arg C1
       {mmm-mode}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *5 @var C1 l11
        *brace_container C1
         {arg}
   *def_item C1
    *paragraph C1
     {Toggle the state of MMM Mode.\\n}
   *@end C1 l13
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deffn}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deffn}
  {empty_line:\\n}
  *6 @defvar C3 l15
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l15
   |EXTRA
   |def_command:{defvar}
   |def_index_element:
    |*def_name C1
     |*def_line_arg C1
      |{mmm-mode}
   |element_node:[E2]
   |index_entry:I{vr,1}
   |original_def_cmdname:{defvar}
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
     |INFO
     |inserted:{1}
      *def_line_arg C1
       {Variable}
     (i){spaces: }
     *def_name C1
      *def_line_arg C1
       {mmm-mode}
   *def_item C1
    *paragraph C1
     {This variable represents MMM Mode.\\n}
   *@end C1 l17
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defvar}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defvar}
  {empty_line:\\n}
  *@printindex C1 l19
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{fn}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {fn}
';


$result_texis{'same_index_entry_merged_indices'} = '@syncodeindex vr fn

@node Top
@top

@node chap
@chapter Chapter

Text.

@deffn Command mmm-mode @var{arg}
Toggle the state of MMM Mode.
@end deffn

@defvar mmm-mode
This variable represents MMM Mode.
@end defvar

@printindex fn
';


$result_texts{'same_index_entry_merged_indices'} = '

1 Chapter
*********

Text.

Command: mmm-mode arg
Toggle the state of MMM Mode.

Variable: mmm-mode
This variable represents MMM Mode.

';

$result_sectioning{'same_index_entry_merged_indices'} = {
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
                    'normalized' => 'chap'
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
$result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0];
$result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0];
$result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0];
$result_sectioning{'same_index_entry_merged_indices'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'same_index_entry_merged_indices'};

$result_nodes{'same_index_entry_merged_indices'} = [
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
            'normalized' => 'chap'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {}
];
$result_nodes{'same_index_entry_merged_indices'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'same_index_entry_merged_indices'}[0];
$result_nodes{'same_index_entry_merged_indices'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'same_index_entry_merged_indices'}[0];
$result_nodes{'same_index_entry_merged_indices'}[1] = $result_nodes{'same_index_entry_merged_indices'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'same_index_entry_merged_indices'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap'
    }
  }
];

$result_errors{'same_index_entry_merged_indices'} = [];


$result_indices{'same_index_entry_merged_indices'} = {
  'index_names' => {
    'cp' => {
      'in_code' => 0,
      'name' => 'cp'
    },
    'fn' => {
      'in_code' => 1,
      'name' => 'fn'
    },
    'ky' => {
      'in_code' => 1,
      'name' => 'ky'
    },
    'pg' => {
      'in_code' => 1,
      'name' => 'pg'
    },
    'tp' => {
      'in_code' => 1,
      'name' => 'tp'
    },
    'vr' => {
      'in_code' => 1,
      'merged_in' => 'fn',
      'name' => 'vr'
    }
  }
};


$result_floats{'same_index_entry_merged_indices'} = {};


$result_indices_sort_strings{'same_index_entry_merged_indices'} = {
  'fn' => [
    'mmm-mode',
    'mmm-mode'
  ]
};



$result_converted{'info'}->{'same_index_entry_merged_indices'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

 [index ]
* Menu:

* mmm-mode:                              chap.                 (line  8)
* mmm-mode <1>:                          chap.                 (line 11)


Tag Table:
Node: Top27
Node: chap93

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'same_index_entry_merged_indices'} = '1 Chapter
*********

Text.

 -- Command: mmm-mode ARG
     Toggle the state of MMM Mode.

 -- Variable: mmm-mode
     This variable represents MMM Mode.

* Menu:

* mmm-mode:                              chap.                  (line 5)
* mmm-mode <1>:                          chap.                  (line 8)

';


$result_converted{'html_text'}->{'same_index_entry_merged_indices'} = '
<div class="top-level-extent" id="Top">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<a class="top" id="SEC_Top"></a>
<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p>Text.
</p>
<dl class="first-deffn def-block">
<dt class="deffn def-line" id="index-mmm_002dmode"><span class="category-def">Command: </span><span><strong class="def-name">mmm-mode</strong> <var class="def-var-arguments"><var class="var">arg</var></var><a class="copiable-link" href="#index-mmm_002dmode"> &para;</a></span></dt>
<dd><p>Toggle the state of MMM Mode.
</p></dd></dl>

<dl class="first-defvr first-defvar-alias-first-defvr def-block">
<dt class="defvr defvar-alias-defvr def-line" id="index-mmm_002dmode-1"><span class="category-def">Variable: </span><span><strong class="def-name">mmm-mode</strong><a class="copiable-link" href="#index-mmm_002dmode-1"> &para;</a></span></dt>
<dd><p>This variable represents MMM Mode.
</p></dd></dl>

<div class="printindex fn-printindex">
<table class="index-entries-printindex fn-entries-printindex">
<tr><th class="index-letter-header-printindex fn-letter-header-printindex" colspan="2" id="chap_fn_letter-M">M</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-mmm_002dmode"><code>mmm-mode</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-mmm_002dmode-1"><code>mmm-mode</code></a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
</table>
</div>
</div>
</div>
';


$result_converted{'xml'}->{'same_index_entry_merged_indices'} = '<syncodeindex spaces=" " from="vr" to="fn" line="vr fn"></syncodeindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top><sectiontitle></sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para>Text.
</para>
<deffn spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">mmm-mode</indexterm><defcategory>Command</defcategory> <deffunction>mmm-mode</deffunction> <defparam><var>arg</var></defparam></definitionterm>
<definitionitem><para>Toggle the state of MMM Mode.
</para></definitionitem></deffn>

<defvar spaces=" " endspaces=" "><definitionterm><indexterm index="vr" number="1" mergedindex="fn">mmm-mode</indexterm><defcategory automatic="on">Variable</defcategory> <defvariable>mmm-mode</defvariable></definitionterm>
<definitionitem><para>This variable represents MMM Mode.
</para></definitionitem></defvar>

<printindex spaces=" " value="fn" line="fn"></printindex>
</chapter>
';

1;
