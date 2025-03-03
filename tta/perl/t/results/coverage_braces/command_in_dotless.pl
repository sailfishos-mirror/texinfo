use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'command_in_dotless'} = '*document_root C1
 *before_node_section C1
  *paragraph C1
   *0 @dotless C1 l1
    *brace_container C1
     *1 @code C1 l1
      *brace_container C1
       {i}
';


$result_texis{'command_in_dotless'} = '@dotless{@code{i}}';


$result_texts{'command_in_dotless'} = 'i';

$result_errors{'command_in_dotless'} = [
  {
    'error_line' => 'warning: @code should not appear in @dotless
',
    'line_nr' => 1,
    'text' => '@code should not appear in @dotless',
    'type' => 'warning'
  },
  {
    'error_line' => '@dotless expects `i\' or `j\' as argument, not `@code{i}\'
',
    'line_nr' => 1,
    'text' => '@dotless expects `i\' or `j\' as argument, not `@code{i}\'',
    'type' => 'error'
  }
];



$result_converted{'plaintext'}->{'command_in_dotless'} = 'ı
';


$result_converted{'html_text'}->{'command_in_dotless'} = '<p><code class="code">i</code></p>';


$result_converted{'latex_text'}->{'command_in_dotless'} = '\\textbackslash{}texttt\\{i\\}';


$result_converted{'docbook'}->{'command_in_dotless'} = '<para><literal>i</literal></para>';

1;
