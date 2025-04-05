/* Copyright 2024-2025 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>. */

#include <config.h>

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "tree_types.h"

#include "hashmap.h"

typedef struct BUCKET {
  /* Linked list of strings. */
  char *string;
  const void *value;
  struct BUCKET *next;
} BUCKET;

/* Allocator for bucket object. */
#define BUCKETS_PER_ARENA 64

typedef struct BUCKET_ARENA {
  BUCKET buckets[BUCKETS_PER_ARENA];
  int used;
  struct BUCKET_ARENA *next;
} BUCKET_ARENA;

typedef struct BUCKET_ARENA_ITERATOR {
  int index;
  BUCKET_ARENA *arena;
} BUCKET_ARENA_ITERATOR;

static BUCKET *
new_bucket (C_HASHMAP *H)
{
  if (H->arena->used < BUCKETS_PER_ARENA)
    return &H->arena->buckets[H->arena->used++];

  BUCKET_ARENA *new_arena = malloc (sizeof (BUCKET_ARENA));
  memset (new_arena, 0, sizeof (BUCKET_ARENA));

  /* Add to front of list. */
  new_arena->next = H->arena;
  H->arena = new_arena;

  return &H->arena->buckets[H->arena->used++];
}


static unsigned long
hash_string (const char *string, const C_HASHMAP *H)
{
  unsigned int hash = 0;

  char c;
  const char *pc = string;

  while ((c = *pc))
    {
      hash *= 127; /* prime */
      hash += c;
      pc++;
    }

  hash %= H->num_buckets;
  return hash;
}

#define NBUCKETS 256
void
init_c_hashmap (C_HASHMAP *H, size_t nbuckets)
{
  memset (H, 0, sizeof (C_HASHMAP));

  H->arena = malloc (sizeof (BUCKET_ARENA));
  memset (H->arena, 0, sizeof (BUCKET_ARENA));

  if (nbuckets == 0)
    nbuckets = NBUCKETS;

  H->num_buckets = nbuckets;
  H->bucket = malloc (sizeof (BUCKET *) * nbuckets);
  memset (H->bucket, 0, sizeof (BUCKET *) * nbuckets);
}

C_HASHMAP *
new_c_hashmap (size_t nbuckets)
{
  C_HASHMAP *H = malloc (sizeof (C_HASHMAP));
  init_c_hashmap (H, nbuckets);

  return H;
}

int
is_c_hashmap_registered (C_HASHMAP *H, const char *in_string)
{
  unsigned int hash = hash_string(in_string, H);
  BUCKET *B = H->bucket[hash];

  while (B)
    {
      if (!strcmp(B->string, in_string))
        return 1;
      B = B->next;
    }

  return 0;
}

const void *
c_hashmap_value (const C_HASHMAP *H, const char *in_string, int *found)
{
  unsigned int hash;
  BUCKET *B;

  if (!H->count)
    {
      *found = 0;
      return 0;
    }

  hash = hash_string(in_string, H);
  B = H->bucket[hash];

  while (B)
    {
      if (!strcmp(B->string, in_string))
        {
          *found = 1;
          return B->value;
        }
      B = B->next;
    }

  *found = 0;
  return 0;
}

void
c_hashmap_register (C_HASHMAP *H, const char *in_string,
                    const void *value)
{
  BUCKET *new = new_bucket(H);
  new->string = strdup (in_string);
  new->value = value;
  unsigned int hash = hash_string(in_string, H);

  /* Add to front of linked list. */
  new->next =  H->bucket[hash];
  H->bucket[hash] = new;

  H->count++;
}

void
clear_c_hashmap (C_HASHMAP *H)
{
  int i;

  if (!H)
    return;

  BUCKET_ARENA *arena, *next;
  /* Free chain. */
  next = H->arena;
  while (next)
    {
      arena = next;
      next = arena->next;

      for (i = 0; i < arena->used; i++)
        {
          free (arena->buckets[i].string);
        }
      free (arena);
    }

  free (H->bucket);
  memset (H, 0, sizeof (C_HASHMAP));
}

size_t
c_hashmap_count (const C_HASHMAP *H)
{
  return H->count;
}

static BUCKET_ARENA_ITERATOR *
new_c_hashmap_iterator (const C_HASHMAP *H)
{
  BUCKET_ARENA_ITERATOR *result = (BUCKET_ARENA_ITERATOR *)
                       malloc (sizeof (BUCKET_ARENA_ITERATOR));
  result->index = 0;
  result->arena = H->arena;
  return result;
}

/* the first time this function is called it should be called with
   (*HASH_ITERATOR) set to NULL.
   The last value is detected by *KEY being NULL.
   The caller does not need to free (*HASH_ITERATOR) if a NULL *KEY
   has been returned.
 */
const void *
c_hashmap_iterator_next_value (const C_HASHMAP *H,
                               BUCKET_ARENA_ITERATOR **hash_iterator,
                               const char **key)
{
  const void *result;
  BUCKET_ARENA_ITERATOR *iterator;

  if (!*hash_iterator)
    {
      if (H && H->arena)
        *hash_iterator = new_c_hashmap_iterator (H);
      else
        {
          *key = 0;
          return 0;
        }
    }
  iterator = *hash_iterator;

  if (iterator->index >= iterator->arena->used)
    {
      if (iterator->arena->next)
        {
          iterator->arena = iterator->arena->next;
          iterator->index = 0;
        }
      else
        {
          *key = 0;
          free (*hash_iterator);
          *hash_iterator = 0;
          return 0;
        }
    }

  result = iterator->arena->buckets[iterator->index].value;
  *key = iterator->arena->buckets[iterator->index].string;
  iterator->index++;

  return result;
}
