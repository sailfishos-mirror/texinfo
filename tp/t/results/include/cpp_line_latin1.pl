use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'cpp_line_latin1'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => '\\input texinfo
',
              'type' => 'text_before_beginning'
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'text_before_beginning'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_beginning'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'ISO-8859-1'
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
              'cmdname' => 'documentencoding',
              'extra' => {
                'input_encoding_name' => 'iso-8859-1',
                'input_perl_encoding' => 'iso-8859-1',
                'spaces_before_argument' => ' ',
                'text_arg' => 'ISO-8859-1'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'cpp_line_latin1.texi',
                'line_nr' => 3,
                'macro' => ''
              }
            },
            {
              'parent' => {},
              'text' => '
',
              'type' => 'empty_line'
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_content'
        }
      ],
      'parent' => {},
      'type' => 'before_node_section'
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'parent' => {},
              'text' => 'Top'
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
      'cmdname' => 'node',
      'extra' => {
        'node_content' => [
          {}
        ],
        'nodes_manuals' => [
          {
            'node_content' => [
              {}
            ],
            'normalized' => 'Top'
          }
        ],
        'normalized' => 'Top',
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'cpp_line_latin1.texi',
        'line_nr' => 5,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'extra' => {
            'spaces_after_argument' => '
'
          },
          'parent' => {},
          'type' => 'line_arg'
        }
      ],
      'cmdname' => 'top',
      'contents' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'empty_line'
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
              'text' => '
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
          'contents' => [
            {
              'parent' => {},
              'text' => 'aaa
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
      'extra' => {},
      'parent' => {},
      'source_info' => {
        'file_name' => 'cpp_line_latin1.texi',
        'line_nr' => 6,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'parent' => {},
          'text' => '
',
          'type' => 'misc_arg'
        }
      ],
      'cmdname' => 'bye',
      'parent' => {}
    }
  ],
  'type' => 'document_root'
};
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'};
$result_trees{'cpp_line_latin1'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[1]{'args'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[1];
$result_trees{'cpp_line_latin1'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'cpp_line_latin1'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'cpp_line_latin1'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'cpp_line_latin1'}{'contents'}[1]{'parent'} = $result_trees{'cpp_line_latin1'};
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[3]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[4]{'contents'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[4];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[4]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'contents'}[5]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[2];
$result_trees{'cpp_line_latin1'}{'contents'}[2]{'parent'} = $result_trees{'cpp_line_latin1'};
$result_trees{'cpp_line_latin1'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'cpp_line_latin1'}{'contents'}[3];
$result_trees{'cpp_line_latin1'}{'contents'}[3]{'parent'} = $result_trees{'cpp_line_latin1'};

$result_texis{'cpp_line_latin1'} = '\\input texinfo

@documentencoding ISO-8859-1

@node Top
@top




aaa

@bye
';


$result_texts{'cpp_line_latin1'} = '




aaa

';

$result_sectioning{'cpp_line_latin1'} = {
  'structure' => {
    'section_childs' => [
      {
        'cmdname' => 'top',
        'extra' => {
          'associated_node' => {
            'cmdname' => 'node',
            'extra' => {
              'normalized' => 'Top'
            }
          }
        },
        'structure' => {
          'section_level' => 0,
          'section_up' => {}
        }
      }
    ],
    'section_level' => -1
  }
};
$result_sectioning{'cpp_line_latin1'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'cpp_line_latin1'};

$result_nodes{'cpp_line_latin1'} = {
  'cmdname' => 'node',
  'extra' => {
    'associated_section' => {
      'cmdname' => 'top',
      'extra' => {},
      'structure' => {}
    },
    'normalized' => 'Top'
  }
};

$result_menus{'cpp_line_latin1'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'cpp_line_latin1'} = [
  {
    'error_line' => 'unknown command `gggg\'
',
    'file_name' => 'foo.ptèxi',
    'line_nr' => 102,
    'macro' => '',
    'text' => 'unknown command `gggg\'',
    'type' => 'error'
  }
];


$result_floats{'cpp_line_latin1'} = {};


1;
