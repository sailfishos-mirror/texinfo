use vars qw(%result_texis %result_texts %result_trees %result_errors 
   %result_indices %result_sectioning %result_nodes %result_menus
   %result_floats %result_converted %result_converted_errors 
   %result_elements %result_directions_text %result_indices_sort_strings);

use utf8;

$result_trees{'documentlanguage_set_unknown'} = {
  'contents' => [
    {
      'contents' => [
        {
          'contents' => [
            {
              'contents' => [
                {
                  'parent' => {},
                  'text' => '\\input texinfo @c -*-texinfo-*-
',
                  'type' => 'text_before_beginning'
                }
              ],
              'parent' => {},
              'type' => 'preamble_before_beginning'
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
              'cmdname' => 'c',
              'extra' => {
                'misc_args' => [
                  '
'
                ]
              },
              'parent' => {}
            }
          ],
          'parent' => {},
          'type' => 'preamble_before_setfilename'
        },
        {
          'contents' => [
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'documentlanguage_set.info'
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
              'cmdname' => 'setfilename',
              'extra' => {
                'spaces_before_argument' => ' ',
                'text_arg' => 'documentlanguage_set.info'
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'documentlanguage_set.texi',
                'line_nr' => 3,
                'macro' => ''
              }
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
              'parent' => {},
              'source_info' => {
                'file_name' => 'documentlanguage_set.texi',
                'line_nr' => 4,
                'macro' => ''
              }
            },
            {
              'args' => [
                {
                  'contents' => [
                    {
                      'parent' => {},
                      'text' => 'Test '
                    },
                    {
                      'cmdname' => '@',
                      'parent' => {}
                    },
                    {
                      'parent' => {},
                      'text' => 'documentlanguage set'
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
              'cmdname' => 'settitle',
              'extra' => {
                'spaces_before_argument' => ' '
              },
              'parent' => {},
              'source_info' => {
                'file_name' => 'documentlanguage_set.texi',
                'line_nr' => 5,
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
      'contents' => [],
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
        'file_name' => 'documentlanguage_set.texi',
        'line_nr' => 7,
        'macro' => ''
      }
    },
    {
      'args' => [
        {
          'contents' => [
            {
              'cmdname' => '@',
              'parent' => {}
            },
            {
              'parent' => {},
              'text' => 'documentlanguage set'
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
      'cmdname' => 'top',
      'contents' => [
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
              'text' => 'Text.
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
      'extra' => {
        'spaces_before_argument' => ' '
      },
      'parent' => {},
      'source_info' => {
        'file_name' => 'documentlanguage_set.texi',
        'line_nr' => 8,
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
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'contents'}[2]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[2]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'contents'}[3]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'};
$result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'extra'}{'node_content'}[0] = $result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'extra'}{'nodes_manuals'}[0]{'node_content'}[0] = $result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'args'}[0]{'contents'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'};
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'args'}[0]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'args'}[0]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'args'}[0];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'contents'}[1]{'contents'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'contents'}[1];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'contents'}[1]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'contents'}[2]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[2];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[2]{'parent'} = $result_trees{'documentlanguage_set_unknown'};
$result_trees{'documentlanguage_set_unknown'}{'contents'}[3]{'args'}[0]{'parent'} = $result_trees{'documentlanguage_set_unknown'}{'contents'}[3];
$result_trees{'documentlanguage_set_unknown'}{'contents'}[3]{'parent'} = $result_trees{'documentlanguage_set_unknown'};

$result_texis{'documentlanguage_set_unknown'} = '\\input texinfo @c -*-texinfo-*-
@c
@setfilename documentlanguage_set.info
@documentlanguage pt
@settitle Test @@documentlanguage set

@node Top
@top @@documentlanguage set

Text.

@bye
';


$result_texts{'documentlanguage_set_unknown'} = '
@documentlanguage set
*********************

Text.

';

$result_sectioning{'documentlanguage_set_unknown'} = {
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
$result_sectioning{'documentlanguage_set_unknown'}{'structure'}{'section_childs'}[0]{'structure'}{'section_up'} = $result_sectioning{'documentlanguage_set_unknown'};

$result_nodes{'documentlanguage_set_unknown'} = {
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

$result_menus{'documentlanguage_set_unknown'} = {
  'cmdname' => 'node',
  'extra' => {
    'normalized' => 'Top'
  }
};

$result_errors{'documentlanguage_set_unknown'} = [];


$result_floats{'documentlanguage_set_unknown'} = {};


1;
