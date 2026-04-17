/* ANSI-C code produced by gperf version 3.3 */
/* Command-line: gperf --output-file=C/main/txi_documentlanguage_variants.c -N txi_in_language_variants maintain/documentlanguage/variants.gperf  */
/* Computed positions: -k'1-5,7' */

#if !((' ' == 32) && ('!' == 33) && ('"' == 34) && ('#' == 35) \
      && ('%' == 37) && ('&' == 38) && ('\'' == 39) && ('(' == 40) \
      && (')' == 41) && ('*' == 42) && ('+' == 43) && (',' == 44) \
      && ('-' == 45) && ('.' == 46) && ('/' == 47) && ('0' == 48) \
      && ('1' == 49) && ('2' == 50) && ('3' == 51) && ('4' == 52) \
      && ('5' == 53) && ('6' == 54) && ('7' == 55) && ('8' == 56) \
      && ('9' == 57) && (':' == 58) && (';' == 59) && ('<' == 60) \
      && ('=' == 61) && ('>' == 62) && ('?' == 63) && ('A' == 65) \
      && ('B' == 66) && ('C' == 67) && ('D' == 68) && ('E' == 69) \
      && ('F' == 70) && ('G' == 71) && ('H' == 72) && ('I' == 73) \
      && ('J' == 74) && ('K' == 75) && ('L' == 76) && ('M' == 77) \
      && ('N' == 78) && ('O' == 79) && ('P' == 80) && ('Q' == 81) \
      && ('R' == 82) && ('S' == 83) && ('T' == 84) && ('U' == 85) \
      && ('V' == 86) && ('W' == 87) && ('X' == 88) && ('Y' == 89) \
      && ('Z' == 90) && ('[' == 91) && ('\\' == 92) && (']' == 93) \
      && ('^' == 94) && ('_' == 95) && ('a' == 97) && ('b' == 98) \
      && ('c' == 99) && ('d' == 100) && ('e' == 101) && ('f' == 102) \
      && ('g' == 103) && ('h' == 104) && ('i' == 105) && ('j' == 106) \
      && ('k' == 107) && ('l' == 108) && ('m' == 109) && ('n' == 110) \
      && ('o' == 111) && ('p' == 112) && ('q' == 113) && ('r' == 114) \
      && ('s' == 115) && ('t' == 116) && ('u' == 117) && ('v' == 118) \
      && ('w' == 119) && ('x' == 120) && ('y' == 121) && ('z' == 122) \
      && ('{' == 123) && ('|' == 124) && ('}' == 125) && ('~' == 126))
/* The character set is not based on ISO-646.  */
#error "gperf generated tables don't work with this execution character set. Please report a bug to <bug-gperf@gnu.org>."
#endif

#line 1 "maintain/documentlanguage/variants.gperf"

#include <config.h>
#include <string.h>

#define TOTAL_KEYWORDS 137
#define MIN_WORD_LENGTH 4
#define MAX_WORD_LENGTH 8
#define MIN_HASH_VALUE 21
#define MAX_HASH_VALUE 493
/* maximum key range = 473, duplicates = 0 */

#ifdef __GNUC__
__inline
#else
#ifdef __cplusplus
inline
#endif
#endif
static unsigned int
hash (register const char *str, register size_t len)
{
  static unsigned short asso_values[] =
    {
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494,   0,  20,
       45,  10,  15,  10,   5,   5, 494,   0, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494,   0,  70,  10,
       80,  10,  45,  85,  85,   5, 175,   5,  35,  45,
        5,   0, 150, 494,  25,   0,  75,  20,   0,  50,
      130,  60,  10, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494, 494, 494, 494, 494,
      494, 494, 494, 494, 494, 494
    };
  register unsigned int hval = len;

  switch (hval)
    {
      default:
        hval += asso_values[(unsigned char)str[6]];
#if (defined __cplusplus && (__cplusplus >= 201703L || (__cplusplus >= 201103L && defined __clang__ && __clang_major__ + (__clang_minor__ >= 9) > 3))) || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 202000L && ((defined __GNUC__ && __GNUC__ >= 10) || (defined __clang__ && __clang_major__ >= 9)))
      [[fallthrough]];
#elif (defined __GNUC__ && __GNUC__ >= 7) || (defined __clang__ && __clang_major__ >= 10)
      __attribute__ ((__fallthrough__));
#endif
      /*FALLTHROUGH*/
      case 6:
      case 5:
        hval += asso_values[(unsigned char)str[4]];
#if (defined __cplusplus && (__cplusplus >= 201703L || (__cplusplus >= 201103L && defined __clang__ && __clang_major__ + (__clang_minor__ >= 9) > 3))) || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 202000L && ((defined __GNUC__ && __GNUC__ >= 10) || (defined __clang__ && __clang_major__ >= 9)))
      [[fallthrough]];
#elif (defined __GNUC__ && __GNUC__ >= 7) || (defined __clang__ && __clang_major__ >= 10)
      __attribute__ ((__fallthrough__));
#endif
      /*FALLTHROUGH*/
      case 4:
        hval += asso_values[(unsigned char)str[3]];
#if (defined __cplusplus && (__cplusplus >= 201703L || (__cplusplus >= 201103L && defined __clang__ && __clang_major__ + (__clang_minor__ >= 9) > 3))) || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 202000L && ((defined __GNUC__ && __GNUC__ >= 10) || (defined __clang__ && __clang_major__ >= 9)))
      [[fallthrough]];
#elif (defined __GNUC__ && __GNUC__ >= 7) || (defined __clang__ && __clang_major__ >= 10)
      __attribute__ ((__fallthrough__));
#endif
      /*FALLTHROUGH*/
      case 3:
        hval += asso_values[(unsigned char)str[2]];
#if (defined __cplusplus && (__cplusplus >= 201703L || (__cplusplus >= 201103L && defined __clang__ && __clang_major__ + (__clang_minor__ >= 9) > 3))) || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 202000L && ((defined __GNUC__ && __GNUC__ >= 10) || (defined __clang__ && __clang_major__ >= 9)))
      [[fallthrough]];
#elif (defined __GNUC__ && __GNUC__ >= 7) || (defined __clang__ && __clang_major__ >= 10)
      __attribute__ ((__fallthrough__));
#endif
      /*FALLTHROUGH*/
      case 2:
        hval += asso_values[(unsigned char)str[1]];
#if (defined __cplusplus && (__cplusplus >= 201703L || (__cplusplus >= 201103L && defined __clang__ && __clang_major__ + (__clang_minor__ >= 9) > 3))) || (defined __STDC_VERSION__ && __STDC_VERSION__ >= 202000L && ((defined __GNUC__ && __GNUC__ >= 10) || (defined __clang__ && __clang_major__ >= 9)))
      [[fallthrough]];
#elif (defined __GNUC__ && __GNUC__ >= 7) || (defined __clang__ && __clang_major__ >= 10)
      __attribute__ ((__fallthrough__));
#endif
      /*FALLTHROUGH*/
      case 1:
        hval += asso_values[(unsigned char)str[0]];
        break;
    }
  return hval;
}

const char *
txi_in_language_variants (register const char *str, register size_t len)
{
  static const char * wordlist[] =
    {
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "",
      "ekavsk",
      "", "", "", "",
      "ao1990",
      "",
      "ivanchov",
      "1996",
      "", "", "",
      "viennese",
      "", "",
      "scouse",
      "",
      "1959acad",
      "1994",
      "",
      "cisaup",
      "arkaika",
      "kociewie",
      "1901",
      "kscor",
      "aranes",
      "",
      "1694acad",
      "",
      "kkcor",
      "nicard",
      "arevela",
      "1606nict",
      "", "",
      "creiss",
      "sursilv",
      "vivaraup",
      "", "",
      "auvern",
      "fonnapa",
      "valencia",
      "",
      "cornu",
      "fascia",
      "",
      "fonkirsh",
      "",
      "uccor",
      "ucrcor",
      "laukika",
      "", "",
      "nulik",
      "", "",
      "kleinsch",
      "",
      "sotav",
      "unifon",
      "", "", "",
      "aluku",
      "asante",
      "arevmda",
      "vallader",
      "",
      "bciav",
      "",
      "alalc97",
      "biscayan",
      "",
      "biske",
      "saigon",
      "vaidika",
      "basiceng",
      "",
      "hanoi",
      "gascon",
      "lemosin",
      "surmiran",
      "",
      "nedis",
      "tarask",
      "sutsilv",
      "luna1918",
      "",
      "solba",
      "",
      "mesokem",
      "", "", "", "",
      "balanka",
      "valbadia",
      "",
      "tailo",
      "", "",
      "newfound",
      "", "", "", "", "", "",
      "rigik",
      "", "",
      "scotland",
      "",
      "barla",
      "",
      "monoton",
      "vecdruka",
      "", "", "",
      "abl1943",
      "lengadoc",
      "",
      "blasl",
      "ulster",
      "",
      "synnejyl",
      "", "", "", "",
      "akhmimic",
      "",
      "boont",
      "", "",
      "colb1945",
      "",
      "gallo",
      "",
      "grclass",
      "", "",
      "stadi",
      "", "",
      "baku1926",
      "",
      "peano",
      "bcizbl",
      "",
      "bohairic",
      "",
      "fodom",
      "ndyuka",
      "itihasa",
      "tunumiit",
      "",
      "osojs",
      "anpezo",
      "metelko",
      "hognorsk",
      "", "", "",
      "sahidic",
      "", "",
      "njiva",
      "",
      "grmistr",
      "", "", "",
      "grital",
      "bohoric",
      "fayyumic",
      "", "", "",
      "provenc",
      "ijekavsk",
      "",
      "rumgr",
      "pamaka",
      "", "", "",
      "slepe",
      "fonipa",
      "", "", "",
      "rozaj",
      "", "",
      "hsistemo",
      "", "", "",
      "ltg1929",
      "leidentr",
      "", "",
      "fonupa",
      "akuapem",
      "bornholm",
      "", "",
      "pinyin",
      "",
      "fonxsamp",
      "",
      "jauer",
      "",
      "emodeng",
      "tongyong",
      "", "",
      "simple",
      "",
      "oxendict",
      "",
      "lipaw",
      "", "",
      "mdctrans",
      "", "", "",
      "ltg2007",
      "spanglis",
      "", "", "",
      "bauddha",
      "", "", "", "", "",
      "xsistemo",
      "", "", "",
      "pehoeji",
      "wadegile",
      "",
      "huett",
      "dajnko",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "",
      "puter",
      "heploc",
      "",
      "petr1708",
      "",
      "gherd",
      "",
      "taglish",
      "", "", "", "",
      "lycopol",
      "", "", "", "",
      "pahawh3",
      "", "", "", "",
      "pahawh4",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "",
      "polyton",
      "", "", "", "",
      "pahawh2",
      "", "", "", "", "", "", "", "", "",
      "hepburn",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "",
      "mdcegyp",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "", "", "", "",
      "", "", "", "", "", "",
      "jyutping"
    };

  if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
    {
      register unsigned int key = hash (str, len);

      if (key <= MAX_HASH_VALUE)
        {
          register const char *s = wordlist[key];

          if (*str == *s && !strcmp (str + 1, s + 1))
            return s;
        }
    }
  return (const char *) 0;
}
