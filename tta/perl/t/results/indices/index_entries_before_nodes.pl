use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'index_entries_before_nodes'} = '*document_root C3
 *before_node_section C3
  *preamble_before_content
  *0 index_entry_command@cindex C1 l1
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
    {before}
  {empty_line:\\n}
 *1 @node C4 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->E3]
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *2 index_entry_command@cindex C1 l5
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E1]
  |index_entry:I{cp,2}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in top}
  {empty_line:\\n}
 *3 @node C5 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |node_directions:D[prev->E1]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
  {empty_line:\\n}
  *4 index_entry_command@cindex C1 l9
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E3]
  |index_entry:I{cp,3}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {in chap}
  {empty_line:\\n}
  *@printindex C1 l11
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
';


$result_texis{'index_entries_before_nodes'} = '@cindex before

@node Top

@cindex in top

@node chap

@cindex in chap

@printindex cp
';


$result_texts{'index_entries_before_nodes'} = '




';

$result_nodes{'index_entries_before_nodes'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'cmdname' => 'node',
          'extra' => {
            'isindex' => 1,
            'node_directions' => {
              'prev' => {}
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
$result_nodes{'index_entries_before_nodes'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'index_entries_before_nodes'}[0];
$result_nodes{'index_entries_before_nodes'}[1] = $result_nodes{'index_entries_before_nodes'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'index_entries_before_nodes'} = [
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

$result_errors{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: node `chap\' not in menu
',
    'line_nr' => 7,
    'text' => 'node `chap\' not in menu',
    'type' => 'warning'
  }
];


$result_floats{'index_entries_before_nodes'} = {};


$result_indices_sort_strings{'index_entries_before_nodes'} = {
  'cp' => [
    'before',
    'in chap',
    'in top'
  ]
};



$result_converted{'info'}->{'index_entries_before_nodes'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)


File: ,  Node: chap,  Prev: Top

 [index ]
* Menu:

* before:                                (outside of any node). (line 0)
* in chap:                               chap.                  (line 3)
* in top:                                Top.                   (line 3)


Tag Table:
Node: Top27
Node: chap74

End Tag Table


Local Variables:
coding: utf-8
End:
';

$result_converted_errors{'info'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'plaintext'}->{'index_entries_before_nodes'} = '* Menu:

* before:                                (outside of any node).
                                                               (line  0)
* in chap:                               chap.                 (line  0)
* in top:                                Top.                  (line -1)

';

$result_converted_errors{'plaintext'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'html_text'}->{'index_entries_before_nodes'} = '<a class="index-entry-id" id="index-before"></a>

<a class="node-id" id="Top"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h1 class="node"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<a class="index-entry-id" id="index-in-top"></a>

<hr>
<a class="node-id" id="chap"></a><div class="nav-panel">
<p>
[<a href="#chap" title="Index" rel="index">Index</a>]</p>
</div>
<h4 class="node"><span>chap<a class="copiable-link" href="#chap"> &para;</a></span></h4>

<a class="index-entry-id" id="index-in-chap"></a>

<div class="printindex cp-printindex">
<table class="index-letters-header-printindex cp-letters-header-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_letter-B">B</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-before">before</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="chap_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-in-chap">in chap</a></td><td class="printindex-index-section"><a href="#chap">chap</a></td></tr>
<tr><td class="printindex-index-entry"><a href="#index-in-top">in top</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
<table class="index-letters-footer-printindex cp-letters-footer-printindex"><tr><th>Jump to: &nbsp; </th><td><a class="summary-letter-printindex" href="#chap_cp_letter-B"><b>B</b></a>
 &nbsp; 
<a class="summary-letter-printindex" href="#chap_cp_letter-I"><b>I</b></a>
 &nbsp; 
</td></tr></table>
</div>
';

$result_converted_errors{'html_text'}->{'index_entries_before_nodes'} = [
  {
    'error_line' => 'warning: entry for index `cp\' for @printindex cp outside of any node
',
    'line_nr' => 1,
    'text' => 'entry for index `cp\' for @printindex cp outside of any node',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'index_entries_before_nodes'} = '<cindex index="cp" spaces=" "><indexterm index="cp" number="1">before</indexterm></cindex>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="2">in top</indexterm></cindex>

<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev></node>

<cindex index="cp" spaces=" "><indexterm index="cp" number="3">in chap</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
