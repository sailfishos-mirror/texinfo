/* uN_make_key_streaming.inc - set BITS, then include this file. */
/* Define fast partial implementation of collation key. */

#ifndef BITS
#error "bits per character unit not defined in generic file"
#endif

#define xxconcat(a, b) a ## b
#define xconcat(a, b) xxconcat(a, b)
#define concat(a, b) xconcat(a, b)

#define xxconcat3(a, b, c) a ## b ## c
#define xconcat3(a, b, c) xxconcat3(a, b, c)
#define concat3(a, b, c) xconcat3(a, b, c)

/* e.g. u8_make_key_streaming if BITS=8 */
#define UNIT concat3(uint, BITS, _t)
#define NAME concat3(u, BITS, _make_key_streaming)

#define uN_mbsnlen concat3(u, BITS, _mbsnlen)
#define uN_mbtouc concat3(u, BITS, _mbtouc)

#define ONECHAR concat(NAME, _onechar)
#define STREAM_DATA concat(NAME, _stream_data)

struct STREAM_DATA {
  char *resultbuf;
  int len;
  int len1;
  int len2;
  int len3;
  int max_len;
};

/* Stream normalization.   The idea is to save space in the collation
   data, as we also have normalization tables in this library.
   The problem is that we don't know exactly how many characters will
   result from normalization.
   So we will have two jobs to make this work:
     * Keep track of how many collation units we have written and if
       there is space for any more.
     * If finished, memcpy secondary, tertiary levels to the left so
       there is the right number of separating \x01 bytes between them.
*/
static int
ONECHAR (void *stream_data_in, char32_t codepoint)
{
  struct STREAM_DATA *state = stream_data_in;
  const struct collation_unit *data;
  size_t n_units;
  size_t n_consumed;

  if (state->len == state->max_len)
    {
      errno = EINVAL;
      return -1;
    }

  lookup_collation_data_at_char (NULL, &codepoint, 1,
                                 1, /* disable_sequences */
                                 &n_consumed,
                                 &data, &n_units);
  if (n_units != 1 || n_consumed != 1)
    {
      errno = EINVAL;
      return -1;
    }
  /* TODO: we could output more than one collation element if n_units > 1 */

  uint16_t primary = data[0].primary;
  uint8_t secondary = data[0].secondary;
  uint8_t tertiary = data[0].tertiary;

  if (state->len == state->max_len)
    {
      errno = EINVAL;
      return -1;
    }
  state->len++;

  if (primary)
    {
      state->resultbuf[state->len1 * 2]     = (primary / 0xFF) + 1;
      state->resultbuf[state->len1 * 2 + 1] = (primary % 0xFF) + 1;
      state->len1++;
    }

  if (secondary)
    state->resultbuf[state->max_len * 2 + 2 + state->len2++] = secondary + 1;
  if (tertiary)
    state->resultbuf[state->max_len * 3 + 3 + state->len3++] = tertiary + 1;

  return 0;
}

/* uN_make_key_streaming:
   Limited version of make_key_internal which avoids allocating a separate
   array for the codepoint collation data.  Instead, output all collation levels
   at the same time for a single codepoint.  If we hit any contractions or
   expansions, we bail out. */
static char *
NAME (Collation_choice collation,
      const UNIT *string, size_t n, char *resultbuf, size_t *lengthp)
{
  if ((collation
         & (UNICOLL_LEVEL1_BIT | UNICOLL_LEVEL2_BIT | UNICOLL_LEVEL3_BIT))
           != 0
      || (collation & UNICOLL_VARIABLE_MASK) != UNICOLL_VARIABLE_NONIGNORABLE)
    {
      /* Only use if all of primary/secondary/tertiary levels are enabled
         and the Variable setting is "Non-Ignorable". */
      return NULL;
    }

  if (!resultbuf)
    return NULL;

  char32_t next_codepoint;
  static struct uninorm_filter *filter = NULL;
  struct STREAM_DATA stream_data = { 0 };
  stream_data.resultbuf = resultbuf;

  /* Calculate the maxiumum number of collation elements we can output
     inside the output buffer.
     Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary, one byte at secondary, one byte
     at tertiary.  "\x01\x01" between primary and secondary level
     and "\x01" between secondary and tertiary level, and one terminating
     null.
     Not all of these bytes are used if there are null weights. */
  stream_data.max_len = (*lengthp - 4) / 4;

  const UNIT *pstring = string;
  size_t remaining = uN_mbsnlen (string, n);

  /* Reduce the bound on the maximum length (with a random margin of safety).
     This could improve data locality if resultbuf is very big. */
  int needed_max_len = remaining + 2;
  if (stream_data.max_len > needed_max_len)
    stream_data.max_len = needed_max_len;

  if (!filter)
    filter = uninorm_filter_create (UNINORM_NFD, &ONECHAR, &stream_data);

  while (remaining)
    {
      size_t n_consumed = uN_mbtouc (&next_codepoint, pstring, remaining);
      if (next_codepoint == 0xfffd)
        return NULL;

      if (uninorm_filter_write (filter, next_codepoint) == -1)
        return NULL;
      pstring += n_consumed;
      remaining -= n_consumed;
    }
  if (uninorm_filter_flush (filter) == -1)
    return NULL;

  const int len1 = stream_data.len1;
  const int len2 = stream_data.len2;
  const int len3 = stream_data.len3;
  const int max_len = stream_data.max_len;

  /* Shift oytput for secondary and tertiary levels to the correct
     positions. */
  memcpy(&resultbuf[len1 * 2 + 2], &resultbuf[max_len * 2 + 2], len2);
  memcpy(&resultbuf[len1 * 2 + len2 + 3], &resultbuf[max_len * 3 + 3], len3);

  /* Primary level terminator. */
  resultbuf[len1 * 2 + 0] = '\x01';
  resultbuf[len1 * 2 + 1] = '\x01';

  /* Secondary level terminator */
  resultbuf[len1 * 2 + len2 + 2] = '\x01';

  /* Tertiary level terminator and end of string */
  resultbuf[len1 * 2 + len2 + len3 + 3] = '\x00';

  *lengthp = len1 * 2 + len2 + len3 + 4;
  return resultbuf;
}

