/* ANSI-C code produced by gperf version 3.3 */
/* Command-line: gperf -t --output-file=C/main/txi_documentlanguage_scripts.c -N txi_in_language_scripts maintain/documentlanguage/scripts.gperf  */
/* Computed positions: -k'1-4' */

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

#line 1 "maintain/documentlanguage/scripts.gperf"

#include <config.h>
#line 4 "maintain/documentlanguage/scripts.gperf"
struct TXI_DOCUMENT_SCRIPT { char const *name; const char *code; };
#include <string.h>

#define TOTAL_KEYWORDS 231
#define MIN_WORD_LENGTH 4
#define MAX_WORD_LENGTH 10
#define MIN_HASH_VALUE 18
#define MAX_HASH_VALUE 608
/* maximum key range = 591, duplicates = 0 */

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
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609,  54, 185,   9, 113, 215,
      609,  14,  70, 255, 219, 200, 194,  20,  49,  13,
      119, 609, 153,   0,  95,  45,  75,  20,  30, 140,
      150, 609, 609, 609, 609, 609, 609,  10, 109, 209,
       15, 165, 160,  65, 235,  25, 135,   9,  20,   4,
        5,   5,  29,   0,   0, 175,  60,  60,   5, 240,
       10,  14,  50, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609, 609, 609, 609, 609,
      609, 609, 609, 609, 609, 609
    };
  return len + asso_values[(unsigned char)str[3]] + asso_values[(unsigned char)str[2]] + asso_values[(unsigned char)str[1]] + asso_values[(unsigned char)str[0]];
}

struct TXI_DOCUMENT_SCRIPT *
txi_in_language_scripts (register const char *str, register size_t len)
{
#if (defined __GNUC__ && __GNUC__ + (__GNUC_MINOR__ >= 6) > 4) || (defined __clang__ && __clang_major__ >= 3)
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wmissing-field-initializers"
#endif
  static struct TXI_DOCUMENT_SCRIPT wordlist[] =
    {
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 167 "maintain/documentlanguage/scripts.gperf"
      {"Samr", 0},
#line 182 "maintain/documentlanguage/scripts.gperf"
      {"Sora", 0},
      {""}, {""}, {""},
#line 190 "maintain/documentlanguage/scripts.gperf"
      {"Syrn", 0},
#line 168 "maintain/documentlanguage/scripts.gperf"
      {"Sara", 0},
      {""}, {""}, {""},
#line 183 "maintain/documentlanguage/scripts.gperf"
      {"Soyo", 0},
      {""}, {""}, {""},
#line 58 "maintain/documentlanguage/scripts.gperf"
      {"Gonm", 0},
#line 60 "maintain/documentlanguage/scripts.gperf"
      {"Gran", 0},
#line 127 "maintain/documentlanguage/scripts.gperf"
      {"Mroo", 0},
      {""},
#line 29 "maintain/documentlanguage/scripts.gperf"
      {"Cakm", 0},
#line 142 "maintain/documentlanguage/scripts.gperf"
      {"Onao", 0},
#line 53 "maintain/documentlanguage/scripts.gperf"
      {"Gara", 0},
#line 126 "maintain/documentlanguage/scripts.gperf"
      {"Moon", 0},
      {""},
#line 144 "maintain/documentlanguage/scripts.gperf"
      {"Orya", 0},
#line 130 "maintain/documentlanguage/scripts.gperf"
      {"Mymr", 0},
#line 186 "maintain/documentlanguage/scripts.gperf"
      {"Sylo", 0},
#line 216 "maintain/documentlanguage/scripts.gperf"
      {"Wara", 0},
      {""}, {""},
#line 40 "maintain/documentlanguage/scripts.gperf"
      {"Cyrl", 0},
#line 31 "maintain/documentlanguage/scripts.gperf"
      {"Cari", 0},
#line 178 "maintain/documentlanguage/scripts.gperf"
      {"Sind", 0},
      {""},
#line 38 "maintain/documentlanguage/scripts.gperf"
      {"Cpmn", 0},
      {""},
#line 114 "maintain/documentlanguage/scripts.gperf"
      {"Maka", 0},
#line 115 "maintain/documentlanguage/scripts.gperf"
      {"Mand", 0},
      {""}, {""}, {""},
#line 118 "maintain/documentlanguage/scripts.gperf"
      {"Maya", 0},
#line 176 "maintain/documentlanguage/scripts.gperf"
      {"Sidd", 0},
      {""}, {""},
#line 123 "maintain/documentlanguage/scripts.gperf"
      {"Mlym", 0},
      {""},
#line 116 "maintain/documentlanguage/scripts.gperf"
      {"Mani", 0},
      {""}, {""},
#line 14 "maintain/documentlanguage/scripts.gperf"
      {"Armn", 0},
      {""},
#line 124 "maintain/documentlanguage/scripts.gperf"
      {"Modi", 0},
      {""}, {""},
#line 138 "maintain/documentlanguage/scripts.gperf"
      {"Nkoo", 0},
#line 12 "maintain/documentlanguage/scripts.gperf"
      {"Aran", 0},
#line 170 "maintain/documentlanguage/scripts.gperf"
      {"Saur", 0},
      {""}, {""}, {""}, {""},
#line 181 "maintain/documentlanguage/scripts.gperf"
      {"Sogo", 0},
      {""}, {""}, {""},
#line 132 "maintain/documentlanguage/scripts.gperf"
      {"Nand", 0},
#line 184 "maintain/documentlanguage/scripts.gperf"
      {"Sund", 0},
      {""}, {""},
#line 13 "maintain/documentlanguage/scripts.gperf"
      {"Armi", 0},
#line 237 "maintain/documentlanguage/scripts.gperf"
      {"mongolian", "Mong"},
#line 180 "maintain/documentlanguage/scripts.gperf"
      {"Sogd", 0},
      {""}, {""}, {""},
#line 57 "maintain/documentlanguage/scripts.gperf"
      {"Gong", 0},
#line 68 "maintain/documentlanguage/scripts.gperf"
      {"Hano", 0},
      {""},
#line 140 "maintain/documentlanguage/scripts.gperf"
      {"Ogam", 0},
#line 7 "maintain/documentlanguage/scripts.gperf"
      {"Adlm", 0},
#line 36 "maintain/documentlanguage/scripts.gperf"
      {"Cirt", 0},
#line 125 "maintain/documentlanguage/scripts.gperf"
      {"Mong", 0},
      {""}, {""},
#line 39 "maintain/documentlanguage/scripts.gperf"
      {"Cprt", 0},
      {""},
#line 177 "maintain/documentlanguage/scripts.gperf"
      {"Sidt", 0},
      {""}, {""},
#line 37 "maintain/documentlanguage/scripts.gperf"
      {"Copt", 0},
      {""},
#line 73 "maintain/documentlanguage/scripts.gperf"
      {"Hira", 0},
      {""}, {""},
#line 76 "maintain/documentlanguage/scripts.gperf"
      {"Hmnp", 0},
#line 56 "maintain/documentlanguage/scripts.gperf"
      {"Glag", 0},
#line 67 "maintain/documentlanguage/scripts.gperf"
      {"Hani", 0},
      {""}, {""}, {""},
#line 192 "maintain/documentlanguage/scripts.gperf"
      {"Takr", 0},
#line 208 "maintain/documentlanguage/scripts.gperf"
      {"Todr", 0},
#line 236 "maintain/documentlanguage/scripts.gperf"
      {"latin", "Latn"},
      {""}, {""},
#line 169 "maintain/documentlanguage/scripts.gperf"
      {"Sarb", 0},
#line 212 "maintain/documentlanguage/scripts.gperf"
      {"Ugar", 0},
      {""}, {""}, {""},
#line 198 "maintain/documentlanguage/scripts.gperf"
      {"Tayo", 0},
#line 185 "maintain/documentlanguage/scripts.gperf"
      {"Sunu", 0},
      {""}, {""},
#line 131 "maintain/documentlanguage/scripts.gperf"
      {"Nagm", 0},
#line 195 "maintain/documentlanguage/scripts.gperf"
      {"Taml", 0},
      {""},
#line 231 "maintain/documentlanguage/scripts.gperf"
      {"arabic", "Arab"},
      {""},
#line 234 "maintain/documentlanguage/scripts.gperf"
      {"gurmukhi", "Guru"},
#line 64 "maintain/documentlanguage/scripts.gperf"
      {"Guru", 0},
#line 213 "maintain/documentlanguage/scripts.gperf"
      {"Vaii", 0},
      {""}, {""},
#line 147 "maintain/documentlanguage/scripts.gperf"
      {"Ougr", 0},
#line 78 "maintain/documentlanguage/scripts.gperf"
      {"Hrkt", 0},
#line 71 "maintain/documentlanguage/scripts.gperf"
      {"Hatr", 0},
      {""}, {""}, {""},
#line 75 "maintain/documentlanguage/scripts.gperf"
      {"Hmng", 0},
#line 70 "maintain/documentlanguage/scripts.gperf"
      {"Hant", 0},
      {""}, {""}, {""},
#line 189 "maintain/documentlanguage/scripts.gperf"
      {"Syrj", 0},
#line 66 "maintain/documentlanguage/scripts.gperf"
      {"Hang", 0},
      {""}, {""},
#line 148 "maintain/documentlanguage/scripts.gperf"
      {"Palm", 0},
#line 159 "maintain/documentlanguage/scripts.gperf"
      {"Plrd", 0},
#line 77 "maintain/documentlanguage/scripts.gperf"
      {"Hntl", 0},
      {""},
#line 43 "maintain/documentlanguage/scripts.gperf"
      {"Diak", 0},
      {""},
#line 158 "maintain/documentlanguage/scripts.gperf"
      {"Piqd", 0},
#line 129 "maintain/documentlanguage/scripts.gperf"
      {"Mult", 0},
      {""}, {""},
#line 165 "maintain/documentlanguage/scripts.gperf"
      {"Roro", 0},
      {""},
#line 210 "maintain/documentlanguage/scripts.gperf"
      {"Toto", 0},
      {""}, {""},
#line 133 "maintain/documentlanguage/scripts.gperf"
      {"Narb", 0},
      {""},
#line 197 "maintain/documentlanguage/scripts.gperf"
      {"Tavt", 0},
      {""}, {""},
#line 11 "maintain/documentlanguage/scripts.gperf"
      {"Arab", 0},
      {""},
#line 196 "maintain/documentlanguage/scripts.gperf"
      {"Tang", 0},
      {""}, {""}, {""},
#line 188 "maintain/documentlanguage/scripts.gperf"
      {"Syre", 0},
#line 228 "maintain/documentlanguage/scripts.gperf"
      {"Zxxx", 0},
      {""},
#line 136 "maintain/documentlanguage/scripts.gperf"
      {"Nkdb", 0},
#line 44 "maintain/documentlanguage/scripts.gperf"
      {"Dogr", 0},
#line 55 "maintain/documentlanguage/scripts.gperf"
      {"Geor", 0},
#line 194 "maintain/documentlanguage/scripts.gperf"
      {"Talu", 0},
      {""}, {""},
#line 61 "maintain/documentlanguage/scripts.gperf"
      {"Grek", 0},
      {""},
#line 122 "maintain/documentlanguage/scripts.gperf"
      {"Mero", 0},
      {""},
#line 229 "maintain/documentlanguage/scripts.gperf"
      {"Zyyy", 0},
#line 54 "maintain/documentlanguage/scripts.gperf"
      {"Geok", 0},
#line 65 "maintain/documentlanguage/scripts.gperf"
      {"Hanb", 0},
#line 171 "maintain/documentlanguage/scripts.gperf"
      {"Seal", 0},
      {""}, {""},
#line 41 "maintain/documentlanguage/scripts.gperf"
      {"Cyrs", 0},
#line 30 "maintain/documentlanguage/scripts.gperf"
      {"Cans", 0},
#line 79 "maintain/documentlanguage/scripts.gperf"
      {"Hung", 0},
#line 233 "maintain/documentlanguage/scripts.gperf"
      {"devanagari", "Deva"},
#line 146 "maintain/documentlanguage/scripts.gperf"
      {"Osma", 0},
      {""},
#line 160 "maintain/documentlanguage/scripts.gperf"
      {"Prti", 0},
#line 120 "maintain/documentlanguage/scripts.gperf"
      {"Mend", 0},
      {""}, {""}, {""},
#line 62 "maintain/documentlanguage/scripts.gperf"
      {"Gujr", 0},
#line 218 "maintain/documentlanguage/scripts.gperf"
      {"Wole", 0},
      {""}, {""},
#line 110 "maintain/documentlanguage/scripts.gperf"
      {"Loma", 0},
#line 100 "maintain/documentlanguage/scripts.gperf"
      {"Laoo", 0},
#line 222 "maintain/documentlanguage/scripts.gperf"
      {"Yiii", 0},
      {""}, {""},
#line 166 "maintain/documentlanguage/scripts.gperf"
      {"Runr", 0},
#line 99 "maintain/documentlanguage/scripts.gperf"
      {"Lana", 0},
#line 26 "maintain/documentlanguage/scripts.gperf"
      {"Brai", 0},
      {""},
#line 46 "maintain/documentlanguage/scripts.gperf"
      {"Dupl", 0},
#line 187 "maintain/documentlanguage/scripts.gperf"
      {"Syrc", 0},
#line 24 "maintain/documentlanguage/scripts.gperf"
      {"Bopo", 0},
#line 87 "maintain/documentlanguage/scripts.gperf"
      {"Kana", 0},
      {""}, {""},
#line 134 "maintain/documentlanguage/scripts.gperf"
      {"Nbat", 0},
#line 219 "maintain/documentlanguage/scripts.gperf"
      {"Xpeo", 0},
#line 94 "maintain/documentlanguage/scripts.gperf"
      {"Knda", 0},
      {""},
#line 137 "maintain/documentlanguage/scripts.gperf"
      {"Nkgb", 0},
#line 8 "maintain/documentlanguage/scripts.gperf"
      {"Afak", 0},
#line 107 "maintain/documentlanguage/scripts.gperf"
      {"Lina", 0},
#line 97 "maintain/documentlanguage/scripts.gperf"
      {"Krai", 0},
      {""}, {""},
#line 82 "maintain/documentlanguage/scripts.gperf"
      {"Jamo", 0},
#line 117 "maintain/documentlanguage/scripts.gperf"
      {"Marc", 0},
#line 16 "maintain/documentlanguage/scripts.gperf"
      {"Bali", 0},
      {""}, {""}, {""},
#line 83 "maintain/documentlanguage/scripts.gperf"
      {"Java", 0},
#line 202 "maintain/documentlanguage/scripts.gperf"
      {"Tglg", 0},
      {""}, {""},
#line 112 "maintain/documentlanguage/scripts.gperf"
      {"Lydi", 0},
      {""},
#line 174 "maintain/documentlanguage/scripts.gperf"
      {"Shrd", 0},
#line 141 "maintain/documentlanguage/scripts.gperf"
      {"Olck", 0},
#line 232 "maintain/documentlanguage/scripts.gperf"
      {"cyrillic", "Cyrl"},
#line 51 "maintain/documentlanguage/scripts.gperf"
      {"Elym", 0},
      {""},
#line 86 "maintain/documentlanguage/scripts.gperf"
      {"Kali", 0},
      {""},
#line 143 "maintain/documentlanguage/scripts.gperf"
      {"Orkh", 0},
#line 32 "maintain/documentlanguage/scripts.gperf"
      {"Cham", 0},
#line 17 "maintain/documentlanguage/scripts.gperf"
      {"Bamu", 0},
#line 69 "maintain/documentlanguage/scripts.gperf"
      {"Hans", 0},
      {""}, {""},
#line 84 "maintain/documentlanguage/scripts.gperf"
      {"Jpan", 0},
#line 19 "maintain/documentlanguage/scripts.gperf"
      {"Batk", 0},
#line 179 "maintain/documentlanguage/scripts.gperf"
      {"Sinh", 0},
      {""}, {""}, {""},
#line 103 "maintain/documentlanguage/scripts.gperf"
      {"Latn", 0},
#line 128 "maintain/documentlanguage/scripts.gperf"
      {"Mtei", 0},
      {""}, {""}, {""},
#line 223 "maintain/documentlanguage/scripts.gperf"
      {"Zanb", 0},
#line 220 "maintain/documentlanguage/scripts.gperf"
      {"Xsux", 0},
      {""}, {""}, {""},
#line 191 "maintain/documentlanguage/scripts.gperf"
      {"Tagb", 0},
#line 211 "maintain/documentlanguage/scripts.gperf"
      {"Tutg", 0},
      {""}, {""}, {""}, {""},
#line 207 "maintain/documentlanguage/scripts.gperf"
      {"Tnsa", 0},
      {""}, {""},
#line 152 "maintain/documentlanguage/scripts.gperf"
      {"Perm", 0},
#line 205 "maintain/documentlanguage/scripts.gperf"
      {"Tibt", 0},
#line 193 "maintain/documentlanguage/scripts.gperf"
      {"Tale", 0},
      {""}, {""},
#line 42 "maintain/documentlanguage/scripts.gperf"
      {"Deva", 0},
#line 15 "maintain/documentlanguage/scripts.gperf"
      {"Avst", 0},
#line 209 "maintain/documentlanguage/scripts.gperf"
      {"Tols", 0},
      {""}, {""},
#line 10 "maintain/documentlanguage/scripts.gperf"
      {"Ahom", 0},
      {""},
#line 230 "maintain/documentlanguage/scripts.gperf"
      {"Zzzz", 0},
      {""}, {""},
#line 162 "maintain/documentlanguage/scripts.gperf"
      {"Ranj", 0},
#line 214 "maintain/documentlanguage/scripts.gperf"
      {"Visp", 0},
#line 92 "maintain/documentlanguage/scripts.gperf"
      {"Kitl", 0},
      {""}, {""},
#line 151 "maintain/documentlanguage/scripts.gperf"
      {"Pelm", 0},
#line 47 "maintain/documentlanguage/scripts.gperf"
      {"Egyd", 0},
#line 172 "maintain/documentlanguage/scripts.gperf"
      {"Sgnw", 0},
      {""}, {""}, {""},
#line 59 "maintain/documentlanguage/scripts.gperf"
      {"Goth", 0},
      {""}, {""}, {""},
#line 63 "maintain/documentlanguage/scripts.gperf"
      {"Gukh", 0},
      {""},
#line 175 "maintain/documentlanguage/scripts.gperf"
      {"Shui", 0},
      {""}, {""},
#line 49 "maintain/documentlanguage/scripts.gperf"
      {"Egyp", 0},
#line 161 "maintain/documentlanguage/scripts.gperf"
      {"Psin", 0},
#line 201 "maintain/documentlanguage/scripts.gperf"
      {"Tfng", 0},
      {""}, {""}, {""},
#line 102 "maintain/documentlanguage/scripts.gperf"
      {"Latg", 0},
#line 200 "maintain/documentlanguage/scripts.gperf"
      {"Teng", 0},
      {""},
#line 106 "maintain/documentlanguage/scripts.gperf"
      {"Limb", 0},
#line 108 "maintain/documentlanguage/scripts.gperf"
      {"Linb", 0},
      {""},
#line 27 "maintain/documentlanguage/scripts.gperf"
      {"Bugi", 0},
      {""}, {""}, {""}, {""},
#line 199 "maintain/documentlanguage/scripts.gperf"
      {"Telu", 0},
      {""}, {""},
#line 227 "maintain/documentlanguage/scripts.gperf"
      {"Zsym", 0},
#line 72 "maintain/documentlanguage/scripts.gperf"
      {"Hebr", 0},
#line 81 "maintain/documentlanguage/scripts.gperf"
      {"Ital", 0},
      {""}, {""},
#line 45 "maintain/documentlanguage/scripts.gperf"
      {"Dsrt", 0},
      {""},
#line 203 "maintain/documentlanguage/scripts.gperf"
      {"Thaa", 0},
      {""}, {""}, {""},
#line 50 "maintain/documentlanguage/scripts.gperf"
      {"Elba", 0},
#line 206 "maintain/documentlanguage/scripts.gperf"
      {"Tirh", 0},
      {""}, {""},
#line 163 "maintain/documentlanguage/scripts.gperf"
      {"Rjng", 0},
      {""},
#line 119 "maintain/documentlanguage/scripts.gperf"
      {"Medf", 0},
      {""}, {""}, {""}, {""},
#line 204 "maintain/documentlanguage/scripts.gperf"
      {"Thai", 0},
      {""}, {""}, {""},
#line 157 "maintain/documentlanguage/scripts.gperf"
      {"Phnx", 0},
#line 95 "maintain/documentlanguage/scripts.gperf"
      {"Kore", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 156 "maintain/documentlanguage/scripts.gperf"
      {"Phlv", 0},
#line 221 "maintain/documentlanguage/scripts.gperf"
      {"Yezi", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 74 "maintain/documentlanguage/scripts.gperf"
      {"Hluw", 0},
      {""}, {""},
#line 150 "maintain/documentlanguage/scripts.gperf"
      {"Pcun", 0},
#line 121 "maintain/documentlanguage/scripts.gperf"
      {"Merc", 0},
#line 215 "maintain/documentlanguage/scripts.gperf"
      {"Vith", 0},
      {""}, {""},
#line 149 "maintain/documentlanguage/scripts.gperf"
      {"Pauc", 0},
#line 154 "maintain/documentlanguage/scripts.gperf"
      {"Phli", 0},
#line 113 "maintain/documentlanguage/scripts.gperf"
      {"Mahj", 0},
      {""}, {""},
#line 155 "maintain/documentlanguage/scripts.gperf"
      {"Phlp", 0},
      {""},
#line 23 "maintain/documentlanguage/scripts.gperf"
      {"Blis", 0},
      {""}, {""}, {""},
#line 33 "maintain/documentlanguage/scripts.gperf"
      {"Cher", 0},
      {""}, {""}, {""}, {""},
#line 96 "maintain/documentlanguage/scripts.gperf"
      {"Kpel", 0},
#line 224 "maintain/documentlanguage/scripts.gperf"
      {"Zinh", 0},
      {""}, {""},
#line 145 "maintain/documentlanguage/scripts.gperf"
      {"Osge", 0},
#line 35 "maintain/documentlanguage/scripts.gperf"
      {"Chrs", 0},
#line 20 "maintain/documentlanguage/scripts.gperf"
      {"Beng", 0},
      {""}, {""}, {""},
#line 101 "maintain/documentlanguage/scripts.gperf"
      {"Latf", 0},
      {""}, {""}, {""}, {""},
#line 153 "maintain/documentlanguage/scripts.gperf"
      {"Phag", 0},
#line 25 "maintain/documentlanguage/scripts.gperf"
      {"Brah", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 90 "maintain/documentlanguage/scripts.gperf"
      {"Khmr", 0},
      {""}, {""},
#line 111 "maintain/documentlanguage/scripts.gperf"
      {"Lyci", 0},
      {""},
#line 34 "maintain/documentlanguage/scripts.gperf"
      {"Chis", 0},
#line 89 "maintain/documentlanguage/scripts.gperf"
      {"Khar", 0},
      {""}, {""}, {""},
#line 225 "maintain/documentlanguage/scripts.gperf"
      {"Zmth", 0},
#line 80 "maintain/documentlanguage/scripts.gperf"
      {"Inds", 0},
      {""}, {""}, {""},
#line 109 "maintain/documentlanguage/scripts.gperf"
      {"Lisu", 0},
      {""}, {""}, {""},
#line 164 "maintain/documentlanguage/scripts.gperf"
      {"Rohg", 0},
      {""},
#line 93 "maintain/documentlanguage/scripts.gperf"
      {"Kits", 0},
      {""}, {""},
#line 9 "maintain/documentlanguage/scripts.gperf"
      {"Aghb", 0},
#line 135 "maintain/documentlanguage/scripts.gperf"
      {"Newa", 0},
      {""}, {""}, {""}, {""},
#line 217 "maintain/documentlanguage/scripts.gperf"
      {"Wcho", 0},
      {""}, {""}, {""}, {""}, {""},
#line 88 "maintain/documentlanguage/scripts.gperf"
      {"Kawi", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 173 "maintain/documentlanguage/scripts.gperf"
      {"Shaw", 0},
      {""}, {""},
#line 85 "maintain/documentlanguage/scripts.gperf"
      {"Jurc", 0},
      {""}, {""}, {""}, {""}, {""}, {""},
#line 28 "maintain/documentlanguage/scripts.gperf"
      {"Buhd", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 226 "maintain/documentlanguage/scripts.gperf"
      {"Zsye", 0},
      {""}, {""}, {""}, {""}, {""},
#line 21 "maintain/documentlanguage/scripts.gperf"
      {"Berf", 0},
#line 235 "maintain/documentlanguage/scripts.gperf"
      {"hebrew", "Hebr"},
      {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 139 "maintain/documentlanguage/scripts.gperf"
      {"Nshu", 0},
#line 98 "maintain/documentlanguage/scripts.gperf"
      {"Kthi", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 48 "maintain/documentlanguage/scripts.gperf"
      {"Egyh", 0},
      {""}, {""}, {""},
#line 104 "maintain/documentlanguage/scripts.gperf"
      {"Leke", 0},
      {""},
#line 52 "maintain/documentlanguage/scripts.gperf"
      {"Ethi", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
#line 18 "maintain/documentlanguage/scripts.gperf"
      {"Bass", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""},
#line 91 "maintain/documentlanguage/scripts.gperf"
      {"Khoj", 0},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""}, {""},
      {""}, {""}, {""},
#line 105 "maintain/documentlanguage/scripts.gperf"
      {"Lepc", 0},
      {""}, {""}, {""}, {""}, {""}, {""},
#line 22 "maintain/documentlanguage/scripts.gperf"
      {"Bhks", 0}
    };
#if (defined __GNUC__ && __GNUC__ + (__GNUC_MINOR__ >= 6) > 4) || (defined __clang__ && __clang_major__ >= 3)
#pragma GCC diagnostic pop
#endif

  if (len <= MAX_WORD_LENGTH && len >= MIN_WORD_LENGTH)
    {
      register unsigned int key = hash (str, len);

      if (key <= MAX_HASH_VALUE)
        {
          register const char *s = wordlist[key].name;

          if (*str == *s && !strcmp (str + 1, s + 1))
            return &wordlist[key];
        }
    }
  return (struct TXI_DOCUMENT_SCRIPT *) 0;
}
