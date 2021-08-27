use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text);

use utf8;

$result_trees{'modified_translation'} = {
  'contents' => [
    {
      'contents' => [
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'error',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 1,
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
              'text' => 'fr'
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
      'cmdname' => 'documentlanguage',
      'extra' => {
        'spaces_before_argument' => ' ',
        'text_arg' => 'fr'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 3,
        'macro' => ''
      },
      'parent' => {}
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
          'parent' => {},
          'text' => 'fr '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'error',
          'contents' => [],
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
              'text' => 'pt'
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
      'cmdname' => 'documentlanguage',
      'extra' => {
        'spaces_before_argument' => ' ',
        'text_arg' => 'pt'
      },
      'line_nr' => {
        'file_name' => '',
        'line_nr' => 7,
        'macro' => ''
      },
      'parent' => {}
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
          'parent' => {},
          'text' => 'pt '
        },
        {
          'args' => [
            {
              'contents' => [],
              'parent' => {},
              'type' => 'brace_command_arg'
            }
          ],
          'cmdname' => 'error',
          'contents' => [],
          'line_nr' => {
            'file_name' => '',
            'line_nr' => 9,
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
    }
  ],
  'type' => 'text_root'
};
$result_trees{'modified_translation'}{'contents'}[0]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[0]{'contents'}[0];
$result_trees{'modified_translation'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[0];
$result_trees{'modified_translation'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'modified_translation'}{'contents'}[0];
$result_trees{'modified_translation'}{'contents'}[0]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[1]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[2]{'args'}[0];
$result_trees{'modified_translation'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[2];
$result_trees{'modified_translation'}{'contents'}[2]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[3]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[4];
$result_trees{'modified_translation'}{'contents'}[4]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[4]{'contents'}[1];
$result_trees{'modified_translation'}{'contents'}[4]{'contents'}[1]{'parent'} = $result_trees{'modified_translation'}{'contents'}[4];
$result_trees{'modified_translation'}{'contents'}[4]{'contents'}[2]{'parent'} = $result_trees{'modified_translation'}{'contents'}[4];
$result_trees{'modified_translation'}{'contents'}[4]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[5]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[6]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[6]{'args'}[0];
$result_trees{'modified_translation'}{'contents'}[6]{'args'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[6];
$result_trees{'modified_translation'}{'contents'}[6]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[7]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[8]{'contents'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[8];
$result_trees{'modified_translation'}{'contents'}[8]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'modified_translation'}{'contents'}[8]{'contents'}[1];
$result_trees{'modified_translation'}{'contents'}[8]{'contents'}[1]{'parent'} = $result_trees{'modified_translation'}{'contents'}[8];
$result_trees{'modified_translation'}{'contents'}[8]{'contents'}[2]{'parent'} = $result_trees{'modified_translation'}{'contents'}[8];
$result_trees{'modified_translation'}{'contents'}[8]{'parent'} = $result_trees{'modified_translation'};
$result_trees{'modified_translation'}{'contents'}[9]{'parent'} = $result_trees{'modified_translation'};

$result_texis{'modified_translation'} = '@error{}.

@documentlanguage fr

fr @error{}.

@documentlanguage pt

pt @error{}.

';


$result_texts{'modified_translation'} = 'error-->.


fr error-->.


pt error-->.

';

$result_errors{'modified_translation'} = [];


$result_floats{'modified_translation'} = {};



$result_converted{'html'}->{'modified_translation'} = '<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- Created by texinfo, http://www.gnu.org/software/texinfo/ -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Documento Sem Nome</title>

<meta name="description" content="Documento Sem Nome">
<meta name="keywords" content="Documento Sem Nome">
<meta name="resource-type" content="document">
<meta name="distribution" content="global">
<meta name="viewport" content="width=device-width,initial-scale=1">

<style type="text/css">
<!--
a.copiable-anchor {visibility: hidden; text-decoration: none; line-height: 0em}
a.summary-letter {text-decoration: none}
blockquote.indentedblock {margin-right: 0em}
div.display {margin-left: 3.2em}
div.example {margin-left: 3.2em}
kbd {font-style: oblique}
pre.display {font-family: inherit}
pre.format {font-family: inherit}
pre.menu-comment {font-family: serif}
pre.menu-preformatted {font-family: serif}
span.nolinebreak {white-space: nowrap}
span.roman {font-family: initial; font-weight: normal}
span.sansserif {font-family: sans-serif; font-weight: normal}
span:hover a.copiable-anchor {visibility: visible}
ul.no-bullet {list-style: none}
-->
</style>


</head>

<body lang="pt">
<p>Formulário especial.
</p>

<p>fr Forme Sp@\'eciale.
</p>

<p>pt Formulário especial.
</p>



</body>
</html>
';

$result_converted_errors{'html'}->{'modified_translation'} = [
  {
    'error_line' => 'warning: must specify a title with a title command or @top
',
    'text' => 'must specify a title with a title command or @top',
    'type' => 'warning'
  }
];


1;
