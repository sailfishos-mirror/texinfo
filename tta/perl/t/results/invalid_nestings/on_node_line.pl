use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'on_node_line'} = '*document_root C2
 *before_node_section
 *0 @node C1 l1 {@ref{a, b, c, filename}}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |node_directions:D[next->MISSING: (line_arg)[C8]]
 |normalized:{a}
  *arguments_line C2
   *line_arg C1
    *1 @ref C4 l1
     *brace_arg C1
     |EXTRA
     |node_content:{a}
      {a}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {b}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {c}
     *brace_arg C1
     |INFO
     |spaces_before_argument:
      |{ }
      {filename}
   *line_arg C8
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |manual_content:{@pxref{(somemanual)Top}}
   |node_content:{@anchor{in anchor}@footnote{footnote} @exdent exdent\\n}
   |normalized:{-}
    {(}
    *2 @pxref C1 l1
     *brace_arg C4
     |EXTRA
     |manual_content:{somemanual}
     |node_content:{Top}
      {(}
      {somemanual}
      {)}
      {Top}
    {)}
    { }
    *3 @anchor C1 l1
    |EXTRA
    |is_target:{1}
    |normalized:{in-anchor}
     *brace_arg C1
      {in anchor}
    *4 @footnote C1 l1
    |EXTRA
    |global_command_number:{1}
     *brace_command_context C1
      *paragraph C1
       {footnote}
    { }
    *@exdent C1 l1
    |INFO
    |spaces_before_argument:
     |{ }
     *line_arg C1
     |INFO
     |spaces_after_argument:
      |{\\n}
      {exdent}
';


$result_texis{'on_node_line'} = '@node @ref{a, b, c, filename}, (@pxref{(somemanual)Top}) @anchor{in anchor}@footnote{footnote} @exdent exdent
';


$result_texts{'on_node_line'} = '';

$result_nodes{'on_node_line'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'node_directions' => {
        'next' => {
          'extra' => {
            'manual_content' => {},
            'normalized' => '-'
          },
          'type' => 'line_arg'
        }
      },
      'normalized' => 'a'
    }
  }
];

$result_menus{'on_node_line'} = [
  {
    'extra' => {
      'normalized' => 'a'
    }
  }
];

$result_errors{'on_node_line'} = [
  {
    'error_line' => 'warning: @ref should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@ref should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @pxref should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@pxref should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @anchor should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@anchor should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @footnote should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@footnote should not appear on @node line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@exdent should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @exdent should not appear on @node line
',
    'line_nr' => 1,
    'text' => '@exdent should not appear on @node line',
    'type' => 'warning'
  }
];


$result_floats{'on_node_line'} = {};



$result_converted{'plaintext'}->{'on_node_line'} = '';


$result_converted{'xml'}->{'on_node_line'} = '<node identifier="a" spaces=" "><nodename><ref label="a" manual="filename"><xrefnodename>a</xrefnodename><xrefinfoname spaces=" ">b</xrefinfoname><xrefprinteddesc spaces=" ">c</xrefprinteddesc><xrefinfofile spaces=" ">filename</xrefinfofile></ref></nodename><nodenext spaces=" ">(<pxref label="Top" manual="somemanual"><xrefnodename>(somemanual)Top</xrefnodename></pxref>) <anchor identifier="in-anchor">in anchor</anchor><footnote><para>footnote</para></footnote> <exdent spaces=" ">exdent</exdent>
</nodenext></node>';

1;
