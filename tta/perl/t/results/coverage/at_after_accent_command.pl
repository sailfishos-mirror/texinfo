use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'at_after_accent_command'} = '*document_root C1
 *before_node_section C1
  *paragraph C6
   *0 @ringaccent l1
   |INFO
   |spaces_after_cmd_before_arg:
    |{ }
   *@@
   {. }
   *1 @^ l1
   *@@
   {.\\n}
';


$result_texis{'at_after_accent_command'} = '@ringaccent @@. @^@@.
';


$result_texts{'at_after_accent_command'} = '*@. ^@.
';

$result_errors{'at_after_accent_command'} = [
  {
    'error_line' => '@ringaccent expected braces
',
    'line_nr' => 1,
    'text' => '@ringaccent expected braces',
    'type' => 'error'
  },
  {
    'error_line' => '@^ expected braces
',
    'line_nr' => 1,
    'text' => '@^ expected braces',
    'type' => 'error'
  }
];


$result_floats{'at_after_accent_command'} = {};



$result_converted{'plaintext'}->{'at_after_accent_command'} = '̊@.  ̂@.
';


$result_converted{'html_text'}->{'at_after_accent_command'} = '<p>&#778;@. &#770;@.
</p>';


$result_converted{'xml'}->{'at_after_accent_command'} = '<para><accent type="ring"></accent>&arobase;. <accent type="circ"></accent>&arobase;.
</para>';


$result_converted{'latex_text'}->{'at_after_accent_command'} = '\\r{}@. \\^{}@.
';


$result_converted{'docbook'}->{'at_after_accent_command'} = '<para>&#778;@. &#770;@.
</para>';

1;
