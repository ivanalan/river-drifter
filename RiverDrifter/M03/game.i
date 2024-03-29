# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 69 "myLib.h"
extern unsigned short *videoBuffer;
# 89 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 163 "myLib.h"
void hideSprites();
# 183 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 193 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 234 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "spritesheet.h" 1
# 21 "spritesheet.h"
extern const unsigned short spritesheetTiles[16384];


extern const unsigned short spritesheetPal[256];
# 3 "game.c" 2
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 1 3
# 10 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_newlib_version.h" 1 3
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\newlib.h" 2 3
# 11 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\ieeefp.h" 1 3
# 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\features.h" 1 3
# 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\config.h" 2 3
# 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 2 3
# 12 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3




# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 209 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4

# 209 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int size_t;
# 321 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int wchar_t;
# 17 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3

# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 1 3
# 13 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\_ansi.h" 1 3
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 143 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef int ptrdiff_t;
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 1 3
# 24 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h" 1 3



# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 1 3
# 41 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 5 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\_types.h" 2 3


typedef __int64_t _off_t;


typedef __int64_t _fpos_t;


typedef __uint32_t __ino_t;


typedef __uint32_t __dev_t;
# 25 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h" 1 3




# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 1 3 4
# 9 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 1 3 4
# 13 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 1 3 4
# 35 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 2 3 4
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h" 1 3 4
# 20 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stdint.h" 2 3 4
# 6 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\lock.h" 2 3

typedef int32_t _LOCK_T;

struct __lock_t {
 _LOCK_T lock;
 uint32_t thread_tag;
 uint32_t counter;
};

typedef struct __lock_t _LOCK_RECURSIVE_T;

extern void __libc_lock_init(_LOCK_T *lock);
extern void __libc_lock_init_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_close(_LOCK_T *lock);
extern void __libc_lock_close_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_acquire(_LOCK_T *lock);
extern void __libc_lock_acquire_recursive(_LOCK_RECURSIVE_T *lock);
extern void __libc_lock_release(_LOCK_T *lock);
extern void __libc_lock_release_recursive(_LOCK_RECURSIVE_T *lock);


extern int __libc_lock_try_acquire(_LOCK_T *lock);
extern int __libc_lock_try_acquire_recursive(_LOCK_RECURSIVE_T *lock);
# 26 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;
# 50 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef int __pid_t;







typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;
# 88 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;
# 129 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef unsigned int __size_t;
# 145 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef signed int _ssize_t;
# 156 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 3
typedef _ssize_t __ssize_t;


# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 350 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 3 4
typedef unsigned int wint_t;
# 160 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\_types.h" 2 3



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;



typedef _LOCK_RECURSIVE_T _flock_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;




typedef char * __va_list;
# 16 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 2 3






typedef unsigned long __ULong;
# 38 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 93 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 117 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 181 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  int (*_read) (struct _reent *, void *,
        char *, int);
  int (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 287 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 319 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 610 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

  void *deviceData;
};
# 817 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);





  struct _reent * __getreent (void);
# 19 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 1 3
# 47 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 3
# 1 "c:\\devkitpro\\devkitarm\\lib\\gcc\\arm-none-eabi\\9.1.0\\include\\stddef.h" 1 3 4
# 48 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\sys\\cdefs.h" 2 3
# 20 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 1 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\machine\\stdlib.h" 1 3
# 21 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 2 3
# 33 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3


typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);





int atexit (void (*__func)(void));
double atof (const char *__nptr);



int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);
char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);




long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);
# 134 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;
# 156 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
# 188 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
int system (const char *__string);
# 199 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
void _Exit (int __status) __attribute__ ((__noreturn__));




int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);



int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 221 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);
# 260 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);
# 281 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
int _unsetenv_r (struct _reent *, const char *__string);







char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);
# 319 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);
# 336 "c:\\devkitpro\\devkitarm\\arm-none-eabi\\include\\stdlib.h" 3

# 4 "game.c" 2
# 30 "game.c"

# 30 "game.c"
enum
{
    SHIRT,
    SHORT,
    BOOTS,
    BLANKET,
    HAT
};

typedef struct
{
    int id;
    int row;
    int initRow;
    int col;
    int height;
    int width;
    int active;
    int type;
} CLOTHING;

typedef struct
{
    int row;
    int col;
    int height;
    int width;
    int active;
    int erased;
    int distTraveled;
} BULLET;

typedef struct
{
    int row;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int distanceTraveled;
} PLAYER;

typedef struct
{
    int id;
    int row;
    int initRow;
    int col;
    int rdel;
    int cdel;
    int width;
    int height;
    int type;
    int active;
} ENEMY;


void initGame();
void updateGame();
void drawGame();


void initPlayer();
void updatePlayer();
void drawPlayer();


extern int itemsCollected;
void initItems();
void updateItems(int item);


void initClothes();
void updateClothes();
CLOTHING findRandClothing();



extern int livesremaining;
void initLives();
void updateLives(int lives);


void initTwig();
void updateTwig();
ENEMY findRandTwig();
void drawEnemy();




void initBullets();
void fireBullet();
void updateBullets();


void updateTimeline();

PLAYER player;
ENEMY twig[10];
BULLET bullets[1];
CLOTHING clothes[5];


OBJ_ATTR shadowOAM[128];

extern int time;
extern int endGame;
extern int cheat = 0;


unsigned short hOff;

void initGame()
{
    endGame = 0;
    hOff = 0;
    cheat = 0;
    time = 0;
    livesremaining = 3;
    itemsCollected = 0;
    initPlayer();
    initTwig();
    initLives();
    initBullets();
    initItems();
    initClothes();
}

void initItems()
{

    shadowOAM[6].attr0 = 4 | (1 << 14);
    shadowOAM[6].attr1 = 180 | (1 << 14);
    shadowOAM[6].attr2 = ((3)*32 + (0));


    shadowOAM[7].attr0 = 4 | (0 << 14);
    shadowOAM[7].attr1 = 215 | (0 << 14);
    shadowOAM[7].attr2 = ((4)*32 + (9));
}

void initClothes()
{






    for (int i = 0; i < 5; i++)
    {
        clothes[i].id = i;
        clothes[i].initRow = (8 * (i % 10)) + 81;
        clothes[i].row = (8 * (i % 10)) + 81;
        clothes[i].col = 240;
        clothes[i].active = 0;
        clothes[i].height = 8;
        clothes[i].width = 8;
        shadowOAM[i + 70].attr0 = clothes[i].row | (0 << 14);
        shadowOAM[i + 70].attr1 = clothes[i].col | (0 << 14);
        shadowOAM[i + 70].attr2 = ((0)*32 + (i + 5));
    }
}

void initLives()
{

    shadowOAM[4].attr0 = 4 | (1 << 14);
    shadowOAM[4].attr1 = 2 | (1 << 14);
    shadowOAM[4].attr2 = ((2)*32 + (0));


    shadowOAM[5].attr0 = 4 | (0 << 14);
    shadowOAM[5].attr1 = 8 | (0 << 14);
    shadowOAM[5].attr2 = ((4)*32 + (2));
}
void initTwig()
{
    for (int i = 0; i < 10; i++)
    {
        twig[i].id = i;
        twig[i].active = 0;

        twig[i].col = 240;
        twig[i].initRow = (16 * (i % 5)) + 81;
        twig[i].row = (16 * (i % 5)) + 81;

        twig[i].height = 16;
        twig[i].width = 16;

        shadowOAM[i + 50].attr0 = twig[i].row | (0 << 14);
        shadowOAM[i + 50].attr1 = twig[i].col | (1 << 14);
        shadowOAM[i + 50].attr2 = ((0)*32 + (2));
    }
}

void initPlayer()
{
    player.row = 160 / 2;
    player.col = (240 / 2) - 70;
    player.rdel = 1;
    player.width = 16;
    player.height = 8;
    player.distanceTraveled = 0;
    shadowOAM[0].attr0 = 0 | (1 << 14);
    shadowOAM[0].attr1 = 0 | (0 << 14);
    shadowOAM[0].attr2 = ((0)*32 + (0));
}

void initBullets()
{
    for (int i = 0; i < 1; i++)
    {
        bullets[i].height = 8;
        bullets[i].width = 8;
        bullets[i].row = 10;
        bullets[i].col = 10;
        bullets[i].active = 0;
        bullets[i].erased = 0;
        bullets[i].distTraveled = 0;


        shadowOAM[i + 30].attr0 = bullets[i].row | (2 << 8) | (0 << 14);
        shadowOAM[i + 30].attr1 = bullets[i].col | (0 << 14);
        shadowOAM[i + 30].attr2 = ((0)*32 + (4));
    }
}

void updateGame()
{
    updatePlayer();
    updateTwig();
    updateBullets();
    updateLives(livesremaining);
    updateItems(itemsCollected);
    updateClothes();
    updateTimeline();
}

void updateTimeline()
{

    shadowOAM[21].attr0 = 3 | (1 << 14);
    shadowOAM[21].attr1 = 93 | (3 << 14);
    shadowOAM[21].attr2 = ((5)*32 + (0));

    int speed = 20;

    shadowOAM[3].attr0 = 13 | (1 << 14);
    shadowOAM[3].attr1 = 74 + (player.distanceTraveled / speed) | (0 << 14);
    shadowOAM[3].attr2 = ((0)*32 + (13));

    int interval = 70;

    shadowOAM[10].attr0 = 13 | (0 << 14);
    shadowOAM[10].attr1 = interval | (0 << 14);
    shadowOAM[10].attr2 = ((0)*32 + (10));

    int length = 0;
    for (length = 0; length <= 8; length++)
    {
        interval += 8;

        shadowOAM[11 + length].attr0 = 13 | (0 << 14);
        shadowOAM[11 + length].attr1 = interval | (0 << 14);
        shadowOAM[11 + length].attr2 = ((0)*32 + (11));
    }


    shadowOAM[20].attr0 = 13 | (0 << 14);
    shadowOAM[20].attr1 = (interval + 8) | (0 << 14);
    shadowOAM[20].attr2 = ((0)*32 + (12));


    if ((74 + (player.distanceTraveled / speed)) == interval + 8)
    {
        endGame = 1;
    }
}

void updateClothes()
{





    for (int i = 0; i < 5; i++)
    {
        if (clothes[i].active == 1)
        {

            if (collision(player.col, player.row, player.width, player.height, clothes[i].col, clothes[i].row, clothes[i].width, clothes[i].height))
            {
                itemsCollected++;
                clothes[i].active = 0;
                clothes[i].row = 10;
                clothes[i].col = 240 + 10;
                shadowOAM[i + 70].attr0 = (2 << 8) | (0 << 14);
            }

            if (time % 2 == 0)
            {
                clothes[i].col -= 2;
            }
            if (clothes[i].col < 1)
            {
                clothes[i].active = 0;
                clothes[i].row = 10;
                clothes[i].col = 240;
                shadowOAM[i + 70].attr0 = (2 << 8) | (0 << 14);
            }

            shadowOAM[i + 70].attr0 = clothes[i].row | (0 << 14);
            shadowOAM[i + 70].attr1 = clothes[i].col | (0 << 14);
        }
    }
    if (time % 257 == 0)
    {
        CLOTHING rand = findRandClothing();
        clothes[rand.id].row = rand.initRow;
        clothes[rand.id].col = 240;
        clothes[rand.id].active = 1;
    }
}
CLOTHING findRandClothing()
{
    CLOTHING rands[5];
    int count = 0;
    for (int i = 0; i < 5; i++)
    {
        if (clothes[i].active == 0)
        {
            rands[count] = clothes[i];
            count++;
        }
    }
    return rands[rand() % count];
}

void updateLives(int lives)
{
    if (lives == 2)
    {
        shadowOAM[5].attr0 = 4 | (0 << 14);
        shadowOAM[5].attr1 = 35 | (0 << 14);
        shadowOAM[5].attr2 = ((4)*32 + (1));
    }
    else if (lives == 1)
    {
        shadowOAM[5].attr0 = 4 | (0 << 14);
        shadowOAM[5].attr1 = 35 | (0 << 14);
        shadowOAM[5].attr2 = ((4)*32 + (0));
    }
    else
    {
        shadowOAM[5].attr0 = 4 | (0 << 14);
        shadowOAM[5].attr1 = 35 | (0 << 14);
        shadowOAM[5].attr2 = ((4)*32 + (2));
    }


    shadowOAM[4].attr0 = 4 | (1 << 14);
    shadowOAM[4].attr1 = 2 | (1 << 14);
    shadowOAM[4].attr2 = ((2)*32 + (0));
}

void updateItems(int items)
{
    if (items >= 10)
    {

        shadowOAM[7].attr0 = 4 | (0 << 14);
        shadowOAM[7].attr1 = 215 | (0 << 14);
        shadowOAM[7].attr2 = ((4)*32 + ((items / 10) - 1));


        shadowOAM[8].attr0 = 4 | (0 << 14);
        shadowOAM[8].attr1 = 222 | (0 << 14);
        shadowOAM[8].attr2 = ((4)*32 + ((items - 1) % 10));
    }
    else if (items > 0)
    {

        shadowOAM[7].attr0 = 4 | (0 << 14);
        shadowOAM[7].attr1 = 215 | (0 << 14);
        shadowOAM[7].attr2 = ((4)*32 + (items - 1));
    }
    else
    {

        shadowOAM[7].attr0 = 4 | (0 << 14);
        shadowOAM[7].attr1 = 215 | (0 << 14);
        shadowOAM[7].attr2 = ((4)*32 + (9));
    }


    shadowOAM[6].attr0 = 4 | (1 << 14);
    shadowOAM[6].attr1 = 182 | (1 << 14);
    shadowOAM[6].attr2 = ((3)*32 + (0));
}

void updatePlayer()
{

    if (time % 2 == 0)
    {
        hOff++;
        player.distanceTraveled++;
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))) && player.row > 80)
    {
        player.row--;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7))) && player.row + player.height < 160 - 1)
    {
        player.row++;
    }


    if ((!(~(oldButtons) & ((1 << 0))) && (~buttons & ((1 << 0)))))
    {
        fireBullet();
    }

    shadowOAM[0].attr0 = player.row | (1 << 14);
    shadowOAM[0].attr1 = player.col | (0 << 14);

    (*(volatile unsigned short *)0x04000010) = hOff;
    (*(volatile unsigned short *)0x04000014) = hOff / 20;
}

void updateTwig()
{
    for (int i = 0; i < 10; i++)
    {
        if (twig[i].active == 1)
        {

            if (!cheat && collision(twig[i].col, twig[i].row, twig[i].width, twig[i].height, player.col, player.row, player.width, player.height))
            {
                livesremaining = livesremaining - 1;
                twig[i].active = 0;
                twig[i].row = 10;
                twig[i].col = 240;
                shadowOAM[i + 50].attr0 = (2 << 8) | (0 << 14);
            }

            if (time % 2 == 0)
            {
                twig[i].col -= 2;
            }
            if (twig[i].col < 1)
            {
                twig[i].active = 0;
                twig[i].row = 10;
                twig[i].col = 240;
                shadowOAM[i + 50].attr0 = (2 << 8) | (0 << 14);
            }
            shadowOAM[i + 50].attr0 = twig[i].row | (0 << 14);
            shadowOAM[i + 50].attr1 = twig[i].col | (1 << 14);
        }
    }
    if (time % 100 == 0)
    {
        ENEMY rand = findRandTwig();
        twig[rand.id].row = rand.initRow;
        twig[rand.id].col = 240;
        twig[rand.id].active = 1;
    }
}

ENEMY findRandTwig()
{
    ENEMY rands[10];
    int count = 0;
    for (int i = 0; i < 10; i++)
    {
        if (twig[i].active == 0)
        {
            rands[count] = twig[i];
            count++;
        }
    }
    return rands[rand() % count];
}

void drawGame()
{
    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR *)(0x7000000)), 512);
}

void fireBullet()
{
    for (int i = 0; i < 1; i++)
    {
        if (bullets[i].active == 0)
        {
            bullets[i].row = player.row;
            bullets[i].col = player.col + player.width;
            bullets[i].active = 1;
            bullets[i].erased = 0;
            break;
        }
    }
}

void updateBullets()
{
    for (int i = 0; i < 1; i++)
    {
        if (bullets[i].active == 1)
        {
            shadowOAM[i + 30].attr0 = bullets[i].row | (0 << 14);
            shadowOAM[i + 30].attr1 = bullets[i].col | (0 << 14);
            bullets[i].col += 1;
            bullets[i].distTraveled += 1;


            for (int j = 0; j < 10; j++)
            {
                if (twig[j].active == 1)
                {
                    if (collision(bullets[i].col, bullets[i].row, bullets[i].width, bullets[i].height, twig[j].col, twig[j].row, twig[j].width, twig[j].height))
                    {
                        twig[j].active = 0;
                        twig[j].row = 10;
                        twig[j].col = 240;
                        shadowOAM[j + 50].attr0 = (2 << 8) | (0 << 14);
                        bullets[i].active = 0;
                        bullets[i].distTraveled = 0;
                        shadowOAM[i + 30].attr0 = (2 << 8) | (0 << 14);
                    }
                }
            }
        }
        if (bullets[i].distTraveled > 50)
        {
            bullets[i].active = 0;
            bullets[i].distTraveled = 0;
            shadowOAM[i + 30].attr0 = (2 << 8) | (0 << 14);
        }
    }
}
