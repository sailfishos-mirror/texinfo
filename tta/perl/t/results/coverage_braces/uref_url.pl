use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'uref_url'} = '*document_root C1
 *before_node_section C1
  *paragraph C18
   *0 @uref C2 l1
    *brace_arg C1
     {--a}
    *brace_arg C1
     {--b}
   {\\n}
   *1 @uref C1 l2
    *brace_arg C1
     {--c}
   {\\n}
   *2 @uref C2 l3
    *brace_arg
    *brace_arg C1
     {--d}
   {\\n}
   *3 @uref C3 l4
    *brace_arg C1
     {--e}
    *brace_arg C1
     {--f}
    *brace_arg C1
     {--g}
   {\\n}
   *4 @uref C3 l5
    *brace_arg
    *brace_arg C1
     {--h}
    *brace_arg C1
     {--i}
   {\\n}
   *5 @uref C3 l6
    *brace_arg C1
     {--j}
    *brace_arg
    *brace_arg C1
     {--k}
   {\\n}
   *6 @uref C3 l7
    *brace_arg
    *brace_arg
    *brace_arg C1
     {--l}
   {\\n}
   *7 @url C2 l8
    *brace_arg C1
     {--m}
    *brace_arg C1
     {--n}
   {\\n}
   *8 @url C3 l9
    *brace_arg C1
     {--o}
    *brace_arg C1
     {--p}
    *brace_arg C1
     {--q}
   {\\n}
';


$result_texis{'uref_url'} = '@uref{--a,--b}
@uref{--c}
@uref{,--d}
@uref{--e,--f,--g}
@uref{,--h,--i}
@uref{--j,,--k}
@uref{,,--l}
@url{--m,--n}
@url{--o,--p,--q}
';


$result_texts{'uref_url'} = '--a (-b)
--c
 (-d)
-g
-i
-k
-l
--m (-n)
-q
';

$result_errors{'uref_url'} = [];


$result_floats{'uref_url'} = {};



$result_converted{'plaintext'}->{'uref_url'} = '-b (--a) <--c> -d -g -i -k -l -n (--m) -q
';


$result_converted{'html_text'}->{'uref_url'} = '<p><a class="uref" href="--a">&ndash;b</a>
<a class="uref" href="--c">--c</a>
&ndash;d
<a class="uref" href="--e">&ndash;g</a>
&ndash;i
<a class="uref" href="--j">&ndash;k</a>
&ndash;l
<a class="url" href="--m">&ndash;n</a>
<a class="url" href="--o">&ndash;q</a>
</p>';


$result_converted{'latex_text'}->{'uref_url'} = '\\href{--a}{--b (\\nolinkurl{--a})}
\\url{--c}
--d
--g
--i
--k
--l
\\href{--m}{--n (\\nolinkurl{--m})}
--q
';


$result_converted{'docbook'}->{'uref_url'} = '<para><ulink url="--a">&#8211;b</ulink>
<ulink url="--c">--c</ulink>
<ulink url="">&#8211;d</ulink>
<ulink url="--e">&#8211;f</ulink>
<ulink url="">&#8211;h</ulink>
<ulink url="--j">&#8211;k</ulink>
<ulink url="">&#8211;l</ulink>
<ulink url="--m">&#8211;n</ulink>
<ulink url="--o">&#8211;p</ulink>
</para>';

1;
