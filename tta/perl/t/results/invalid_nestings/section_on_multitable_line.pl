use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'section_on_multitable_line'} = '*document_root C4
 *before_node_section C1
  *0 @multitable C1 l1
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg
 *1 @section C3 l1
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E4]
 |section_level:{2}
 |section_number:{1}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1|E4|E6]
  ||section_level:{1}
 |toplevel_directions:D[next->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {first}
  {empty_line:\\n}
  *2 @multitable C1 l3
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{0}
   *arguments_line C1
    *block_line_arg C1
    |INFO
    |spaces_after_argument:
     |{ }
     *3 @code C1 l3
      *brace_container C1
       {this}
 *4 @section C3 l3
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[next->E6|prev->E1]
 |section_level:{2}
 |section_number:{2}
 |toplevel_directions:D[next->E6|prev->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {second}
  {empty_line:\\n}
  *5 @multitable C1 l5
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |max_columns:{2}
   *arguments_line C1
    *block_line_arg C3
    |INFO
    |spaces_after_argument:
     |{ }
     *bracketed_arg C1 l5
      {aaa}
     { }
     *bracketed_arg C1 l5
      {bbb}
 *6 @section C1 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |section_directions:D[prev->E4]
 |section_level:{2}
 |section_number:{3}
 |toplevel_directions:D[prev->E4]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {third}
';


$result_texis{'section_on_multitable_line'} = '@multitable @section first

@multitable @code{this} @section second

@multitable {aaa} {bbb} @section third
';


$result_texts{'section_on_multitable_line'} = '1 first
=======

2 second
========

3 third
=======
';

$result_sectioning{'section_on_multitable_line'} = {
  'extra' => {
    'section_childs' => [
      {
        'cmdname' => 'section',
        'extra' => {
          'section_directions' => {},
          'section_level' => 2,
          'section_number' => '1',
          'sectioning_root' => {},
          'toplevel_directions' => {}
        }
      },
      {
        'cmdname' => 'section',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 2,
          'section_number' => '2',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      },
      {
        'cmdname' => 'section',
        'extra' => {
          'section_directions' => {
            'prev' => {}
          },
          'section_level' => 2,
          'section_number' => '3',
          'toplevel_directions' => {
            'prev' => {}
          }
        }
      }
    ],
    'section_level' => 1
  }
};
$result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'section_on_multitable_line'};
$result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[0];
$result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[2]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[1];
$result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[2]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'section_on_multitable_line'}{'extra'}{'section_childs'}[1];

$result_errors{'section_on_multitable_line'} = [
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 1,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @multitable line
',
    'line_nr' => 1,
    'text' => '@section should not appear on @multitable line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty multitable
',
    'line_nr' => 1,
    'text' => 'empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end multitable
',
    'line_nr' => 1,
    'text' => '@section seen before @end multitable',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 3,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @multitable line
',
    'line_nr' => 3,
    'text' => '@section should not appear on @multitable line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: unexpected argument on @multitable line: @code{this}
',
    'line_nr' => 3,
    'text' => 'unexpected argument on @multitable line: @code{this}',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: empty multitable
',
    'line_nr' => 3,
    'text' => 'empty multitable',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end multitable
',
    'line_nr' => 3,
    'text' => '@section seen before @end multitable',
    'type' => 'error'
  },
  {
    'error_line' => 'warning: @section should only appear at the beginning of a line
',
    'line_nr' => 5,
    'text' => '@section should only appear at the beginning of a line',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @section should not appear on @multitable line
',
    'line_nr' => 5,
    'text' => '@section should not appear on @multitable line',
    'type' => 'warning'
  },
  {
    'error_line' => '@section seen before @end multitable
',
    'line_nr' => 5,
    'text' => '@section seen before @end multitable',
    'type' => 'error'
  }
];


$result_floats{'section_on_multitable_line'} = {};



$result_converted{'plaintext'}->{'section_on_multitable_line'} = '1 first
=======

2 second
========

3 third
=======

';


$result_converted{'xml'}->{'section_on_multitable_line'} = '<multitable spaces=" ">
</multitable>
<section spaces=" "><sectiontitle>first</sectiontitle>

<multitable spaces=" "><columnprototypes><code>this</code></columnprototypes> 
</multitable>
</section>
<section spaces=" "><sectiontitle>second</sectiontitle>

<multitable spaces=" "><columnprototypes><columnprototype bracketed="on">aaa</columnprototype> <columnprototype bracketed="on">bbb</columnprototype></columnprototypes> 
</multitable>
</section>
<section spaces=" "><sectiontitle>third</sectiontitle>
</section>
';

1;
