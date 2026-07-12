#include <config.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>
#include <setjmp.h>

#include "unistr.h"
#include "uninorm.h"

#include "collation_data_lookup.h"
#include "collation_key.h"

Collation_choice unicoll_default (void)
{
  return (Collation_choice) UNICOLL_VARIABLE_NONIGNORABLE;
}

Collation_choice unicoll_set_variable (Collation_choice collation,
                                       int variable)
{
  if (variable != UNICOLL_VARIABLE_NONIGNORABLE
      && variable != UNICOLL_VARIABLE_SHIFTED
      && variable != UNICOLL_VARIABLE_BLANKED)
    {
      errno = EINVAL;
      return collation;
    }
  return (Collation_choice) (collation & ~UNICOLL_VARIABLE_MASK) | variable;
}

/* Set bit to disable output of a collation level. */
Collation_choice unicoll_disable_level (Collation_choice collation, int level)
{
  switch (level)
  {
    case 1:
      return (collation | UNICOLL_LEVEL1_BIT);
    case 2:
      return (collation | UNICOLL_LEVEL2_BIT);
    case 3:
      return (collation | UNICOLL_LEVEL3_BIT);
    case 4:
      return (collation | UNICOLL_LEVEL4_BIT);
    default:
      errno = EINVAL;
      return collation;
  }
}

/* Clear bit to enable output of a collation level. */
Collation_choice unicoll_enable_level (Collation_choice collation, int level)
{
  switch (level)
  {
    case 1:
      return (collation & ~UNICOLL_LEVEL1_BIT);
    case 2:
      return (collation & ~UNICOLL_LEVEL2_BIT);
    case 3:
      return (collation & ~UNICOLL_LEVEL3_BIT);
    case 4:
      return (collation & ~UNICOLL_LEVEL4_BIT);
    default:
      errno = EINVAL;
      return collation;
  }
}


Collation_choice unicoll_set_normalization (Collation_choice collation,
                                            int normalization_on)
{
  /* Set bit to disable normalization. */
  if (normalization_on)
    return (collation & ~UNICOLL_NORMALIZATION_MASK);
  else
    return (collation | UNICOLL_NORMALIZATION_MASK);
}

/* If CONTRACTIONS_ON is 0, disable use of contractions, i.e. sequence
   lookup. */
Collation_choice unicoll_set_contractions (Collation_choice collation,
                                            int contractions_on)
{
  if (contractions_on)
    return (collation & ~UNICOLL_CONTRACTIONS_MASK);
  else
    return (collation | UNICOLL_CONTRACTIONS_MASK);
}

/* If PARTIAL_KEY_ENABLED is non-zero, u*_make_collation_key does not
   re-allocate RESULTBUF and will return a partial key (null-terminated)
   if the full result would be longer than *LENGTHP bytes. */
Collation_choice unicoll_enable_partial (Collation_choice collation,
                                         int partial_key_enabled)
{
  if (!partial_key_enabled)
    return (collation & ~UNICOLL_PARTIAL_MASK);
  else
    return (collation | UNICOLL_PARTIAL_MASK);
}

#define BITS 32
#define UNIT uint32_t
#include "uN_make_key_streaming.inc"
#undef BITS
#undef UNIT

#define BITS 8
#define UNIT uint8_t
#include "uN_make_key_streaming.inc"
#undef BITS
#undef UNIT

static char *
make_key_internal (char *psort_key,
                   struct collation_unit *elements, size_t elements_count,
                   int variable_shifted_or_blanked, int variable_shifted,
                   int primaryp, int secondaryp, int tertiaryp,
                   jmp_buf bug_jmp,
                   char *limit)
{
  int last_was_variable;

#define cat(c) { \
  if (psort_key == limit) return psort_key; \
  else *psort_key++ = (c); \
}
  /* Note that we do not call malloc in this function so no clean-up
     is required at function exit. */

  /* Output collation key without any null bytes.
     See UTS#10 s.9.4 "Avoiding Zero Bytes". */

  if (primaryp)
    {
      for (size_t i = 0; i < elements_count; i++)
        {
          uint16_t weight = elements[i].primary;

          if (variable_shifted_or_blanked
              && collation_element_is_variable (&elements[i]))
            {
              /* Skip at primary level. */
              continue;
            }

          if (weight)
            {
              if (weight > 0xFE00)
                {
                  /* bug: primary weight too high */
                  errno = EINVAL;
                  longjmp (bug_jmp, 1);
                }
              cat ((weight / 0xFF) + 1);
              cat ((weight % 0xFF) + 1);
            }
        }

      if (secondaryp || tertiaryp || variable_shifted)
        {
          cat ('\x01');
          cat ('\x01');
        }
    }

  if (secondaryp)
    {
      last_was_variable = 0;
      for (size_t i = 0; i < elements_count; i++)
        {
          if (variable_shifted_or_blanked
              && collation_element_is_variable (&elements[i]))
            {
              /* Skip at secondary level. */
              last_was_variable = 1;
              continue;
            }

          if (last_was_variable)
            {
              /* Ignore completely - e.g. combining grave following a space. */
              if (!elements[i].primary && elements[i].tertiary)
                continue;

              /* This could be a continuation element for a high secondary
                 weight. */
              if (!elements[i].primary && elements[i].secondary)
                continue;
            }
          uint16_t weight = elements[i].secondary;

          if (weight)
            {
              if (weight == 0xFF)
                {
                  /* bug: secondary weight too high */
                  errno = EINVAL;
                  longjmp (bug_jmp, 1);
                }
              cat (weight + 1);
            }
          last_was_variable = 0;
        }

      /* As we only use a single byte per unit at secondary level,
         a single byte suffices as a level separator. */
      if (tertiaryp || variable_shifted)
        cat ('\x01');
    }

  if (tertiaryp)
    {
      last_was_variable = 0;
      for (size_t i = 0; i < elements_count; i++)
        {
          if (variable_shifted_or_blanked
              && collation_element_is_variable (&elements[i]))
            {
              /* Skip at tertiary level. */
              last_was_variable = 1;
              continue;
            }

          if (last_was_variable)
            {
              /* Ignore completely - e.g. combining grave following a space. */
              if (!elements[i].primary && elements[i].tertiary)
                continue;

              /* This could be a continuation element for a high secondary
                 weight. */
              if (!elements[i].primary && elements[i].secondary)
                continue;
            }

          uint8_t weight = elements[i].tertiary;
          if (weight)
            {
              if (weight == 0xFF)
                {
                  /* bug: tertiary weight too high */
                  errno = EINVAL;
                  longjmp (bug_jmp, 1);
                }
              cat (weight + 1);
            }
        }
      /* As we only use a single byte per unit at tertiary level,
         a single byte suffices as a level separator. */
      if (variable_shifted)
        cat ('\x01');
    }

  if (variable_shifted)
    {
      /* See UTS #10 c.4 "Variable Weighting". */

      last_was_variable = 0;
      for (size_t i = 0; i < elements_count; i++)
        {
          int variable_element = collation_element_is_variable (&elements[i]);
          if (!elements[i].primary && !elements[i].secondary
              && !elements[i].tertiary)
            {
              /* Completely ignorable element. */
              continue;
            }
          else if (!elements[i].primary
                   && (elements[i].secondary || elements[i].tertiary)
                   && last_was_variable)
            {
              /* E.g. combining grave following a space.  Ignore. */
              continue;
            }
          else if (variable_element)
            {
              uint16_t weight = elements[i].primary;
              if (weight > 0xFE00)
                {
                  /* bug: shifted primary weight too high */
                  errno = EINVAL;
                  longjmp (bug_jmp, 1);
                }
              cat ((weight / 0xFF) + 1);
              cat ((weight % 0xFF) + 1);
            }
          else if (!elements[i].primary
                   && (elements[i].secondary || elements[i].tertiary)
                   && !last_was_variable)
            {
              /* This needs to be greater than any shifted weights. */
              cat (0xFF);
              cat (0xFF);
            }
          else if (elements[i].primary && !variable_element)
            {
              /* This needs to be greater than any shifted weights. */
              cat (0xFF);
              cat (0xFF);
            }
          last_was_variable = variable_element;
        }
    }
  return psort_key;
#undef cat
}

static char *u32_make_collation_key_internal (Collation_choice collation,
                        const char32_t *codepoints_in, size_t length_in,
                        char *resultbuf, size_t *lengthp);

char *
u32_make_collation_key (Collation_choice collation,
                        const char32_t *codepoints_in, size_t length_in,
                        char *resultbuf, size_t *lengthp)
{
  if (u32_make_key_streaming (codepoints_in, length_in, resultbuf, lengthp))
    return resultbuf;

  return u32_make_collation_key_internal (collation,
                        codepoints_in, length_in, resultbuf, lengthp);
}

static char *
u32_make_collation_key_internal (Collation_choice collation,
                        const char32_t *codepoints_in, size_t length_in,
                        char *resultbuf, size_t *lengthp)
{

  char *sort_key;
  int variable = (collation & UNICOLL_VARIABLE_MASK);

  if (variable != UNICOLL_VARIABLE_NONIGNORABLE
      && variable != UNICOLL_VARIABLE_SHIFTED
      && variable != UNICOLL_VARIABLE_BLANKED)
    {
      errno = EINVAL;
      return 0;
    }

  int variable_shifted = (variable == UNICOLL_VARIABLE_SHIFTED);
  int variable_shifted_or_blanked = (variable == UNICOLL_VARIABLE_SHIFTED
                                  || variable == UNICOLL_VARIABLE_BLANKED);

  int disable_sequence_lookup = (collation & UNICOLL_CONTRACTIONS_MASK);

  int fix_length = 0;

  char32_t *codepoints = NULL;
  const char32_t *codepoints_const = NULL;
  const char32_t *pcodepoints;
  size_t length;

  if (!(collation & UNICOLL_NORMALIZATION_MASK))
    {
      codepoints =
        u32_normalize (UNINORM_NFD, codepoints_in, length_in, NULL, &length);
      pcodepoints = codepoints;
    }
  else
    {
      codepoints_const = codepoints_in;
      length = length_in;
      pcodepoints = codepoints_const;
    }

  /* get array of collation entries */
  struct collation_info
  {
    size_t string_index;
    const struct collation_unit *array;
    size_t num_elements;
  };

  /* Maximum one collation_info per character.  Less if there are
     multi-character sequences.  */
  struct collation_info *entry_array
    = malloc (sizeof (*entry_array) * length);
  if (!entry_array)
    {
      errno = ENOMEM;
      sort_key = 0;
      goto cleanup;
    }

  size_t n_entries = 0;

  for (size_t i = 0; i < length;)
    {
      size_t n_consumed;
      const struct collation_unit *data_array;
      size_t data_num_elements;

      lookup_collation_data_at_char (codepoints ? &codepoints[i] : 0,
                                     codepoints_const ? &codepoints_const[i] : 0,
                                     length - i,
                                     disable_sequence_lookup,
                                     &n_consumed,
                                     &data_array,
                                     &data_num_elements);
      if (n_consumed > 0)
        {
          entry_array[n_entries].array = data_array;
          entry_array[n_entries].num_elements = data_num_elements;
          entry_array[n_entries++].string_index = i;
          i += n_consumed;
        }
      else
        {
          entry_array[n_entries].array = 0;
          entry_array[n_entries].num_elements = 0;
          entry_array[n_entries++].string_index = i;
          i++;
        }
    }

  int num_elements = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (entry_array[i].array)
        num_elements += entry_array[i].num_elements;
      else
        num_elements += 3;      /* implicitly determined weights? */
    }

  struct collation_unit *elements = calloc (num_elements, sizeof (*elements));
  if (!elements)
    {
      errno = ENOMEM;
      sort_key = 0;
      goto cleanup;
    }
  size_t elements_count = 0;
  for (size_t i = 0; i < n_entries; i++)
    {
      if (entry_array[i].array)
        {
          size_t num_entry_elements = entry_array[i].num_elements;
          memcpy (&elements[elements_count],
                  entry_array[i].array,
                  num_entry_elements * sizeof (struct collation_unit));
          elements_count += num_entry_elements;
        }
      else
        {
          size_t num_entry_elements;
          get_implicit_weight
            (pcodepoints[entry_array[i].string_index],
             &elements[elements_count], &num_entry_elements);
          elements_count += num_entry_elements;

        }
    }
  free (entry_array);

  char *psort_key;
  size_t sort_key_alloc;

  int primaryp, secondaryp, tertiaryp, quaternaryp;
  primaryp = !(collation & UNICOLL_LEVEL1_BIT);
  secondaryp = !(collation & UNICOLL_LEVEL2_BIT);
  tertiaryp = !(collation & UNICOLL_LEVEL3_BIT);
  quaternaryp = !(collation & UNICOLL_LEVEL4_BIT);

  if (!quaternaryp)
    variable_shifted = 0;

  sort_key_alloc = 0;
  if (primaryp)
    {
      /* Two bytes per collation element plus "\x01\x01" separator. */
      sort_key_alloc += num_elements * 2;
      if (secondaryp || tertiaryp || variable_shifted)
        sort_key_alloc += 2;
    }
  if (secondaryp)
    {
      /* One byte per collation element plus "\x01" separator. */
      sort_key_alloc += num_elements * 1;
      if (tertiaryp || variable_shifted)
        sort_key_alloc += 1;
    }
  if (tertiaryp)
    {
      /* One byte per collation element plus "\x01" separator. */
      sort_key_alloc += num_elements * 1;
      if (variable_shifted)
        sort_key_alloc += 1;
    }
  if (variable_shifted)
    {
      /* Two bytes per collation element. */
      sort_key_alloc += num_elements * 2;
    }

  /* Terminating null. */
  sort_key_alloc++;

  if (resultbuf && sort_key_alloc < *lengthp)
    sort_key = resultbuf;
  else
    {
      int partial_key_enabled = (collation & UNICOLL_PARTIAL_MASK);
      if (!partial_key_enabled)
        {
          sort_key = malloc (sort_key_alloc);
          if (!sort_key)
            {
              errno = ENOMEM;
              goto cleanup;
            }
        }
      else
        {
          sort_key = resultbuf;
          fix_length = 1;
        }
    }

  psort_key = sort_key;
  jmp_buf bug_jmp; 
  if (!setjmp (bug_jmp))
    {
      psort_key = make_key_internal (psort_key, elements, elements_count,
                                     variable_shifted_or_blanked, variable_shifted,
                                     primaryp, secondaryp, tertiaryp,
                                     bug_jmp,
                                     fix_length ? &sort_key[*lengthp] : NULL);

      *psort_key = '\0';
      *lengthp = psort_key - sort_key + 1;
    }
  else
    {
      /* a bug was detected in the library */
      sort_key = 0;
    }

 cleanup:
  free (elements);
  free (codepoints);

  return sort_key;
}

char *
u8_make_collation_key (Collation_choice collation,
                   const uint8_t *u8_str, size_t length_in,
                   char *resultbuf, size_t *lengthp)
{
  static char32_t *u32_str;
  static size_t u32_len;

  static char32_t *ret;

  if (u8_make_key_streaming (u8_str, length_in, resultbuf, lengthp))
    {
      /* u8_make_key_streaming returns resultbuf or null. */
      return resultbuf;
    }

  ret = u8_to_u32 (u8_str, length_in, u32_str, &u32_len);
  if (ret != u32_str)
    {
      free (u32_str);
      u32_str = ret;
    }

  char *key = u32_make_collation_key_internal (collation, u32_str, u32_len,
                                               resultbuf, lengthp);
  return key;
}
