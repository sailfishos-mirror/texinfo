use vars qw(%result_texis %result_texts %result_tree_text %result_trees %result_errors
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_tree_text{'protected_space_end_line'} = '*document_root C1
 *before_node_section C7
  *paragraph C1
   {First para\\n}
  {empty_line:\\n}
  *paragraph C5
   {This is a very simple texi manual followed by tab a <>.\\n}
   {followed by }
   *@ 
   *@ 
   {newline.\\n}
  {empty_line:\\n}
  *paragraph C6
   {This is a very simple texi manual followed by tab a <>.\\n}
   {followed }
   *@ 
   *@ 
   *@ 
   {newline.\\n}
  {empty_line:\\n}
  *paragraph C12
   {This is a very simple texi manual followed by tab a <>. }
   *@ 
   *@ 
   *@ 
   *@ 
   *@ 
   *@ 
   *@ 
   *@ 
   *@ 
   *@\\n
   {text.\\n}
';


$result_texis{'protected_space_end_line'} = 'First para

This is a very simple texi manual followed by tab a <>.
followed by @ @ newline.

This is a very simple texi manual followed by tab a <>.
followed @ @ @ newline.

This is a very simple texi manual followed by tab a <>. @ @ @ @ @ @ @ @ @ @
text.
';


$result_texts{'protected_space_end_line'} = 'First para

This is a very simple texi manual followed by tab a <>.
followed by   newline.

This is a very simple texi manual followed by tab a <>.
followed    newline.

This is a very simple texi manual followed by tab a <>.           text.
';

$result_errors{'protected_space_end_line'} = [];


$result_floats{'protected_space_end_line'} = {};



$result_converted{'plaintext'}->{'protected_space_end_line'} = 'First para

   This is a very simple texi manual followed by tab a <>.  followed by
  newline.

   This is a very simple texi manual followed by tab a <>.  followed
   newline.

   This is a very simple texi manual followed by tab a <>.
          text.
';

1;
