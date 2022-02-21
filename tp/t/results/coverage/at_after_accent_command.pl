use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'at_after_accent_command'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'cmdname' => 'ringaccent',
              'contents' => [],
              'extra' => {
                'spaces' => ' '
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '. '
            },
            {
              'cmdname' => '^',
              'contents' => [],
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 1,
                'macro' => ''
              },
              'parent' => {}
            },
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => '.
'
            }
          ],
          'parent' => {},
          'type' => 'paragraph'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'at_after_accent_command'}{'contents'}[0];
$result_trees{'at_after_accent_command'}{'contents'}[0]{'parent'} = $result_trees{'at_after_accent_command'};

$result_texis{'at_after_accent_command'} = '@ringaccent @@. @^@@.
';


$result_texts{'at_after_accent_command'} = '*@. ^@.
';

$result_errors{'at_after_accent_command'} = [
  {
    'error_line' => 'use braces to give a command as an argument to @ringaccent
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'use braces to give a command as an argument to @ringaccent',
    'type' => 'error'
  },
  {
    'error_line' => 'use braces to give a command as an argument to @^
',
    'file_name' => '',
    'line_nr' => 1,
    'macro' => '',
    'text' => 'use braces to give a command as an argument to @^',
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


$result_converted{'docbook'}->{'at_after_accent_command'} = '<para>&#778;@. &#770;@.
</para>';

1;
