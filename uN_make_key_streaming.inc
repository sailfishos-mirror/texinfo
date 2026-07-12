#ifndef BITS
#error "bits per character unit not defined in generic file"
#endif

#ifndef UNIT
#error "character unit type not defined in generic file"
#endif

#define XXNAME(N) u ## N ## _make_key_streaming
#define XNAME(N) XXNAME(N)
#define NAME XNAME(BITS)
/* NB extra level of macro expansion needed for BITS to be expanded. */

#define XXuN_mbsnlen(N) u ## N ## _mbsnlen
#define XuN_mbsnlen(N) XXuN_mbsnlen(N)
#define uN_mbsnlen XuN_mbsnlen(BITS)

#define XXuN_mbtouc(N) u ## N ## _mbtouc
#define XuN_mbtouc(N) XXuN_mbtouc(N)
#define uN_mbtouc XuN_mbtouc(BITS)

/* uN_make_key_streaming:
   Limited version of make_key_internal which avoids allocating a separate
   array for the codepoint collation data.  Instead, output all collation levels
   at the same time for a single codepoint.  If we hit any contractions or
   expansions, we bail out. */
static char *
NAME (const UNIT *string, size_t n, char *resultbuf, size_t *lengthp)
{
  /* Three levels (primary/secondary/tertiary).  Two bytes per
     collation element at primary, one byte at secondary, one byte
     at tertiary.  "\x01\x01" between primary and secondary level
     and "\x01" between secondary and tertiary level, and one terminating
     null.
     Not all of these bytes are used if there are null weights. */
  /* TODO: check which levels are enabled */
  size_t len = uN_mbsnlen (string, n);
  size_t reqd_len = len * 4 + 4;
  if (!resultbuf || reqd_len > *lengthp)
    return NULL;

  const UNIT *pstring = string;
  char32_t codepoint;
  int nbytes;
  int count = 0;

  size_t len_remaining = len;
  /* Iterate over string */
  while (len_remaining > 0)
    {
      const struct collation_unit *data;
      size_t n_units;
      size_t n_consumed;

      n_consumed = uN_mbtouc (&codepoint, pstring, len_remaining);
      if (codepoint == 0xfffd)
        return NULL;
      len_remaining -= n_consumed;
      pstring += n_consumed;
      lookup_collation_data_at_char (NULL, &codepoint, 1,
                                     1, /* disable_sequences */
                                     &n_consumed,
                                     &data, &n_units);
      if (n_units != 1 || n_consumed != 1)
        return NULL; /* abort */

      uint16_t primary = data[0].primary;
      uint8_t secondary = data[0].secondary;
      uint8_t tertiary = data[0].tertiary;

      resultbuf[count * 2] = (primary / 0xFF) + 1;
      resultbuf[count * 2 + 1] = (primary % 0xFF) + 1;

      resultbuf[len * 2 + 2 + count] = secondary;
      resultbuf[len * 3 + 3 + count] = tertiary;

      count++;
    }
  /* Primary level terminator. */
  resultbuf[len * 2 + 0] = '\x01';
  resultbuf[len * 2 + 1] = '\x01';

  /* Secondary level terminator */
  resultbuf[len * 3 + 2] = '\x01';

  /* Tertiary level terminator and end of string */
  resultbuf[len * 4 + 3] = '\x00';

  *lengthp =  reqd_len;

  return resultbuf;
}

#undef NAME
#undef uN_mbsnlen
#undef uN_mbtouc
