use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'image_text_lines_count'} = '*document_root C2
 *before_node_section C1
  *preamble_before_content
 *0 @node C8 l1 {Top}
 |INFO
 |spaces_before_argument:
  |{ }
 |EXTRA
 |is_target:{1}
 |isindex:{1}
 |normalized:{Top}
  *arguments_line C1
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {Top}
  {empty_line:\\n}
  *1 @image C1 l3
  |EXTRA
  |input_encoding_name:{utf-8}
   *brace_arg C1
    {count_image_text}
  {\\n}
  {empty_line:\\n}
  *2 index_entry_command@cindex C1 l5
  |INFO
  |command_name:{cindex}
  |spaces_before_argument:
   |{ }
  |EXTRA
  |element_node:[E0]
  |index_entry:I{cp,1}
   *line_arg C1
   |INFO
   |spaces_after_argument:
    |{\\n}
    {index entry}
  {empty_line:\\n}
  *@printindex C1 l7
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


$result_texis{'image_text_lines_count'} = '@node Top

@image{count_image_text}

@cindex index entry

@printindex cp
';


$result_texts{'image_text_lines_count'} = '
count_image_text


';

$result_nodes{'image_text_lines_count'} = [
  {
    'cmdname' => 'node',
    'extra' => {
      'isindex' => 1,
      'normalized' => 'Top'
    }
  }
];

$result_menus{'image_text_lines_count'} = [
  {
    'extra' => {
      'normalized' => 'Top'
    }
  }
];

$result_errors{'image_text_lines_count'} = [];


$result_floats{'image_text_lines_count'} = {};


$result_indices_sort_strings{'image_text_lines_count'} = {
  'cp' => [
    'index entry'
  ]
};



$result_converted{'info'}->{'image_text_lines_count'} = 'This is , produced from .


File: ,  Node: Top,  Up: (dir)

aaaa
bbb
cc

ff


 [index ]
* Menu:

* index entry:                           Top.                  (line 10)


Tag Table:
Node: Top27

End Tag Table


Local Variables:
coding: utf-8
End:
';


$result_converted{'plaintext'}->{'image_text_lines_count'} = 'aaaa
bbb
cc

ff


* Menu:

* index entry:                           Top.                   (line 7)

';


$result_converted{'html_text'}->{'image_text_lines_count'} = '<h1 class="node" id="Top"><span>Top<a class="copiable-link" href="#Top"> &para;</a></span></h1>

<img class="image" src="count_image_text.jpg" alt="count_image_text">

<a class="index-entry-id" id="index-index-entry"></a>

<div class="printindex cp-printindex">
<table class="index-entries-printindex cp-entries-printindex">
<tr><th class="index-letter-header-printindex cp-letter-header-printindex" colspan="2" id="Top_cp_letter-I">I</th></tr>
<tr><td class="printindex-index-entry"><a href="#index-index-entry">index entry</a></td><td class="printindex-index-section"><a href="#Top">Top</a></td></tr>
</table>
</div>
';

$result_converted_errors{'html_text'}->{'image_text_lines_count'} = [
  {
    'error_line' => 'warning: @image file `count_image_text\' (for HTML) not found, using `count_image_text.jpg\'
',
    'line_nr' => 3,
    'text' => '@image file `count_image_text\' (for HTML) not found, using `count_image_text.jpg\'',
    'type' => 'warning'
  }
];



$result_converted{'xml'}->{'image_text_lines_count'} = '<node identifier="Top" spaces=" "><nodename>Top</nodename></node>

<image><imagefile>count_image_text</imagefile></image>

<cindex index="cp" spaces=" "><indexterm index="cp" number="1">index entry</indexterm></cindex>

<printindex spaces=" " value="cp" line="cp"></printindex>
';

1;
