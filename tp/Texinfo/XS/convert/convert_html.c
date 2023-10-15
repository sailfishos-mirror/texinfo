/* Copyright 2010-2023 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

#include <config.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

#include "global_commands_types.h"
#include "tree_types.h"
#include "tree.h"
#include "builtin_commands.h"
#include "utils.h"
#include "extra.h"
#include "targets.h"
#include "debug.h"
#include "structuring.h"
#include "output_unit.h"
#include "tree_perl_api.h"
#include "converter.h"
#include "node_name_normalization.h"
#include "indices_in_conversion.h"
#include "convert_to_texinfo.h"
#include "translations.h"
#include "convert_utils.h"
#include "convert_html.h"


typedef struct ROOT_AND_UNIT {
    OUTPUT_UNIT *output_unit;
    ELEMENT *root;
} ROOT_AND_UNIT;

/*
  If FIND_CONTAINER is set, the element that holds the command output
  is found, otherwise the element that holds the command is found.  This is
  mostly relevant for footnote only.
  If no known root element type is found, the returned root element is undef,
  and not set to the element at the tree root
 */
static ROOT_AND_UNIT *
html_get_tree_root_element (CONVERTER *self, ELEMENT *command,
                            int find_container)
{
  ELEMENT *current = command;
  OUTPUT_UNIT *output_unit = 0;
  ELEMENT *root_command = 0;

  while (1)
    {
      if (current->type == ET_special_unit_element)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }

      if (current->cmd && (builtin_command_flags(current) & CF_root))
        root_command = current;
      else if (current->cmd && (builtin_command_flags(current) & CF_block)
               && builtin_command_data[current->cmd].data == BLOCK_region)
        {
          OUTPUT_UNIT_LIST *output_units
             = retrieve_output_units (self->document_units_descriptor);
          if (current->cmd == CM_copying
              && self->document->global_commands
                      ->insertcopying.contents.number > 0)
            {
              ELEMENT global_insertcopying
                = self->document->global_commands->insertcopying;
              int i;
              for (i = 0; i < global_insertcopying.contents.number; i++)
                {
                  ELEMENT *insertcopying
                      = global_insertcopying.contents.list[i];
                  ROOT_AND_UNIT *cur_result = html_get_tree_root_element (self,
                                                insertcopying, find_container);
                  if (cur_result->output_unit || cur_result->root)
                    return cur_result;
                }
            }
          else if (current->cmd == CM_titlepage
                   && self->conf->USE_TITLEPAGE_FOR_TITLE
                   && self->conf->SHOW_TITLE
                   && output_units->number > 0)
            {
              ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
              result->output_unit = output_units->list[0];
              result->root = output_units->list[0]->unit_command;
              return result;
            }
          if (output_unit || root_command)
            fatal ("Problem output_unit, root_command");
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          memset (result, 0, sizeof (ROOT_AND_UNIT));
          return result;
        }
      else if (find_container)
        {
     /* @footnote and possibly @*contents when a separate element is set */
             /* TODO
                  my ($special_unit_variety, $special_unit, $class_base,
            $special_unit_direction)
         = $self->command_name_special_unit_information($current->{'cmdname'});
        if ($special_unit) {
          return ($special_unit, undef);
             */

        }

      if (current->associated_unit)
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = current->associated_unit;
          result->root = current;
          return result;
        }
      else if (current->parent)
        {
          current = current->parent;
        }
      else
        {
          ROOT_AND_UNIT *result = malloc (sizeof (ROOT_AND_UNIT));
          result->output_unit = 0;
          result->root = root_command;
          return result;
        }
    }
}

typedef struct TRANSLATED_SUI_ASSOCIATION {
    int tree_type;
    int string_type;
} TRANSLATED_SUI_ASSOCIATION;

static TRANSLATED_SUI_ASSOCIATION translated_special_unit_info[] = {
  {SUIT_type_heading, SUI_type_heading},
  {-1, -1},
};

HTML_TARGET *
find_element_target (HTML_TARGET_LIST *targets, ELEMENT *element)
{
  int i;

  if (!targets->number)
    return 0;

  for (i = 0; i < targets->number; i ++)
    {
      HTML_TARGET *target = &targets->list[i];
      if (target->element == element)
        return target;
    }
  return 0;
}

int
special_unit_variety_direction_index (CONVERTER *self,
                                      char *special_unit_variety)
{
  int i;
  VARIETY_DIRECTION_INDEX **varieties_direction_index
    = self->varieties_direction_index;
  for (i = 0; varieties_direction_index[i] != 0; i++)
    {
      VARIETY_DIRECTION_INDEX *variety_direction_index
        = varieties_direction_index[i];
      if (!strcmp (variety_direction_index->special_unit_variety,
                   special_unit_variety))
        return variety_direction_index->direction_index;
    }
  return -1;
}

/* FIXME conversion need to be added */
static void
reset_unset_no_arg_commands_formatting_context (CONVERTER *self,
                   enum command_id cmd, int reset_context, int ref_context,
                   int translate)
{
  HTML_COMMAND_CONVERSION *no_arg_command_context;
  HTML_COMMAND_CONVERSION **conversion_contexts
    = self->html_command_conversion[cmd];
  /* should never happen as unset is set at configuration */
  if (!conversion_contexts[reset_context])
    {
      conversion_contexts[reset_context] =
        (HTML_COMMAND_CONVERSION *) malloc (sizeof (HTML_COMMAND_CONVERSION));
      memset (conversion_contexts[reset_context], 0,
              sizeof (HTML_COMMAND_CONVERSION));

      conversion_contexts[reset_context]->unset = 1;
    }
  no_arg_command_context = conversion_contexts[reset_context];
  if (ref_context >= 0)
    {
      if (no_arg_command_context->unset)
        {
          HTML_COMMAND_CONVERSION *no_arg_ref
            = conversion_contexts[ref_context];

          if (no_arg_ref->text)
            no_arg_command_context->text = no_arg_ref->text;
          if (no_arg_ref->tree)
            no_arg_command_context->tree = no_arg_ref->tree;
          if (no_arg_ref->translated_converted)
            no_arg_command_context->translated_converted
              = no_arg_ref->translated_converted;
          if (no_arg_ref->translated_to_convert)
            no_arg_command_context->translated_to_convert
              = no_arg_ref->translated_to_convert;
        }
    }

  if (translate
      && no_arg_command_context->tree
      && !no_arg_command_context->translated_converted)
    {
      char *translation_result = 0;
      ELEMENT *translated_tree = no_arg_command_context->tree;
      if (reset_context == HCC_type_normal)
        {
          char *explanation;
          xasprintf (&explanation, "no arg %s translated",
                     builtin_command_data[cmd].cmdname);
           /*
          translation_result = convert_tree (self, explanation);
            */
          free (explanation);
        }
      else if (reset_context == HCC_type_preformatted)
        {
          /*
      # there does not seems to be anything simpler...
      my $preformatted_command_name = 'example';
      $self->_new_document_context();
      push @{$self->{'document_context'}->[-1]->{'composition_context'}},
          $preformatted_command_name;
      # should not be needed for at commands no brace translation strings
      push @{$self->{'document_context'}->[-1]->{'preformatted_classes'}},
          $pre_class_commands{$preformatted_command_name};
      $translation_result
        = $self->convert_tree($translated_tree, "no arg $cmdname translated");
      # only pop the main context
      $self->_pop_document_context();
           */
        }
      else if (reset_context == HCC_type_string)
        {
          /*
      $translation_result
        = $self->convert_tree_new_formatting_context({'type' => '_string',
                                          'contents' => [$translated_tree]},
                     'translated_string', "string no arg $cmdname translated");
           */
        }
      else if (reset_context == HCC_type_css_string)
        {
           /*
          translation_result = html_convert_css_string (self, translated_tree);
            */
        }
      no_arg_command_context->text = translation_result;
    }
}

static void
complete_no_arg_commands_formatting (CONVERTER *self, enum command_id cmd,
                                     int translate)
{
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_normal,
                                                  -1, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd, 
                                                  HCC_type_preformatted,
                                                  HCC_type_normal, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_string,
                                                  HCC_type_preformatted, translate);
  reset_unset_no_arg_commands_formatting_context (self, cmd, HCC_type_css_string,
                                                  HCC_type_string, translate);
}

void
translate_names (CONVERTER *self)
{
  int j;
  STRING_LIST *special_unit_varieties = self->special_unit_varieties;
  if (self->conf->DEBUG > 0)
    {
      fprintf (stderr, "\nTRANSLATE_NAMES encoding_name: "
               " documentlanguage: %s\n", self->conf->documentlanguage);
    }

  /* reset strings such that they are translated when needed. */
  #define tds_type(name) self->directions_strings[TDS_type_ ## name] = 0;
   TDS_TRANSLATED_TYPES_LIST
  #undef tds_type

  for (j = 0; translated_special_unit_info[j].tree_type >= 0; j++)
    {
      int i;
      int tree_type = translated_special_unit_info[j].tree_type;
      for (i = 0; i < special_unit_varieties->number; i++)
        self->special_unit_info_tree[tree_type][i] = 0;
    }

  /* delete the tree and formatted results for special elements
     such that they are redone with the new tree when needed. */
  for (j = 0; j < special_unit_varieties->number; j++)
    {
      char *special_unit_variety = special_unit_varieties->list[j];
      int special_unit_direction_index
       = special_unit_variety_direction_index (self, special_unit_variety);
      if (special_unit_direction_index >= 0)
        {
          OUTPUT_UNIT *special_unit
           = self->global_units_directions[special_unit_direction_index];
          if (special_unit)
             {
               ELEMENT *command = special_unit->unit_command;
               if (command)
                 {
                   HTML_TARGET *target
                     = find_element_target (self->html_targets, command);
                   if (target)
                     {
                       target->tree = 0;
                       target->string = 0;
                       target->text = 0;
                     }
                 }
             }
        }
    }

  if (self->no_arg_formatted_cmd)
    {
      int translated_nr = 0;
      /* this is overkill, but simpler */
      enum command_id *translated_cmds = (enum command_id *)
        malloc ((self->no_arg_formatted_cmd->number +1)
                * sizeof (enum command_id));
      memset (translated_cmds, 0, (self->no_arg_formatted_cmd->number +1)
                * sizeof (enum command_id));

      for (j = 0; j < self->no_arg_formatted_cmd->number; j++)
        {
          enum command_id cmd = self->no_arg_formatted_cmd->list[j];
          int i;
          int add_cmd = 0;
          for (i = 0; i < HCC_type_css_string+1; i++)
            {
              HTML_COMMAND_CONVERSION *format_spec
                = self->html_command_conversion[cmd][i];
              if (format_spec->translated_converted
                  && !format_spec->unset)
                {
                  add_cmd = 1;
                  format_spec->text
                   = gdt_string (format_spec->translated_converted, self->conf,
                                 0, 0, 0);
                }
              else if (i == HCC_type_normal)
                {
                  ELEMENT *translated_tree = 0;
                  if (format_spec->translated_to_convert)
                    {/* FIXME use document associated to converter? */
                      translated_tree =
                         gdt_tree (format_spec->translated_to_convert,
                                   0, self->conf, 0, 0, 0);
                    }
                  else
                    translated_tree = translated_command_tree (self, cmd);

                  if (translated_tree)
                    {
                      add_cmd = 1;

                      format_spec->tree = translated_tree;
                    }
                }
            }
          if (add_cmd)
            {
              translated_cmds[translated_nr] = cmd;
              translated_nr++;
            }
        }

      for (j = 0; j < translated_nr; j++)
        {
          enum command_id cmd = translated_cmds[j];
          complete_no_arg_commands_formatting (self, cmd, 1);
        }
    }
}

/* Associate output units to the global targets, First, Last, Top, Index. */
static void
prepare_output_units_global_targets (CONVERTER *self,
                                     int output_units_descriptor)
{
  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);
  ELEMENT *node_top = find_identifier_target
                          (self->document->identifiers_target, "Top");
  ELEMENT *section_top = self->document->global_commands->top;

  self->global_units_directions[D_First] = output_units->list[0];
  self->global_units_directions[D_Last]
    = output_units->list[output_units->number - 1];

  if (section_top)
    self->global_units_directions[D_Top] = section_top->associated_unit;
  else if (node_top)
    self->global_units_directions[D_Top] = node_top->associated_unit;
  else
    self->global_units_directions[D_Top] = output_units->list[0];

  /* It is always the first printindex, even if it is not output (for example
     it is in @copying and @titlepage, which are certainly wrong constructs).
   */
  if (self->document->global_commands->printindex.contents.number > 0)
    {
      ELEMENT *printindex
        = self->document->global_commands->printindex.contents.list[0];
      ROOT_AND_UNIT *root_unit
        = html_get_tree_root_element (self, printindex, 0);
      if (root_unit->output_unit)
        {
          OUTPUT_UNIT *document_unit = root_unit->output_unit;
          ELEMENT *root_command = root_unit->root;
          if (root_command && root_command->cmd == CM_node)
            {
              ELEMENT *associated_section
                = lookup_extra_element (root_command, "associated_section");
              if (associated_section)
                root_command = associated_section;
            }
       /* find the first level 1 sectioning element to associate the printindex
           with */
          if (root_command && root_command->cmd != CM_node)
            {
              while (1)
                {
                  int status;
                  int section_level
                    = lookup_extra_integer (root_command, "section_level",
                                                               &status);
                  if (!status && section_level <= 1)
                    break;

                  ELEMENT *up_section_directions
                    = lookup_extra_element (root_command, "section_directions");
                  if (up_section_directions
                      && up_section_directions->contents.list[D_up]
                      && up_section_directions->contents.list[D_up]
                                     ->associated_unit)
                    {
                      root_command = up_section_directions->contents.list[D_up];
                      document_unit = root_command->associated_unit;
                    }
                  else
                    break;
                }
              self->global_units_directions[D_Index] = document_unit;
            }
        }
      free (root_unit);
    }

  if (self->conf->DEBUG >= 0 && self->conf->DEBUG)
    {
      int i;
      fprintf (stderr, "GLOBAL DIRECTIONS:\n");
      for (i = 0; i < D_Last+1; i++)
        {
          if (self->global_units_directions[i])
            {
              OUTPUT_UNIT *global_unit = self->global_units_directions[i];
              char *unit_texi = unit_or_external_element_texi (global_unit);
              fprintf (stderr, "%s: %s\n", output_unit_type_names[i],
                                           unit_texi);
              free (unit_texi);
            }
        }
    }
}

typedef struct CMD_VARIETY {
    enum command_id cmd;
    char *variety;
} CMD_VARIETY;

CMD_VARIETY contents_command_special_unit_variety[] = {
                                {CM_contents, "contents"},
                                {CM_shortcontents, "shortcontents"},
                                {CM_summarycontents, "shortcontents"},
                                {0, 0},
};

ELEMENT *
special_unit_info_tree (CONVERTER *self, enum special_unit_info_tree type,
                        char *special_unit_variety)
{
  int i;
  int j;
  STRING_LIST *special_unit_varieties = self->special_unit_varieties;
  for (i = 0; i < special_unit_varieties->number; i++)
    {
      if (!strcmp (special_unit_varieties->list[i], special_unit_variety))
        break;
    }

  if (self->special_unit_info_tree[type][i])
    return self->special_unit_info_tree[type][i];

  for (j = 0; translated_special_unit_info[j].tree_type >= 0; j++)
    {
      if (translated_special_unit_info[j].tree_type == type)
        {
          int string_type = translated_special_unit_info[j].string_type;
          char *special_unit_info_string
            = self->special_unit_info[string_type][i];
          char *translation_context;
          xasprintf (&translation_context, "%s section heading",
                     special_unit_variety);
          self->special_unit_info_tree[type][i]
            = pgdt_tree (translation_context, special_unit_info_string,
                         self->document, self->conf, 0, 0);
          free (translation_context);
          return self->special_unit_info_tree[type][i];
        }
    }
  return 0;
}

char *
special_unit_info (CONVERTER *self, enum special_unit_info_type type,
                   char *special_unit_variety)
{
  int i;
  STRING_LIST *special_unit_varieties = self->special_unit_varieties;
  for (i = 0; i < special_unit_varieties->number; i++)
    {
      if (!strcmp (special_unit_varieties->list[i], special_unit_variety))
        break;
    }

  return self->special_unit_info[type][i];
}

OUTPUT_UNIT *
register_special_unit (CONVERTER *self, char *special_unit_variety)
{
  ELEMENT *unit_command = new_element (ET_special_unit_element);
  OUTPUT_UNIT *special_unit = new_output_unit (OU_special_unit);
  int special_unit_direction_index = -1;

  special_unit->special_unit_variety = special_unit_variety;
  unit_command->associated_unit = special_unit;
  special_unit->unit_command = unit_command;

  special_unit_direction_index
    = special_unit_variety_direction_index (self, special_unit_variety);

  self->global_units_directions[special_unit_direction_index]
   = special_unit;

  return special_unit;
}

typedef struct SPECIAL_UNIT_ORDER {
    char *order;
    char *variety;
} SPECIAL_UNIT_ORDER;

int
compare_special_units (const void *a, const void *b)
{
  const SPECIAL_UNIT_ORDER *spu_order_a = (const SPECIAL_UNIT_ORDER *) a;
  const SPECIAL_UNIT_ORDER *spu_order_b = (const SPECIAL_UNIT_ORDER *) b;

  int result = strcmp (spu_order_a->order, spu_order_b->order);
  if (result != 0)
    return result;
  return strcmp (spu_order_a->variety, spu_order_b->variety);
}

void
prepare_special_units (CONVERTER *self, int output_units_descriptor,
                               int *special_units_descriptor_ref,
                               int *associated_special_units_descriptor_ref)
{
  int i;
  SPECIAL_UNIT_ORDER *special_units_order;
  OUTPUT_UNIT *previous_output_unit = 0;

  int special_units_descriptor = new_output_units_descriptor ();
  int associated_special_units_descriptor = new_output_units_descriptor ();

  /* retrieve after reallocating */

  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  OUTPUT_UNIT_LIST *associated_special_units
    = retrieve_output_units (associated_special_units_descriptor);

  OUTPUT_UNIT_LIST *output_units
    = retrieve_output_units (output_units_descriptor);

  /* for separate special output units */
  STRING_LIST *do_special = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (do_special, 0, sizeof (STRING_LIST));

  *special_units_descriptor_ref = special_units_descriptor;
  *associated_special_units_descriptor_ref
     = associated_special_units_descriptor;

  if (self->document->sections_list
      && self->document->sections_list->contents.number > 0)
    {
      enum command_id contents_cmds[2] = {CM_shortcontents, CM_contents};
      int i;
      for (i = 0; i < 2; i++)
        {
          enum command_id cmd = contents_cmds[i];
          COMMAND_OPTION_REF *contents_option_ref
             = get_command_option (self->conf, cmd);
          if (*(contents_option_ref->int_ref) > 0)
            {
              int j;
              char *special_unit_variety = 0;
              char *contents_location = self->conf->CONTENTS_OUTPUT_LOCATION;

              for (j = 0; contents_command_special_unit_variety[j].cmd; j++)
                {
                  if (contents_command_special_unit_variety[j].cmd == cmd)
                    special_unit_variety
                      = contents_command_special_unit_variety[j].variety;
                }
              if (!strcmp (contents_location, "separate_element"))
                add_string (special_unit_variety, do_special);
              else
                {
                  OUTPUT_UNIT *special_output_unit = 0;
                  OUTPUT_UNIT *associated_output_unit = 0;
                  if (!strcmp (contents_location, "after_title"))
                    {
                      if (output_units->number > 0)
                        associated_output_unit = output_units->list[0];
                      else
                        continue;
                    }
                  else if (!strcmp (contents_location, "after_top"))
                    {
                      if (self->document->global_commands->top)
                        {/* note that top is a uniq command */
                          ELEMENT *section_top
                             = self->document->global_commands->top;

                          if (section_top->associated_unit)
                            associated_output_unit = section_top->associated_unit;
                        }
                      if (!associated_output_unit)
                        continue;
                    }
                  else if (!strcmp (contents_location, "inline"))
                    {
                      ELEMENT *global_command
                       = get_cmd_global_command (self->document->global_commands, cmd);
                      if (global_command->contents.number > 0)
                        {
                          int i;
                          for (i = 0; i < global_command->contents.number; i++)
                            {
                              ELEMENT *command = global_command->contents.list[i];
                              ROOT_AND_UNIT *root_unit
                               = html_get_tree_root_element (self, command, 0);
                              if (root_unit->output_unit)
                                associated_output_unit = root_unit->output_unit;
                              free (root_unit);
                              if (associated_output_unit)
                                break;
                            }
                        }
                      else
                        continue;
                    }
                  else /* should not happen */
                    continue;

                  special_output_unit
                    = register_special_unit (self, special_unit_variety);
                  special_output_unit->associated_document_unit
                    = associated_output_unit;
                  add_to_output_unit_list (associated_special_units,
                                           special_output_unit);
                }
            }
          free (contents_option_ref);
        }
    }

  if (self->document->global_commands->footnotes.contents.number > 0
      && ! strcmp(self->conf->footnotestyle, "separate")
      && output_units && output_units->number > 0)
    add_string ("footnotes", do_special);

  if ((self->conf->DO_ABOUT < 0
       && output_units && output_units->number > 0
       && ((self->conf->SPLIT && strlen (self->conf->SPLIT))
           || self->conf->HEADERS > 0))
      || self->conf->DO_ABOUT > 0)
    add_string ("about", do_special);

  special_units_order = (SPECIAL_UNIT_ORDER *)
    malloc (sizeof (SPECIAL_UNIT_ORDER) * do_special->number);
  for (i = 0; i < do_special->number; i++)
    {
      char *special_unit_variety = do_special->list[i];
      special_units_order[i].order = special_unit_info (self, SUI_type_order,
                                                        special_unit_variety);
      special_units_order[i].variety = special_unit_variety;
    }

  qsort (special_units_order, do_special->number, sizeof (SPECIAL_UNIT_ORDER),
         compare_special_units);

  if (output_units && output_units->number > 0)
    previous_output_unit = output_units->list[output_units->number-1];

  for (i = 0; i < do_special->number; i++)
    {
      char *special_unit_variety = strdup (special_units_order[i].variety);
      OUTPUT_UNIT *special_output_unit
                    = register_special_unit (self, special_unit_variety);
      add_to_output_unit_list (special_units,
                               special_output_unit);

      if (previous_output_unit)
        {
          special_output_unit->tree_unit_directions[D_prev]
             = previous_output_unit;
          previous_output_unit->tree_unit_directions[D_next]
             = special_output_unit;
        }
      previous_output_unit = special_output_unit;
    }

  free (special_units_order);
  destroy_strings_list (do_special);
}

void
html_initialize_output_state (CONVERTER *self)
{
  int i;
  /* targets and directions */

  /* used for diverse elements: tree units, indices, footnotes, special
    elements, contents elements... */
  self->html_targets = (HTML_TARGET_LIST *) malloc (sizeof (HTML_TARGET_LIST));
  self->seen_ids = (STRING_LIST *) malloc (sizeof (STRING_LIST));
  memset (self->html_targets, 0, sizeof (HTML_TARGET_LIST));
  memset (self->seen_ids, 0, sizeof (STRING_LIST));
  for (i = 0; i < ST_footnote_location+1; i++)
    {
      self->html_special_targets[i]
        = (HTML_TARGET_LIST *) malloc (sizeof (HTML_TARGET_LIST));
      memset (self->html_special_targets[i], 0, sizeof (HTML_TARGET_LIST));
    }
}

static HTML_TARGET *
add_element_target_to_list (HTML_TARGET_LIST *targets,
                            ELEMENT *element, char *target)
{
  HTML_TARGET *element_target;

  if (targets->number == targets->space)
    {
      targets->list = realloc (targets->list,
                   sizeof (HTML_TARGET) * (targets->space += 5));
    }
  element_target = &targets->list[targets->number];
  memset (element_target, 0, sizeof (HTML_TARGET));
  element_target->element = element;
  element_target->target = target;

  targets->number++;
  return element_target;
}

static HTML_TARGET *
add_element_target (CONVERTER *self, ELEMENT *element, char *target)
{
  HTML_TARGET_LIST *targets = self->html_targets;
  return add_element_target_to_list (targets, element, target);
}

static HTML_TARGET *
add_special_target (CONVERTER *self, enum special_target_type type,
                    ELEMENT *element, char *target)
{
  HTML_TARGET_LIST *targets = self->html_special_targets[type];
  return add_element_target_to_list (targets, element, target);
}


static const enum command_id contents_elements_options[]
                          = {CM_contents, CM_shortcontents, 0};

static const enum command_id conf_for_special_units[]
                          = {CM_footnotestyle, 0};

void
html_prepare_conversion_units (CONVERTER *self,
                               int *output_units_descriptor_ref,
                               int *special_units_descriptor_ref,
                               int *associated_special_units_descriptor_ref)
{
  int output_units_descriptor;

  if (self->conf->USE_NODES)
    output_units_descriptor = split_by_node (self->document->tree);
  else
    output_units_descriptor = split_by_section (self->document->tree);
  *output_units_descriptor_ref = output_units_descriptor;

  /* Needs to be set early in case it would be needed to find some region
     command associated root command. */
  self->document_units_descriptor = output_units_descriptor;

  /* This may be done as soon as output units are available. */
  prepare_output_units_global_targets (self, output_units_descriptor);

  /* the presence of contents elements in the document is used in diverse
     places, set it once for all here */
  set_global_document_commands (self, CL_last, contents_elements_options);
  set_global_document_commands (self, CL_last, conf_for_special_units);
  /*
    NOTE if the last value of footnotestyle is separate, all the footnotes
    formatted text are set to the special element set in _prepare_special_units
    as _html_get_tree_root_element uses the Footnote direction for every footnote.
    Therefore if @footnotestyle separate is set late in the document the current
    value may not be consistent with the link obtained for the footnote
    formatted text.  This is not an issue, as the manual says that
    @footnotestyle should only appear in the preamble, and it makes sense
    to have something consistent in the whole document for footnotes position.
   */
  prepare_special_units (self, output_units_descriptor,
                         special_units_descriptor_ref,
                         associated_special_units_descriptor_ref);

  /* reset to the default */
  set_global_document_commands (self, CL_before, conf_for_special_units);
}

void
set_special_units_targets_files (CONVERTER *self, int special_units_descriptor,
                                 const char *document_name)
{
  int i;
  OUTPUT_UNIT_LIST *special_units
    = retrieve_output_units (special_units_descriptor);

  char *extension = "";
  if (self->conf->EXTENSION)
    extension = self->conf->EXTENSION;

  for (i = 0; i < special_units->number; i++)
    {
      TARGET_FILENAME *target_filename;
      char *default_filename = 0;
      char *filename = 0;
      OUTPUT_UNIT *special_unit = special_units->list[i];
      char *special_unit_variety = special_unit->special_unit_variety;

      /* FIXME not to be freed separately from self->special_unit_info */
      char *target = special_unit_info (self, SUI_type_target,
                                        special_unit_variety);

      if (!target)
        continue;

      if (((self->conf->SPLIT && strlen (self->conf->SPLIT))
           || self->conf->MONOLITHIC <= 0)
    /* in general document_name not defined means called through convert */
          && document_name)
        {
          TEXT text_name;
          char *special_unit_file_string
            = special_unit_info (self, SUI_type_file_string,
                                 special_unit_variety);
          text_init (&text_name);
          if (!special_unit_file_string)
            special_unit_file_string = "";
          text_append (&text_name, document_name);
          text_append (&text_name, special_unit_file_string);
          if (extension && strlen (extension))
            {
              text_append (&text_name, ".");
              text_append (&text_name, extension);
            }
          default_filename = text_name.text;
        }
      target_filename = call_file_id_setting_special_unit_target_file_name (
                               self, special_unit, target, default_filename);
      if (target_filename)
        {
          if (target_filename->target)
            /* FIXME to be freed, contrary to obtained from special_unit_info */
            target = target_filename->target;
          if (target_filename->filename)
            {
              filename = target_filename->filename;
              free (default_filename);
            }
          else
            filename = default_filename;

          free (target_filename);
        }
      else
        filename = default_filename;

      if (self->conf->DEBUG > 0)
        {
          char *fileout = filename;
          if (!fileout)
            fileout = "UNDEF";
          fprintf (stderr, "Add special %s: target %s,\n    filename %s\n",
                            special_unit_variety, target, fileout);
        }

      HTML_TARGET *element_target
        = add_element_target (self, special_unit->unit_command, target);
      element_target->special_unit_filename = filename;
      add_string (target, self->seen_ids);
    }
}

static char *
normalized_to_id (char *id)
{
  if (isascii_digit (id[0]) || id[0] == '_')
    {
      char *result;
      xasprintf (&result, "%s%s", "g_t", id);
      return result;
    }
  return strdup (id);
}

static TARGET_FILENAME *
normalized_label_id_file (CONVERTER *self, char *normalized,
                          ELEMENT* label_element)
{
  char *target;
  char *target_customized;
  TARGET_FILENAME *target_filename
    = (TARGET_FILENAME *) malloc (sizeof (TARGET_FILENAME));

  int normalized_need_to_be_freed = 0;
  if (!normalized)
    {
      normalized = convert_contents_to_identifier (label_element);
      normalized_need_to_be_freed = 1;
    }

  if (normalized)
    target = normalized_to_id (normalized);
  else
    target = strdup ("");

  /* to find out the Top node, one could check $normalized */
  target_customized = call_file_id_setting_label_target_name (self,
                                  normalized, label_element, target);

  if (target_customized)
    {
      free (target);
      target = target_customized;
    }

  if (normalized_need_to_be_freed)
    free (normalized);

  target_filename->target = target;
  target_filename->filename = node_information_filename (self, normalized,
                                                         label_element);

  return target_filename;
}

char *
unique_target (CONVERTER *self, char *target_base)
{
  int nr = 1;
  char *target = strdup (target_base);
  while (1)
    {
      int j;
      int non_unique = 0;
      for (j = 0; j < self->seen_ids->number; j++)
        {
          if (!strcmp (target, self->seen_ids->list[j]))
            {
              non_unique = 1;
              break;
            }
        }
      if (non_unique)
        {
          free (target);
          xasprintf (&target, "%s-%d", target_base, nr);
          nr++;
          if (nr == 0)
            fatal ("overflow");
        }
      else
        return target;
    }
}

static void
new_sectioning_command_target (CONVERTER *self, ELEMENT *command)
{
  char *normalized_name;
  char *filename;
  char *target_base;
  char *target;
  char *target_contents = 0;
  char *target_shortcontents = 0;
  TARGET_CONTENTS_FILENAME *target_contents_filename;

  TARGET_FILENAME *target_filename
    = normalized_sectioning_command_filename (self, command);

  normalized_name = target_filename->target;
  filename = target_filename->filename;

  free (target_filename);

  target_base = normalized_to_id (normalized_name);

  if (!strlen (target_base) && command->cmd == CM_top)
    {
      /* @top is allowed to be empty.  In that case it gets this target name */
      free (target_base);
      target_base = strdup ("SEC_Top");
    }

  if (strlen (target_base))
    target = unique_target (self, target_base);
  else
    target = strdup ("");

  free (target_base);

  if (strlen (target)
      && (builtin_command_flags(command) & CF_sectioning_heading))
    {
      char *target_base_contents;
      char *target_base_shortcontents;
      xasprintf (&target_base_contents, "toc-%s", normalized_name);
      target_contents = unique_target (self, target_base_contents);
      free (target_base_contents);

      xasprintf (&target_base_shortcontents, "stoc-%s", normalized_name);
      target_shortcontents = unique_target (self, target_base_shortcontents);
      free (target_base_shortcontents);
    }

  free (normalized_name);

  target_contents_filename
    = call_file_id_setting_sectioning_command_target_name (self, command,
                  target, target_contents, target_shortcontents, filename);
  if (target_contents_filename)
    {
      free (target);
      target = target_contents_filename->target;
      free (filename);
      filename = target_contents_filename->filename;
      free (target_contents);
      target_contents = target_contents_filename->target_contents;
      free (target_shortcontents);
      target_shortcontents = target_contents_filename->target_shortcontents;

      free (target_contents_filename);
    }

  if (self->conf->DEBUG > 0)
    {
      char *command_name = element_command_name (command);
      fprintf (stderr, "Register %s %s\n", command_name, target);
    }

  HTML_TARGET *element_target
    = add_element_target (self, command, target);
  element_target->section_filename = filename;
  add_string (target, self->seen_ids);

  if (target_contents)
    element_target->contents_target = target_contents;
  else
    element_target->contents_target = strdup ("");

  if (target_shortcontents)
    element_target->shortcontents_target = target_shortcontents;
  else
    element_target->shortcontents_target = strdup ("");
}

/*
 This set with two different codes
  * the target information, id and normalized filename of 'identifiers_target',
    ie everything that may be the target of a ref, @node, @float label,
    @anchor.
  * The target information of sectioning elements
 @node and section commands targets are therefore both set.

 conversion to HTML is done on-demand, upon call to command_text
 and similar functions.
 Note that 'node_filename', which is set here for Top target information
 too, is not used later for Top anchors or links, see the NOTE below
 associated with setting TOP_NODE_FILE_TARGET.
 */
void
set_root_commands_targets_node_files (CONVERTER *self)
{

  if (self->document->identifiers_target)
    {
      char *extension = "";

      if (self->conf->EXTENSION)
        extension = self->conf->EXTENSION;
      LABEL_LIST *label_targets = self->document->identifiers_target;
      int i;
      for (i = 0; i < label_targets->number; i++)
        {
          char *target;
          char *node_filename;
          char *user_node_filename;
          LABEL *label = &label_targets->list[i];
          ELEMENT *target_element = label->element;
          ELEMENT *label_element = get_label_element (target_element);

          TARGET_FILENAME *target_filename =
           normalized_label_id_file (self, label->identifier, label_element);
          target = target_filename->target;
          xasprintf (&node_filename, "%s%s", target_filename->filename, extension);

          free (target_filename->filename);
          free (target_filename);

          /* a non defined filename is ok if called with convert, but not
             if output in files.  We reset if undef, silently unless verbose
             in case called by convert. */

          user_node_filename = call_file_id_setting_node_file_name (self,
                                               target_element, node_filename);
          if (user_node_filename)
            {
              free (node_filename);
              node_filename = user_node_filename;
            }
          else if (self->conf->VERBOSE > 0)
            {
              message_list_document_warn (self->error_messages, self->conf,
                             "user-defined node file name not set for `%s'",
                             node_filename);
            }
          else if (self->conf->DEBUG > 0)
            {
              fprintf (stderr, "user-defined node file name undef for `%s'\n",
                       node_filename);
            }

          if (self->conf->DEBUG > 0)
            {
              char *command_name = element_command_name (target_element);
              fprintf (stderr, "Label @%s %s, %s\n", command_name, target,
                               node_filename);
            }

          HTML_TARGET *element_target
            = add_element_target (self, target_element, target);
          element_target->node_filename = node_filename;
          add_string (target, self->seen_ids);
        }
    }

  if (self->document->sections_list)
    {
      ELEMENT *sections_list = self->document->sections_list;
      int i;
      for (i = 0; i < sections_list->contents.number; i++)
        {
          ELEMENT *root_element = sections_list->contents.list[i];
          new_sectioning_command_target (self, root_element);
        }
    }
}

void
sort_index_entries (CONVERTER *self)
{
  if (self->document->index_names)
    {
      INDEX **index_names = self->document->index_names;
      MERGED_INDEX **merged_index_entries = merge_indices (index_names);
      self->index_entries = merged_index_entries;
    }
}

void
prepare_index_entries_targets (CONVERTER *self)
{
  if (self->document->index_names)
    {
      INDEX **i, *idx;
      INDEX **index_names = self->document->index_names;

      for (i = index_names; (idx = *i); i++)
        {
          if (idx->index_number > 0)
            {
              int j;
              for (j = 0; j < idx->index_number; j++)
                {
                  INDEX_ENTRY *index_entry;
                  ELEMENT *main_entry_element;
                  ELEMENT *seeentry;
                  ELEMENT *seealso;
                  ELEMENT *entry_reference_content_element;
                  ELEMENT *normalize_index_element;
                  ELEMENT *subentries_tree;
                  ELEMENT *trimmed_element;
                  ELEMENT *target_element;
                  TEXT target_base;
                  char *normalized_index = "";
                  char *region = 0;
                  char *target;

                  index_entry = &idx->index_entries[j];
                  main_entry_element = index_entry->entry_element;
                  seeentry = lookup_extra_element (main_entry_element, "seeentry");
                  if (seeentry)
                    continue;
                  seealso = lookup_extra_element (main_entry_element, "seealso");
                  if (seealso)
                    continue;

                  region = lookup_extra_string (main_entry_element,
                                                "element_region");
                  entry_reference_content_element
                   = index_content_element (main_entry_element, 1);
        /* construct element to convert to a normalized identifier to use as
           hrefs target */
                  normalize_index_element = new_element (ET_NONE);
                  add_to_element_contents (normalize_index_element,
                                           entry_reference_content_element);

                  subentries_tree
                   = comma_index_subentries_tree (main_entry_element, " ");
                  if (subentries_tree)
                    {
                      insert_slice_into_contents (normalize_index_element,
                                        normalize_index_element->contents.number,
                                        subentries_tree, 0,
                                        subentries_tree->contents.number);
                    }

                  trimmed_element = trim_spaces_comment_from_content
                                                (normalize_index_element);
                  destroy_element (normalize_index_element);
                  if (trimmed_element)
                    {
                      normalized_index
                       = normalize_transliterate_texinfo (trimmed_element);
                      destroy_element (trimmed_element);
                    }
                  if (subentries_tree)
                    free_comma_index_subentries_tree (subentries_tree);

                  text_init (&target_base);
                  text_append (&target_base, "index-");
                  if (region)
                    {
                      text_append (&target_base, region);
                      text_append (&target_base, "-");
                    }
                  text_append (&target_base, normalized_index);
                  target = unique_target (self, target_base.text);
                  free (target_base.text);
                  if (index_entry->entry_associated_element)
                    target_element = index_entry->entry_associated_element;
                  else
                    target_element = main_entry_element;

                  add_element_target (self, target_element, target);
                  add_string (target, self->seen_ids);
                }
            }
        }
    }
}

static const char *footid_base = "FOOT";
static const char *docid_base = "DOCF";

static void
prepare_footnotes_targets (CONVERTER *self)
{
  ELEMENT *global_footnotes = &self->document->global_commands->footnotes;
  if (global_footnotes->contents.number > 0)
    {
      int i;
      for (i = 0; i < global_footnotes->contents.number; i++)
        {
          ELEMENT *footnote = global_footnotes->contents.list[i];
          TEXT footid;
          TEXT docid;
          int nr = i;

          text_init (&footid);
          text_init (&docid);
          text_printf (&footid, "%s%d", footid_base, nr);
          text_printf (&docid, "%s%d", docid_base, nr);

          while (1)
            {
              int j;
              int non_unique = 0;
              for (j = 0; j < self->seen_ids->number; j++)
                {
                  if (!strcmp (footid.text, self->seen_ids->list[j])
                      || !strcmp (docid.text, self->seen_ids->list[j]))
                    {
                      non_unique = 1;
                      break;
                    }
                }
              if (non_unique)
                {
                  nr++;
                  if (nr == 0)
                    fatal ("overflow footnote target nr");

                  text_init (&footid);
                  text_init (&docid);
                  text_printf (&footid, "%s%d", footid_base, nr);
                  text_printf (&docid, "%s%d", docid_base, nr);
                }
              else
                break;
            }
          add_string (footid.text, self->seen_ids);
          add_string (docid.text, self->seen_ids);
          add_element_target (self, footnote, footid.text);
          add_special_target (self, ST_footnote_location, footnote,
                              docid.text);

          if (self->conf->DEBUG > 0)
            {
              fprintf (stderr, "Enter footnote: target %s, nr %d\n%s\n",
                       footid.text, i, convert_to_texinfo (footnote));
            }
        }
    }
}

/* for conversion units except for associated special units that require
   files for document units to be set */
void
html_prepare_conversion_units_targets (CONVERTER *self,
                                       const char *document_name,
                                       int output_units_descriptor,
                                       int special_units_descriptor)
{
  /*
   Do that before the other elements, to be sure that special page ids
   are registered before elements id are.
   */
  set_special_units_targets_files (self, special_units_descriptor,
                                   document_name);

  set_root_commands_targets_node_files (self);

  prepare_index_entries_targets (self);
  prepare_footnotes_targets (self);

  /* setup untranslated strings */
  translate_names (self);
}
