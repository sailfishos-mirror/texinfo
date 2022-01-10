use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'xml_protected_in_verb'} = {
  'contents' => [
    {
      'contents' => [
        {
          'cmdname' => 'verbatim',
          'contents' => [
            {
              'extra' => {
                'command' => {}
              },
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line_after_command'
            },
            {
              'parent' => {},
              'text' => '<a>
',
              'type' => 'raw'
            }
          ],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
            'macro' => ''
          },
          'parent' => {}
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line_after_command'
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => ' <i> ',
                      'type' => 'raw'
                    }
                  ],
                  'parent' => {},
                  'type' => 'brace_command_arg'
                }
              ],
              'cmdname' => 'verb',
              'contents' => [],
              'extra' => {
                'delimiter' => '.'
              },
              'line_nr' => {
                'file_name' => '',
                'line_nr' => 5,
                'macro' => ''
              },
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
        },
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
        },
        {
          'args' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => 'file_with_xml_chars.texi'
                }
              ],
              'extra' => {
                'spaces_after_argument' => '
'
              },
              'parent' => {},
              'type' => 'line_arg'
            }
          ],
          'cmdname' => 'verbatiminclude',
          'extra' => {
            'input_perl_encoding' => 'utf-8',
            'spaces_before_argument' => ' ',
            'text_arg' => 'file_with_xml_chars.texi'
          },
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 7,
            'macro' => ''
          },
          'parent' => {}
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    }
  ],
  'type' => 'document_root'
};
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'extra'}{'command'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[2]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'contents'}[1]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[3]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[4]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[5]{'args'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[5]{'args'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[5];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'contents'}[5]{'parent'} = $result_trees{'xml_protected_in_verb'}{'contents'}[0];
$result_trees{'xml_protected_in_verb'}{'contents'}[0]{'parent'} = $result_trees{'xml_protected_in_verb'};

$result_texis{'xml_protected_in_verb'} = '@verbatim
<a>
@end verbatim

@verb{. <i> .}.

@verbatiminclude file_with_xml_chars.texi
';


$result_texts{'xml_protected_in_verb'} = '<a>

 <i> .

';

$result_errors{'xml_protected_in_verb'} = [];


$result_floats{'xml_protected_in_verb'} = {};



$result_converted{'html'}->{'xml_protected_in_verb'} = '<!DOCTYPE html>
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Untitled Document</title>

<meta name="description" content="Untitled Document">
<meta name="keywords" content="Untitled Document">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
-->
</style>


</head>

<body lang="en">
<pre class="verbatim">&lt;a&gt;
</pre>
<p><tt class="verb"> &lt;i&gt; </tt>.
</p>
<pre class="verbatim">&lt;bidule truc=&quot;ff &amp;amp;&quot;&gt; &amp; &lt;/bidule&gt;
</pre>


</body>
</html>
';

$result_converted_errors{'html'}->{'xml_protected_in_verb'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
