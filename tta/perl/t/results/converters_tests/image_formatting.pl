use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_formatting'} = '*document_root C5
 *before_node_section
 *0 @node C1 l1 {Top}
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
 *1 @top C2 l2 {top}
 |INFO
 |spaces_before_argument:
  |{ }
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
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {top}
  {empty_line:\\n}
 *2 @node C1 l4 {chap}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |associated_section:[E3]
 |is_target:{1}
 |node_directions:D[prev->E0|up->E0]
 |normalized:{chap}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {chap}
 *3 @chapter C10 l5 {Chapter}
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
  *paragraph C40
   *4 @code C1 l7
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile}
     *@}
   { }
   *5 @image C1 l7
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
   {\\n}
   *6 @code C1 l8
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile,l--i}
     *@}
   { }
   *7 @image C2 l8
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg C1
     {l--i}
   {\\n}
   *8 @code C1 l9
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile,,l--e}
     *@}
   { }
   *9 @image C3 l9
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg C1
     {l--e}
   {\\n}
   *10 @code C1 l10
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile,,,alt}
     *@}
   { }
   *11 @image C4 l10
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {alt}
   {\\n}
   *12 @code C1 l11
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile,,,,e-d-xt}
     *@}
   { }
   *13 @image C5 l11
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg
    *brace_arg
    *brace_arg C1
     {e--xt}
   {\\n}
   *14 @code C1 l12
    *brace_container C5
     *@@
     {image}
     *@{
     {f--ile,aze,az,alt,e--xt}
     *@}
   { }
   *15 @image C5 l12
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg C1
     {aze}
    *brace_arg C1
     {az}
    *brace_arg C1
     {alt}
    *brace_arg C1
     {e--xt}
   {\\n}
   *16 @code C1 l13
    *brace_container C4
     *@@
     {image}
     *@{
     {f--ile,aze,az,alt,}
   { }
   *17 @image C5 l13
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg C1
     {aze}
    *brace_arg C1
     {az}
    *brace_arg C1
     {alt}
    *brace_arg
   {\\n}
   *18 @code C1 l14
    *brace_container C5
     *@@
     {image}
     *@{
     {f-ile,aze,,a--lt}
     *@}
   { }
   *19 @image C4 l14
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f-ile}
    *brace_arg C1
     {aze}
    *brace_arg
    *brace_arg C1
     {a--lt}
   {\\n}
   *20 @code C1 l15
    *brace_container C20
     *@@
     {image}
     *@{
     *@@
     {file}
     *@{
     {f--ile}
     *@}
     *@@
     *@@
     *@@
     {.,aze,az,alt,}
     *@@
     {file}
     *@{
     {file ext}
     *@}
     { e--xt}
     *@@
     *@}
   { }
   *21 @image C5 l15
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C3
     *22 @file C1 l15
      *brace_container C1
       {f--ile}
     *@@
     *@.
    *brace_arg C1
     {aze}
    *brace_arg C1
     {az}
    *brace_arg C1
     {alt}
    *brace_arg C3
     *23 @file C1 l15
      *brace_container C1
       {file ext}
     { e--xt}
     *@}
   {\\n}
   *24 @image C1 l16
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {image}
   { }
   *25 @image C1 l16
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {image}
   {\\n}
  {empty_line:\\n}
  *26 @example C3 l18
   *arguments_line C1
    *block_line_arg
    |INFO
    |spaces_after_argument:
     |{\\n}
   *preformatted C36
    *27 @code C1 l19
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile}
      *@}
    { }
    *28 @image C1 l19
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
    {\\n}
    *29 @code C1 l20
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile,l--i}
      *@}
    { }
    *30 @image C2 l20
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg C1
      {l--i}
    {\\n}
    *31 @code C1 l21
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile,,l--e}
      *@}
    { }
    *32 @image C3 l21
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg
     *brace_arg C1
      {l--e}
    {\\n}
    *33 @code C1 l22
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile,,,alt}
      *@}
    { }
    *34 @image C4 l22
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg
     *brace_arg
     *brace_arg C1
      {alt}
    {\\n}
    *35 @code C1 l23
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile,,,,e-d-xt}
      *@}
    { }
    *36 @image C5 l23
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg
     *brace_arg
     *brace_arg
     *brace_arg C1
      {e--xt}
    {\\n}
    *37 @code C1 l24
     *brace_container C5
      *@@
      {image}
      *@{
      {f--ile,aze,az,alt,e--xt}
      *@}
    { }
    *38 @image C5 l24
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f--ile}
     *brace_arg C1
      {aze}
     *brace_arg C1
      {az}
     *brace_arg C1
      {alt}
     *brace_arg C1
      {e--xt}
    {\\n}
    *39 @code C1 l25
     *brace_container C5
      *@@
      {image}
      *@{
      {f-ile,aze,,a--lt}
      *@}
    { }
    *40 @image C4 l25
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {f-ile}
     *brace_arg C1
      {aze}
     *brace_arg
     *brace_arg C1
      {a--lt}
    {\\n}
    *41 @code C1 l26
     *brace_container C20
      *@@
      {image}
      *@{
      *@@
      {file}
      *@{
      {f--ile}
      *@}
      *@@
      *@@
      *@@
      {.,aze,az,alt,}
      *@@
      {file}
      *@{
      {file ext}
      *@}
      { e--xt}
      *@@
      *@}
    { }
    *42 @image C5 l26
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C3
      *43 @file C1 l26
       *brace_container C1
        {f--ile}
      *@@
      *@.
     *brace_arg C1
      {aze}
     *brace_arg C1
      {az}
     *brace_arg C1
      {alt}
     *brace_arg C3
      *44 @file C1 l26
       *brace_container C1
        {file ext}
      { e--xt}
      *@}
    {\\n}
    *45 @image C1 l27
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {image}
    { }
    *46 @image C1 l27
    |EXTRA
    |input_encoding_name:{utf-8}
     *brace_arg C1
      {image}
    {\\n}
   *@end C1 l28
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
  *47 @image C4 l30
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {f--ile}
   *brace_arg
   *brace_arg
   *brace_arg C1
    {a very long alt argument that could span more than one line who knows}
  {\\n}
  {empty_line:\\n}
  *paragraph C3
   {in para\\n}
   *48 @image C4 l33
   |EXTRA
   |input_encoding_name:{utf-8}
    *brace_arg C1
     {f--ile}
    *brace_arg
    *brace_arg
    *brace_arg C1
     {a very long alt argument that could span more than one line who knows}
   {.\\n}
';


$result_texis{'image_formatting'} = '@node Top
@top top

@node chap
@chapter Chapter

@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f--ile,aze,az,alt,} @image{f--ile,aze,az,alt,}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}

@example
@code{@@image@{f--ile@}} @image{f--ile}
@code{@@image@{f--ile,l--i@}} @image{f--ile,l--i}
@code{@@image@{f--ile,,l--e@}} @image{f--ile,,l--e}
@code{@@image@{f--ile,,,alt@}} @image{f--ile,,,alt}
@code{@@image@{f--ile,,,,e-d-xt@}} @image{f--ile,,,,e--xt}
@code{@@image@{f--ile,aze,az,alt,e--xt@}} @image{f--ile,aze,az,alt,e--xt}
@code{@@image@{f-ile,aze,,a--lt@}} @image{f-ile,aze,,a--lt}
@code{@@image@{@@file@{f--ile@}@@@@@@.,aze,az,alt,@@file@{file ext@} e--xt@@@}} @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}}
@image{image} @image{image}
@end example

@image{f--ile,,,a very long alt argument that could span more than one line who knows}

in para
@image{f--ile,,,a very long alt argument that could span more than one line who knows}.
';


$result_texts{'image_formatting'} = 'top
***

1 Chapter
*********

@image{f--ile} f--ile
@image{f--ile,l--i} f--ile
@image{f--ile,,l--e} f--ile
@image{f--ile,,,alt} f--ile
@image{f--ile,,,,e-d-xt} f--ile
@image{f--ile,aze,az,alt,e--xt} f--ile
@image{f--ile,aze,az,alt, f--ile
@image{f-ile,aze,,a--lt} f-ile
@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} f--ile@.
image image

@image{f--ile} f--ile
@image{f--ile,l--i} f--ile
@image{f--ile,,l--e} f--ile
@image{f--ile,,,alt} f--ile
@image{f--ile,,,,e-d-xt} f--ile
@image{f--ile,aze,az,alt,e--xt} f--ile
@image{f-ile,aze,,a--lt} f-ile
@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} f--ile@.
image image

f--ile

in para
f--ile.
';

$result_sectioning{'image_formatting'} = {
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
$result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'section_directions'}{'up'} = $result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'prev'} = $result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0]{'extra'}{'section_childs'}[0]{'extra'}{'toplevel_directions'}{'up'} = $result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0];
$result_sectioning{'image_formatting'}{'extra'}{'section_childs'}[0]{'extra'}{'sectioning_root'} = $result_sectioning{'image_formatting'};

$result_nodes{'image_formatting'} = [
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
$result_nodes{'image_formatting'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'prev'} = $result_nodes{'image_formatting'}[0];
$result_nodes{'image_formatting'}[0]{'extra'}{'node_directions'}{'next'}{'extra'}{'node_directions'}{'up'} = $result_nodes{'image_formatting'}[0];
$result_nodes{'image_formatting'}[1] = $result_nodes{'image_formatting'}[0]{'extra'}{'node_directions'}{'next'};

$result_menus{'image_formatting'} = [
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

$result_errors{'image_formatting'} = [];


$result_floats{'image_formatting'} = {};



$result_converted{'plaintext'}->{'image_formatting'} = 'top
***

1 Chapter
*********

‘@image{f--ile}’ Image description""\\. ‘@image{f--ile,l--i}’ Image description""\\. ‘@image{f--ile,,l--e}’ Image description""\\.
‘@image{f--ile,,,alt}’ Image description""\\. ‘@image{f--ile,,,,e-d-xt}’ Image description""\\.
‘@image{f--ile,aze,az,alt,e--xt}’ Image description""\\. ‘@image{f--ile,aze,az,alt,’ Image description""\\.
‘@image{f-ile,aze,,a--lt}’ [a-lt]
‘@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}’ [alt] aaa
bbb
ccc aaa
bbb
ccc

     @image{f--ile} Image description""\\.
     @image{f--ile,l--i} Image description""\\.
     @image{f--ile,,l--e} Image description""\\.
     @image{f--ile,,,alt} Image description""\\.
     @image{f--ile,,,,e-d-xt} Image description""\\.
     @image{f--ile,aze,az,alt,e--xt} Image description""\\.
     @image{f-ile,aze,,a--lt} [a-lt]
     @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} [alt]
     aaa
bbb
ccc aaa
bbb
ccc

Image description""\\.

   in para Image description""\\..
';


$result_converted{'html_text'}->{'image_formatting'} = '<div class="top-level-extent" id="Top">
<h1 class="top" id="top"><span>top<a class="copiable-link" href="#top"> &para;</a></span></h1>

<ul class="mini-toc">
<li><a href="#chap" accesskey="1">Chapter</a></li>
</ul>
<hr>
<div class="chapter-level-extent" id="chap">
<h2 class="chapter" id="Chapter"><span>1 Chapter<a class="copiable-link" href="#Chapter"> &para;</a></span></h2>

<p><code class="code">@image{f--ile}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,l--i}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,l--e}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,,alt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f--ile,,,,e-d-xt}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,aze,az,alt,e--xt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f--ile,aze,az,alt,</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f-ile,aze,,a--lt}</code> <img class="image" src="f-ile.jpg" alt="a&ndash;lt">
<code class="code">@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</code> <img class="image" src="f--ile%40.file%20ext%20e--xt%7d" alt="alt">
<img class="image" src="image.jpg" alt="image"> <img class="image" src="image.jpg" alt="image">
</p>
<div class="example">
<pre class="example-preformatted"><code class="code">@image{f--ile}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,l--i}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,l--e}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,,,alt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f--ile,,,,e-d-xt}</code> <img class="image" src="f--ile.png" alt="f--ile">
<code class="code">@image{f--ile,aze,az,alt,e--xt}</code> <img class="image" src="f--ile.png" alt="alt">
<code class="code">@image{f-ile,aze,,a--lt}</code> <img class="image" src="f-ile.jpg" alt="a&ndash;lt">
<code class="code">@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</code> <img class="image" src="f--ile%40.file%20ext%20e--xt%7d" alt="alt">
<img class="image" src="image.jpg" alt="image"> <img class="image" src="image.jpg" alt="image">
</pre></div>

<img class="image" src="f--ile.png" alt="a very long alt argument that could span more than one line who knows">

<p>in para
<img class="image" src="f--ile.png" alt="a very long alt argument that could span more than one line who knows">.
</p></div>
</div>
';

$result_converted_errors{'html_text'}->{'image_formatting'} = [
  {
    'error_line' => 'warning: @image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'
',
    'line_nr' => 14,
    'text' => '@image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'
',
    'line_nr' => 15,
    'text' => '@image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'line_nr' => 16,
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'line_nr' => 16,
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'
',
    'line_nr' => 25,
    'text' => '@image file `f-ile\' (for HTML) not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'
',
    'line_nr' => 26,
    'text' => '@image file `f--ile@.\' (for HTML) not found, using `f--ile@.file ext e--xt}\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'line_nr' => 27,
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for HTML) not found, using `image.jpg\'
',
    'line_nr' => 27,
    'text' => '@image file `image\' (for HTML) not found, using `image.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'image_formatting'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename><nodenext automatic="on">chap</nodenext></node>
<top spaces=" "><sectiontitle>top</sectiontitle>

</top>
<node identifier="chap" spaces=" "><nodename>chap</nodename><nodeprev automatic="on">Top</nodeprev><nodeup automatic="on">Top</nodeup></node>
<chapter spaces=" "><sectiontitle>Chapter</sectiontitle>

<para><code>&arobase;image&lbrace;f--ile&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile></image>
<code>&arobase;image&lbrace;f--ile,l--i&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>l--i</imagewidth></image>
<code>&arobase;image&lbrace;f--ile,,l--e&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageheight>l--e</imageheight></image>
<code>&arobase;image&lbrace;f--ile,,,alt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><alttext>alt</alttext></image>
<code>&arobase;image&lbrace;f--ile,,,,e-d-xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f--ile,aze,az,alt,e--xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f--ile,aze,az,alt,</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension></imageextension></image>
<code>&arobase;image&lbrace;f-ile,aze,,a--lt&rbrace;</code> <image where="inline"><imagefile>f-ile</imagefile><imagewidth>aze</imagewidth><alttext>a&textndash;lt</alttext></image>
<code>&arobase;image&lbrace;&arobase;file&lbrace;f--ile&rbrace;&arobase;&arobase;&arobase;.,aze,az,alt,&arobase;file&lbrace;file ext&rbrace; e--xt&arobase;&rbrace;</code> <image where="inline"><imagefile><file>f--ile</file>&arobase;&eosperiod;</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension><file>file ext</file> e--xt&rbrace;</imageextension></image>
<image where="inline"><imagefile>image</imagefile></image> <image where="inline"><imagefile>image</imagefile></image>
</para>
<example endspaces=" ">
<pre xml:space="preserve"><code>&arobase;image&lbrace;f--ile&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile></image>
<code>&arobase;image&lbrace;f--ile,l--i&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>l--i</imagewidth></image>
<code>&arobase;image&lbrace;f--ile,,l--e&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageheight>l--e</imageheight></image>
<code>&arobase;image&lbrace;f--ile,,,alt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><alttext>alt</alttext></image>
<code>&arobase;image&lbrace;f--ile,,,,e-d-xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f--ile,aze,az,alt,e--xt&rbrace;</code> <image where="inline"><imagefile>f--ile</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension>e--xt</imageextension></image>
<code>&arobase;image&lbrace;f-ile,aze,,a--lt&rbrace;</code> <image where="inline"><imagefile>f-ile</imagefile><imagewidth>aze</imagewidth><alttext>a--lt</alttext></image>
<code>&arobase;image&lbrace;&arobase;file&lbrace;f--ile&rbrace;&arobase;&arobase;&arobase;.,aze,az,alt,&arobase;file&lbrace;file ext&rbrace; e--xt&arobase;&rbrace;</code> <image where="inline"><imagefile><file>f--ile</file>&arobase;&eosperiod;</imagefile><imagewidth>aze</imagewidth><imageheight>az</imageheight><alttext>alt</alttext><imageextension><file>file ext</file> e--xt&rbrace;</imageextension></image>
<image where="inline"><imagefile>image</imagefile></image> <image where="inline"><imagefile>image</imagefile></image>
</pre></example>

<image><imagefile>f--ile</imagefile><alttext>a very long alt argument that could span more than one line who knows</alttext></image>

<para>in para
<image where="inline"><imagefile>f--ile</imagefile><alttext>a very long alt argument that could span more than one line who knows</alttext></image>.
</para></chapter>
';


$result_converted{'docbook'}->{'image_formatting'} = '<chapter label="1" id="chap">
<title>Chapter</title>

<para><literal>@image{f--ile}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,l--i}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,l--e}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,alt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,,e-d-xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,aze,az,alt,e--xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,aze,az,alt,</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f-ile,aze,,a--lt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f-ile.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<literal>@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile@..jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject> <inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject>
</para>
<screen><literal>@image{f--ile}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,l--i}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,l--e}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,alt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,,,,e-d-xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f--ile,aze,az,alt,e--xt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>
<literal>@image{f-ile,aze,,a--lt}</literal> <inlinemediaobject><imageobject><imagedata fileref="f-ile.jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<literal>@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}</literal> <inlinemediaobject><imageobject><imagedata fileref="f--ile@..jpg" format="JPG"></imagedata></imageobject></inlinemediaobject>
<inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject> <inlinemediaobject><imageobject><imagedata fileref="image.jpg" format="JPG"></imagedata></imageobject><textobject><literallayout>aaa
bbb
ccc</literallayout></textobject></inlinemediaobject>
</screen>
<informalfigure><mediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></mediaobject></informalfigure>

<para>in para
<inlinemediaobject><imageobject><imagedata fileref="f--ile.png" format="PNG"></imagedata></imageobject><textobject><literallayout>Image description&quot;&quot;\\.</literallayout></textobject></inlinemediaobject>.
</para></chapter>
';

$result_converted_errors{'docbook'}->{'image_formatting'} = [
  {
    'error_line' => 'warning: @image file `f-ile\' not found, using `f-ile.jpg\'
',
    'line_nr' => 14,
    'text' => '@image file `f-ile\' not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' not found, using `f--ile@..jpg\'
',
    'line_nr' => 15,
    'text' => '@image file `f--ile@.\' not found, using `f--ile@..jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f-ile\' not found, using `f-ile.jpg\'
',
    'line_nr' => 25,
    'text' => '@image file `f-ile\' not found, using `f-ile.jpg\'',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' not found, using `f--ile@..jpg\'
',
    'line_nr' => 26,
    'text' => '@image file `f--ile@.\' not found, using `f--ile@..jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'latex_text'}->{'image_formatting'} = '\\label{anchor:Top}%
\\chapter{{Chapter}}
\\label{anchor:chap}%

\\texttt{@image\\{f{-}{-}ile\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,l{-}{-}i\\}} \\includegraphics[width=l--i]{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,}l{-}{-}e\\}} \\includegraphics[height=l--e]{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,},alt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,}{,}{,}e-d-xt\\}} \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,aze,az,alt,e{-}{-}xt\\}} \\includegraphics[width=aze,height=az]{f--ile}
\\texttt{@image\\{f{-}{-}ile,aze,az,alt,} \\includegraphics[width=aze,height=az]{f--ile}
\\texttt{@image\\{f-ile,aze{,}{,}a{-}{-}lt\\}} \\includegraphics[width=aze]{f-ile}
\\texttt{@image\\{@file\\{f{-}{-}ile\\}@@@.,aze,az,alt,@file\\{file ext\\}\\ e{-}{-}xt@\\}} \\includegraphics[width=aze,height=az]{f--ile@.}
\\includegraphics{image} \\includegraphics{image}

\\begin{Texinfoindented}
\\begin{Texinfopreformatted}%
\\ttfamily \\texttt{@image\\{f{-}{-}ile\\}}\\ \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,l{-}{-}i\\}}\\ \\includegraphics[width=l--i]{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,}l{-}{-}e\\}}\\ \\includegraphics[height=l--e]{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,},alt\\}}\\ \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile{,}{,}{,}{,}e-d-xt\\}}\\ \\includegraphics{f--ile}
\\texttt{@image\\{f{-}{-}ile,aze,az,alt,e{-}{-}xt\\}}\\ \\includegraphics[width=aze,height=az]{f--ile}
\\texttt{@image\\{f-ile,aze{,}{,}a{-}{-}lt\\}}\\ \\includegraphics[width=aze]{f-ile}
\\texttt{@image\\{@file\\{f{-}{-}ile\\}@@@.,aze,az,alt,@file\\{file ext\\}\\ e{-}{-}xt@\\}}\\ \\includegraphics[width=aze,height=az]{f--ile@.}
\\includegraphics{image}\\ \\includegraphics{image}
\\end{Texinfopreformatted}
\\end{Texinfoindented}

\\includegraphics{f--ile}

in para
\\includegraphics{f--ile}.
';

$result_converted_errors{'latex_text'}->{'image_formatting'} = [
  {
    'error_line' => 'warning: @image file `f-ile\' (for LaTeX) not found
',
    'line_nr' => 14,
    'text' => '@image file `f-ile\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for LaTeX) not found
',
    'line_nr' => 15,
    'text' => '@image file `f--ile@.\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for LaTeX) not found
',
    'line_nr' => 16,
    'text' => '@image file `image\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for LaTeX) not found
',
    'line_nr' => 16,
    'text' => '@image file `image\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f-ile\' (for LaTeX) not found
',
    'line_nr' => 25,
    'text' => '@image file `f-ile\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `f--ile@.\' (for LaTeX) not found
',
    'line_nr' => 26,
    'text' => '@image file `f--ile@.\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for LaTeX) not found
',
    'line_nr' => 27,
    'text' => '@image file `image\' (for LaTeX) not found',
    'type' => 'warning'
  },
  {
    'error_line' => 'warning: @image file `image\' (for LaTeX) not found
',
    'line_nr' => 27,
    'text' => '@image file `image\' (for LaTeX) not found',
    'type' => 'warning'
  }
];



$result_converted{'info'}->{'image_formatting'} = 'This is , produced from .


File: ,  Node: Top,  Next: chap,  Up: (dir)

top
***

* Menu:

* chap::


File: ,  Node: chap,  Prev: Top,  Up: Top

1 Chapter
*********

‘@image{f--ile}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,l--i}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,,l--e}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
‘@image{f--ile,,,alt}’  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,,,,e-d-xt}’  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
‘@image{f--ile,aze,az,alt,e--xt}’  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ] ‘@image{f--ile,aze,az,alt,’  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ]
‘@image{f-ile,aze,,a--lt}’ [a-lt]
‘@image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@}’ [alt] aaa
bbb
ccc aaa
bbb
ccc

     @image{f--ile}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,l--i}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,l--e}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,,alt}  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ]
     @image{f--ile,,,,e-d-xt}  [image src="f--ile.png" text="Image description\\"\\"\\\\." ]
     @image{f--ile,aze,az,alt,e--xt}  [image src="f--ile.png" alt="alt" text="Image description\\"\\"\\\\." ]
     @image{f-ile,aze,,a--lt} [a-lt]
     @image{@file{f--ile}@@@.,aze,az,alt,@file{file ext} e--xt@} [alt]
     aaa
bbb
ccc aaa
bbb
ccc

 [image src="f--ile.png" alt="a very long alt argument that could span more than one line who knows" text="Image description\\"\\"\\\\." ]

   in para  [image src="f--ile.png" alt="a very long alt argument that could span more than one line who knows" text="Image description\\"\\"\\\\." ].


Tag Table:
Node: Top27
Node: chap102

End Tag Table


Local Variables:
coding: utf-8
End:
';

1;
