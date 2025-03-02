use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'frenchspacing_and_code'} = '*document_root C7
 *before_node_section C3
  {empty_line:\\n}
  *@frenchspacing C1 l2
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{1}
  |misc_args:A{on}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {on}
  {empty_line:\\n}
 *0 @node C1 l4
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
 *1 @top C2 l5
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E0]
 |section_childs:EC[E3|E13]
 |section_level:{0}
 |sectioning_root:
  |*
  ||EXTRA
  ||section_childs:EC[E1]
  ||section_level:{-1}
 |toplevel_directions:D[next->E3]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l7
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[next->E12|prev->E0|up->E0]
 |normalized:{chapter-frenchspacing}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chapter frenchspacing}
 *3 @chapter C13 l8
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E2]
 |section_directions:D[next->E13|up->E1]
 |section_level:{1}
 |section_number:{1}
 |toplevel_directions:D[next->E13|prev->E1|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap frenchspacing}
  {empty_line:\\n}
  *paragraph C1
   {In text w: z? n; p. f\\n}
  {empty_line:\\n}
  *paragraph C2
   *4 @code C1 l12
    *brace_container C1
     {a: b! gg; h}
   {\\n}
  {empty_line:\\n}
  *5 @example C3 l14
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {c: d? j\\n}
   *@end C1 l16
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
  *6 @deftypeop C3 l18
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l18
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{name? n. d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{class: MyC. b}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{name? n. d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{class: MyC. b}
   |element_node:[E2]
   |index_entry:I{fn,1}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C17
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l18
       {cat: r. a}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l18
       {class: MyC. b}
     {spaces: }
     *def_type C1
      *bracketed_arg C1 l18
       {type: t. c}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l18
       {name? n. d}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {arg?}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {e:}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {f.}
     {spaces:  }
     *def_arg C1
      *def_line_arg C1
       *7 @var C1 l18
        *brace_container C1
         {v: g. h}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *8 @code C1 l18
        *brace_container C1
         {code? is: k}
   *def_item C1
    *paragraph C1
     {deftypeop\\n}
   *@end C1 l20
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *9 @defop C3 l22
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l22
   |EXTRA
   |def_command:{defop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{vname? n; d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{vclass: MyC. u}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{vname? n; d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{vclass: MyC. u}
   |element_node:[E2]
   |index_entry:I{fn,2}
   |original_def_cmdname:{defop}
    *block_line_arg C15
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l22
       {vcat: r. z}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l22
       {vclass: MyC. u}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l22
       {vname? n; d}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {varg?}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {ve:}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {f.}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *10 @var C1 l22
        *brace_container C1
         {vv: g? b}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *11 @code C1 l22
        *brace_container C1
         {vcode? is: a}
   *def_item C1
    *paragraph C1
     {defop\\n}
   *@end C1 l24
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
  {empty_line:\\n}
  *@frenchspacing C1 l26
  |INFO
  |spaces_before_argument:
   |{ }
  |EXTRA
  |global_command_number:{2}
  |misc_args:A{off}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {off}
 *12 @node C1 l27
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E13]
 |is_target:{1}
 |node_directions:D[prev->E2|up->E0]
 |normalized:{chap-no}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap no}
 *13 @chapter C11 l28
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_node:[E12]
 |section_directions:D[prev->E3|up->E1]
 |section_level:{1}
 |section_number:{2}
 |toplevel_directions:D[prev->E3|up->E1]
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Chap no}
  {empty_line:\\n}
  *paragraph C1
   {In text w: z? n; p. fn \\n}
  {empty_line:\\n}
  *paragraph C2
   *14 @code C1 l32
    *brace_container C1
     {a: b! gg; hn}
   {\\n}
  {empty_line:\\n}
  *15 @example C3 l34
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C1
    {c: d? jn\\n}
   *@end C1 l36
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{example}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {example}
  {empty_line:\\n}
  *16 @deftypeop C3 l38
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l38
   |EXTRA
   |def_command:{deftypeop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{name? n. d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{class: MyC. b}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{name? n. d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{class: MyC. b}
   |element_node:[E12]
   |index_entry:I{fn,3}
   |original_def_cmdname:{deftypeop}
    *block_line_arg C17
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l38
       {cat: r. a}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l38
       {class: MyC. b}
     {spaces: }
     *def_type C1
      *bracketed_arg C1 l38
       {type: t. c}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l38
       {name? n. d}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {narg?}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {e:}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       {f.}
     {spaces:  }
     *def_arg C1
      *def_line_arg C1
       *17 @var C1 l38
        *brace_container C1
         {v: g. h}
     {spaces: }
     *def_typearg C1
      *def_line_arg C1
       *18 @code C1 l38
        *brace_container C1
         {code? is: k}
   *def_item C1
    *paragraph C1
     {deftypeop n\\n}
   *@end C1 l40
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{deftypeop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {deftypeop}
  {empty_line:\\n}
  *19 @defop C3 l42
  |INFO
  |spaces_before_argument:
   |{ }
   *def_line C1 l42
   |EXTRA
   |def_command:{defop}
   |def_index_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{vname? n; d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{nvclass: MyC. u}
   |def_index_ref_element:
    |* C3
     |*def_name C1
      |*bracketed_arg C1
       |{vname? n; d}
     |{ on }
     |*def_class C1
      |*bracketed_arg C1
       |{nvclass: MyC. u}
   |element_node:[E12]
   |index_entry:I{fn,4}
   |original_def_cmdname:{defop}
    *block_line_arg C15
    |INFO
    |spaces_after_argument:
     |{\\n}
     *def_category C1
      *bracketed_arg C1 l42
       {vcat: r. z}
     {spaces: }
     *def_class C1
      *bracketed_arg C1 l42
       {nvclass: MyC. u}
     {spaces: }
     *def_name C1
      *bracketed_arg C1 l42
       {vname? n; d}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {varg?}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {ve:}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       {f.}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *20 @var C1 l42
        *brace_container C1
         {vv: g? b}
     {spaces: }
     *def_arg C1
      *def_line_arg C1
       *21 @code C1 l42
        *brace_container C1
         {vcode? is: a}
   *def_item C1
    *paragraph C1
     {defop n\\n}
   *@end C1 l44
   |INFO
   |spaces_before_argument:
    |{ }
   |EXTRA
   |text_arg:{defop}
    *line_arg C1
    |INFO
    |spaces_after_argument:
     |{\\n}
     {defop}
';


$result_texis{'frenchspacing_and_code'} = '
@frenchspacing on

@node Top
@top top

@node chapter frenchspacing
@chapter Chap frenchspacing

In text w: z? n; p. f

@code{a: b! gg; h}

@example
c: d? j
@end example

@deftypeop {cat: r. a} {class: MyC. b} {type: t. c} {name? n. d} arg? e: f.  @var{v: g. h} @code{code? is: k}
deftypeop
@end deftypeop

@defop {vcat: r. z} {vclass: MyC. u} {vname? n; d} varg? ve: f. @var{vv: g? b} @code{vcode? is: a}
defop
@end defop

@frenchspacing off
@node chap no
@chapter Chap no

In text w: z? n; p. fn 

@code{a: b! gg; hn}

@example
c: d? jn
@end example

@deftypeop {cat: r. a} {class: MyC. b} {type: t. c} {name? n. d} narg? e: f.  @var{v: g. h} @code{code? is: k}
deftypeop n
@end deftypeop

@defop {vcat: r. z} {nvclass: MyC. u} {vname? n; d} varg? ve: f. @var{vv: g? b} @code{vcode? is: a}
defop n
@end defop
';


$result_texts{'frenchspacing_and_code'} = '

top
***

1 Chap frenchspacing
********************

In text w: z? n; p. f

a: b! gg; h

c: d? j

cat: r. a on class: MyC. b: type: t. c name? n. d arg? e: f.  v: g. h code? is: k
deftypeop

vcat: r. z on vclass: MyC. u: vname? n; d varg? ve: f. vv: g? b vcode? is: a
defop

2 Chap no
*********

In text w: z? n; p. fn 

a: b! gg; hn

c: d? jn

cat: r. a on class: MyC. b: type: t. c name? n. d narg? e: f.  v: g. h code? is: k
deftypeop n

vcat: r. z on nvclass: MyC. u: vname? n; d varg? ve: f. vv: g? b vcode? is: a
defop n
';

$result_sectioning{'frenchspacing_and_code'} = {
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
                    'normalized' => 'chapter-frenchspacing'
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
                    'normalized' => 'chap-no'
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
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'prev'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[1]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0];
$result_sectioning{'frenchspacing_and_code'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'frenchspacing_and_code'};

$result_nodes{'frenchspacing_and_code'} = [
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
                  'normalized' => 'chap-no'
                }
              },
              'prev' => {},
              'up' => {}
            },
            'normalized' => 'chapter-frenchspacing'
          }
        }
      },
      'normalized' => 'Top'
    }
  },
  {},
  {}
];
$result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'frenchspacing_and_code'}[0];
$result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'frenchspacing_and_code'}[0];
$result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'frenchspacing_and_code'}[0];
$result_nodes{'frenchspacing_and_code'}[1] = $result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'};
$result_nodes{'frenchspacing_and_code'}[2] = $result_nodes{'frenchspacing_and_code'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'next'};

$result_menus{'frenchspacing_and_code'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  },
  {
    'extra' => {
      'normalized' => 'chapter-frenchspacing'
    }
  },
  {
    'extra' => {
      'normalized' => 'chap-no'
    }
  }
];

$result_errors{'frenchspacing_and_code'} = [];


$result_floats{'frenchspacing_and_code'} = {};


$result_indices_sort_strings{'frenchspacing_and_code'} = {
  'fn' => [
    'name? n. d on class: MyC. b',
    'name? n. d on class: MyC. b',
    'vname? n; d on nvclass: MyC. u',
    'vname? n; d on vclass: MyC. u'
  ]
};



$result_converted{'plaintext'}->{'frenchspacing_and_code'} = 'top
***

1 Chap frenchspacing
********************

In text w: z? n; p. f

   ‘a: b! gg; h’

     c: d? j

 -- cat: r. a on class: MyC. b: type: t. c name? n. d arg? e: f. V: G. H
          code? is: k
     deftypeop

 -- vcat: r. z on vclass: MyC. u: vname? n; d varg? ve: f. VV: G? B
          vcode? is: a
     defop

2 Chap no
*********

In text w: z?  n; p.  fn

   ‘a: b! gg; hn’

     c: d? jn

 -- cat: r.  a on class: MyC. b: type: t. c name? n. d narg? e: f. V: G.
          H code? is: k
     deftypeop n

 -- vcat: r.  z on nvclass: MyC. u: vname? n; d varg? ve: f. VV: G? B
          vcode? is: a
     defop n
';


$result_converted{'html_text'}->{'frenchspacing_and_code'} = '

<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chapter-frenchspacing" accesskey="1">Chap frenchspacing</a></li>
<li><a href="#chap-no" accesskey="2">Chap no</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chapter-frenchspacing">
<h2 class="chapter" id="Chap-frenchspacing"><span>1 Chap frenchspacing<a class="copiable-link" href="#Chap-frenchspacing"> &para;</a></span></h2>

<p>In text w: z? n; p. f
</p>
<p><code class="code">a: b! gg; h</code>
</p>
<div class="example">
<pre class="example-preformatted">c: d? j
</pre></div>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-name_003f-n_002e-d-on-class_003a-MyC_002e-b"><span class="category-def">cat: r. a on <code class="code">class: MyC. b</code>: </span><span><code class="def-type">type: t. c</code> <strong class="def-name">name? n. d</strong> <code class="def-code-arguments">arg? e: f.  <var class="var">v: g. h</var> <code class="code">code? is: k</code></code><a class="copiable-link" href="#index-name_003f-n_002e-d-on-class_003a-MyC_002e-b"> &para;</a></span></dt>
<dd><p>deftypeop
</p></dd></dl>

<dl class="first-defop def-block">
<dt class="defop def-line" id="index-vname_003f-n_003b-d-on-vclass_003a-MyC_002e-u"><span class="category-def">vcat: r. z on <code class="code">vclass: MyC. u</code>: </span><span><strong class="def-name">vname? n; d</strong> <var class="def-var-arguments">varg? ve: f. <var class="var">vv: g? b</var> <code class="code">vcode? is: a</code></var><a class="copiable-link" href="#index-vname_003f-n_003b-d-on-vclass_003a-MyC_002e-u"> &para;</a></span></dt>
<dd><p>defop
</p></dd></dl>

<hr>
</div>
<div class="chapter-level-extent" id="chap-no">
<h2 class="chapter" id="Chap-no"><span>2 Chap no<a class="copiable-link" href="#Chap-no"> &para;</a></span></h2>

<p>In text w: z? n; p. fn 
</p>
<p><code class="code">a: b! gg; hn</code>
</p>
<div class="example">
<pre class="example-preformatted">c: d? jn
</pre></div>

<dl class="first-deftypeop def-block">
<dt class="deftypeop def-line" id="index-name_003f-n_002e-d-on-class_003a-MyC_002e-b-1"><span class="category-def">cat: r. a on <code class="code">class: MyC. b</code>: </span><span><code class="def-type">type: t. c</code> <strong class="def-name">name? n. d</strong> <code class="def-code-arguments">narg? e: f.  <var class="var">v: g. h</var> <code class="code">code? is: k</code></code><a class="copiable-link" href="#index-name_003f-n_002e-d-on-class_003a-MyC_002e-b-1"> &para;</a></span></dt>
<dd><p>deftypeop n
</p></dd></dl>

<dl class="first-defop def-block">
<dt class="defop def-line" id="index-vname_003f-n_003b-d-on-nvclass_003a-MyC_002e-u"><span class="category-def">vcat: r. z on <code class="code">nvclass: MyC. u</code>: </span><span><strong class="def-name">vname? n; d</strong> <var class="def-var-arguments">varg? ve: f. <var class="var">vv: g? b</var> <code class="code">vcode? is: a</code></var><a class="copiable-link" href="#index-vname_003f-n_003b-d-on-nvclass_003a-MyC_002e-u"> &para;</a></span></dt>
<dd><p>defop n
</p></dd></dl>
</div>
</div>
';


$result_converted{'xml'}->{'frenchspacing_and_code'} = '
<frenchspacing spaces=" " value="on" line="on"></frenchspacing>

<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chapter frenchspacing</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chapter-frenchspacing" spaces=" "><nodename>chapter frenchspacing</nodename><nodenext automatic="on">chap no</nodenext><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap frenchspacing</sectiontitle>

<para>In text w: z? n; p. f
</para>
<para><code>a: b! gg; h</code>
</para>
<example endspaces=" ">
<pre xml:space="preserve">c: d? j
</pre></example>

<deftypeop spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="1">name? n. d on class: MyC. b</indexterm><defcategory bracketed="on">cat: r. a</defcategory> <defclass bracketed="on">class: MyC. b</defclass> <deftype bracketed="on">type: t. c</deftype> <defoperation bracketed="on">name? n. d</defoperation> <defparamtype>arg?</defparamtype> <defparam>e:</defparam> <defparamtype>f.</defparamtype>  <defparam><var>v: g. h</var></defparam> <defparamtype><code>code? is: k</code></defparamtype></definitionterm>
<definitionitem><para>deftypeop
</para></definitionitem></deftypeop>

<defop spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="2">vname? n; d on vclass: MyC. u</indexterm><defcategory bracketed="on">vcat: r. z</defcategory> <defclass bracketed="on">vclass: MyC. u</defclass> <defoperation bracketed="on">vname? n; d</defoperation> <defparam>varg?</defparam> <defparam>ve:</defparam> <defparam>f.</defparam> <defparam><var>vv: g? b</var></defparam> <defparam><code>vcode? is: a</code></defparam></definitionterm>
<definitionitem><para>defop
</para></definitionitem></defop>

<frenchspacing spaces=" " value="off" line="off"></frenchspacing>
</chapter>
<node identifier="chap-no" spaces=" "><nodename>chap no</nodename><nodeprev automatic="on">chapter frenchspacing</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chap no</sectiontitle>

<para>In text w: z? n; p. fn 
</para>
<para><code>a: b! gg; hn</code>
</para>
<example endspaces=" ">
<pre xml:space="preserve">c: d? jn
</pre></example>

<deftypeop spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="3">name? n. d on class: MyC. b</indexterm><defcategory bracketed="on">cat: r. a</defcategory> <defclass bracketed="on">class: MyC. b</defclass> <deftype bracketed="on">type: t. c</deftype> <defoperation bracketed="on">name? n. d</defoperation> <defparamtype>narg?</defparamtype> <defparam>e:</defparam> <defparamtype>f.</defparamtype>  <defparam><var>v: g. h</var></defparam> <defparamtype><code>code? is: k</code></defparamtype></definitionterm>
<definitionitem><para>deftypeop n
</para></definitionitem></deftypeop>

<defop spaces=" " endspaces=" "><definitionterm><indexterm index="fn" number="4">vname? n; d on nvclass: MyC. u</indexterm><defcategory bracketed="on">vcat: r. z</defcategory> <defclass bracketed="on">nvclass: MyC. u</defclass> <defoperation bracketed="on">vname? n; d</defoperation> <defparam>varg?</defparam> <defparam>ve:</defparam> <defparam>f.</defparam> <defparam><var>vv: g? b</var></defparam> <defparam><code>vcode? is: a</code></defparam></definitionterm>
<definitionitem><para>defop n
</para></definitionitem></defop>
</chapter>
';


$result_converted{'docbook'}->{'frenchspacing_and_code'} = '<chapter label="1" id="chapter-frenchspacing">
<title>Chap frenchspacing</title>

<para>In text w: z? n; p. f
</para>
<para><literal>a: b! gg; h</literal>
</para>
<screen>c: d? j
</screen>
<synopsis><indexterm role="fn"><primary>name? n. d on class: MyC. b</primary></indexterm><phrase role="category"><emphasis role="bold">cat: r. a</emphasis>:</phrase> <ooclass><classname>class: MyC. b</classname></ooclass> <returnvalue>type: t. c</returnvalue> <methodname>name? n. d</methodname> <type>arg?</type> <emphasis role="arg">e:</emphasis> <type>f.</type>  <emphasis role="arg"><replaceable>v: g. h</replaceable></emphasis> <type>code? is: k</type></synopsis>
<blockquote><para>deftypeop
</para></blockquote>
<synopsis><indexterm role="fn"><primary>vname? n; d on vclass: MyC. u</primary></indexterm><phrase role="category"><emphasis role="bold">vcat: r. z</emphasis>:</phrase> <ooclass><classname>vclass: MyC. u</classname></ooclass> <methodname>vname? n; d</methodname> <emphasis role="arg">varg?</emphasis> <emphasis role="arg">ve:</emphasis> <emphasis role="arg">f.</emphasis> <emphasis role="arg"><replaceable>vv: g? b</replaceable></emphasis> <emphasis role="arg">vcode? is: a</emphasis></synopsis>
<blockquote><para>defop
</para></blockquote>
</chapter>
<chapter label="2" id="chap-no">
<title>Chap no</title>

<para>In text w: z? n; p. fn 
</para>
<para><literal>a: b! gg; hn</literal>
</para>
<screen>c: d? jn
</screen>
<synopsis><indexterm role="fn"><primary>name? n. d on class: MyC. b</primary></indexterm><phrase role="category"><emphasis role="bold">cat: r. a</emphasis>:</phrase> <ooclass><classname>class: MyC. b</classname></ooclass> <returnvalue>type: t. c</returnvalue> <methodname>name? n. d</methodname> <type>narg?</type> <emphasis role="arg">e:</emphasis> <type>f.</type>  <emphasis role="arg"><replaceable>v: g. h</replaceable></emphasis> <type>code? is: k</type></synopsis>
<blockquote><para>deftypeop n
</para></blockquote>
<synopsis><indexterm role="fn"><primary>vname? n; d on nvclass: MyC. u</primary></indexterm><phrase role="category"><emphasis role="bold">vcat: r. z</emphasis>:</phrase> <ooclass><classname>nvclass: MyC. u</classname></ooclass> <methodname>vname? n; d</methodname> <emphasis role="arg">varg?</emphasis> <emphasis role="arg">ve:</emphasis> <emphasis role="arg">f.</emphasis> <emphasis role="arg"><replaceable>vv: g? b</replaceable></emphasis> <emphasis role="arg">vcode? is: a</emphasis></synopsis>
<blockquote><para>defop n
</para></blockquote></chapter>
';


$result_converted{'latex_text'}->{'frenchspacing_and_code'} = '
\\frenchspacing

\\label{anchor:Top}%
\\chapter{{Chap frenchspacing}}
\\label{anchor:chapter-frenchspacing}%

In text w: z? n; p. f

\\texttt{a:\\ b!\\ gg;\\ h}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily c:\\ d?\\ j
\\end{Texinfopreformatted}
\\end{Texinfoindented}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{type:\\ t.\\ c name?\\ n.\\ d arg?\\ e:\\ f.\\  \\Texinfocommandstyletextvar{v: g. h}\\ \\texttt{code?\\ is:\\ k}}& [cat: r. a on \\texttt{class:\\ MyC.\\ b}]
\\end{tabularx}

\\index[fn]{name? n. d on class: MyC. b@\\texttt{name?\\ n.\\ d\\ on class:\\ MyC.\\ b}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
deftypeop
\\end{quote}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{vname?\\ n;\\ d \\EmbracOn{}\\textnormal{\\textsl{varg? ve: f. \\Texinfocommandstyletextvar{vv: g? b} \\texttt{vcode?\\ is:\\ a}}}\\EmbracOff{}}& [vcat: r. z on \\texttt{vclass:\\ MyC.\\ u}]
\\end{tabularx}

\\index[fn]{vname? n; d on vclass: MyC. u@\\texttt{vname?\\ n;\\ d\\ on vclass:\\ MyC.\\ u}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
defop
\\end{quote}

\\nonfrenchspacing
\\chapter{{Chap no}}
\\label{anchor:chap-no}%

In text w: z? n; p. fn 

\\texttt{a:\\ b!\\ gg;\\ hn}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily c:\\ d?\\ jn
\\end{Texinfopreformatted}
\\end{Texinfoindented}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{type:\\ t.\\ c name?\\ n.\\ d narg?\\ e:\\ f.\\  \\Texinfocommandstyletextvar{v: g. h}\\ \\texttt{code?\\ is:\\ k}}& [cat: r. a on \\texttt{class:\\ MyC.\\ b}]
\\end{tabularx}

\\index[fn]{name? n. d on class: MyC. b@\\texttt{name?\\ n.\\ d\\ on class:\\ MyC.\\ b}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
deftypeop n
\\end{quote}


\\noindent\\begin{tabularx}{\\linewidth}{@{}Xr}
\\rightskip=5em plus 1 fill \\hangindent=2em \\hyphenpenalty=10000
\\texttt{vname?\\ n;\\ d \\EmbracOn{}\\textnormal{\\textsl{varg? ve: f. \\Texinfocommandstyletextvar{vv: g? b} \\texttt{vcode?\\ is:\\ a}}}\\EmbracOff{}}& [vcat: r. z on \\texttt{nvclass:\\ MyC.\\ u}]
\\end{tabularx}

\\index[fn]{vname? n; d on nvclass: MyC. u@\\texttt{vname?\\ n;\\ d\\ on nvclass:\\ MyC.\\ u}}%
\\begin{quote}
\\unskip{\\parskip=0pt\\noindent}%
defop n
\\end{quote}
';

1;
