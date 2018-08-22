# DO NOT EDIT! GENERATED AUTOMATICALLY!
# Copyright (C) 2002-2018 Free Software Foundation, Inc.
#
# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this file.  If not, see <https://www.gnu.org/licenses/>.
#
# As a special exception to the GNU General Public License,
# this file may be distributed as part of a program that
# contains a configuration script generated by Autoconf, under
# the same distribution terms as the rest of that program.
#
# Generated by gnulib-tool.
#
# This file represents the compiled summary of the specification in
# gnulib-cache.m4. It lists the computed macro invocations that need
# to be invoked from configure.ac.
# In projects that use version control, this file can be treated like
# other built files.


# This macro should be invoked from ./configure.ac, in the section
# "Checks for programs", right after AC_PROG_CC, and certainly before
# any checks for libraries, header files, types and library functions.
AC_DEFUN([gl_EARLY],
[
  m4_pattern_forbid([^gl_[A-Z]])dnl the gnulib macro namespace
  m4_pattern_allow([^gl_ES$])dnl a valid locale name
  m4_pattern_allow([^gl_LIBOBJS$])dnl a variable
  m4_pattern_allow([^gl_LTLIBOBJS$])dnl a variable

  # Pre-early section.
  AC_REQUIRE([gl_USE_SYSTEM_EXTENSIONS])
  AC_REQUIRE([gl_PROG_AR_RANLIB])

  AC_REQUIRE([AM_PROG_CC_C_O])
  # Code from module absolute-header:
  # Code from module alignof:
  # Code from module alloca-opt:
  # Code from module announce-gen:
  # Code from module argmatch:
  # Code from module assert:
  # Code from module binary-io:
  # Code from module bitrotate:
  # Code from module c-ctype:
  # Code from module c-strcase:
  # Code from module c-strcaseeq:
  # Code from module calloc-posix:
  # Code from module cloexec:
  # Code from module close:
  # Code from module close-stream:
  # Code from module closeout:
  # Code from module concat-filename:
  # Code from module config-h:
  # Code from module configmake:
  # Code from module dirname:
  # Code from module dirname-lgpl:
  # Code from module do-release-commit-and-tag:
  # Code from module dosname:
  # Code from module double-slash-root:
  # Code from module dup2:
  # Code from module environ:
  # Code from module errno:
  # Code from module error:
  # Code from module exitfail:
  # Code from module extensions:
  # Code from module extern-inline:
  # Code from module fatal-signal:
  # Code from module fcntl:
  # Code from module fcntl-h:
  # Code from module fd-hook:
  # Code from module fd-safer-flag:
  # Code from module fdl:
  # Code from module filename:
  # Code from module float:
  # Code from module fopen:
  # Code from module fopen-safer:
  # Code from module fpending:
  # Code from module fpieee:
  AC_REQUIRE([gl_FP_IEEE])
  # Code from module fprintf-posix:
  # Code from module fpucw:
  # Code from module frexp-nolibm:
  # Code from module frexpl-nolibm:
  # Code from module fseterr:
  # Code from module fstat:
  # Code from module gendocs:
  # Code from module getdtablesize:
  # Code from module getopt-gnu:
  # Code from module getopt-posix:
  # Code from module getprogname:
  # Code from module gettext:
  # Code from module gettext-h:
  # Code from module git-version-gen:
  # Code from module gitlog-to-changelog:
  # Code from module gnu-web-doc-update:
  # Code from module gnumakefile:
  # Code from module gnupload:
  # Code from module gpl-3.0:
  # Code from module hard-locale:
  # Code from module hash:
  # Code from module havelib:
  # Code from module host-cpu-c-abi:
  # Code from module include_next:
  # Code from module intprops:
  # Code from module inttypes:
  # Code from module inttypes-incomplete:
  # Code from module isnan:
  # Code from module isnand:
  # Code from module isnand-nolibm:
  # Code from module isnanf:
  # Code from module isnanf-nolibm:
  # Code from module isnanl:
  # Code from module isnanl-nolibm:
  # Code from module javacomp-script:
  # Code from module javaexec-script:
  # Code from module largefile:
  AC_REQUIRE([AC_SYS_LARGEFILE])
  # Code from module ldexp:
  # Code from module ldexpl:
  # Code from module limits-h:
  # Code from module localcharset:
  # Code from module lock:
  # Code from module lstat:
  # Code from module maintainer-makefile:
  # Code from module malloc-gnu:
  # Code from module malloc-posix:
  # Code from module malloca:
  # Code from module math:
  # Code from module mbrtowc:
  # Code from module mbsinit:
  # Code from module mbswidth:
  # Code from module memchr:
  # Code from module minmax:
  # Code from module msvc-inval:
  # Code from module msvc-nothrow:
  # Code from module multiarch:
  # Code from module nocrash:
  # Code from module non-recursive-gnulib-prefix-hack:
  # Code from module obstack:
  # Code from module obstack-printf:
  # Code from module open:
  # Code from module pathmax:
  # Code from module perror:
  # Code from module pipe2:
  # Code from module pipe2-safer:
  # Code from module posix_spawn-internal:
  # Code from module posix_spawn_file_actions_addclose:
  # Code from module posix_spawn_file_actions_adddup2:
  # Code from module posix_spawn_file_actions_addopen:
  # Code from module posix_spawn_file_actions_destroy:
  # Code from module posix_spawn_file_actions_init:
  # Code from module posix_spawnattr_destroy:
  # Code from module posix_spawnattr_init:
  # Code from module posix_spawnattr_setflags:
  # Code from module posix_spawnattr_setsigmask:
  # Code from module posix_spawnp:
  # Code from module printf-frexp:
  # Code from module printf-frexpl:
  # Code from module printf-posix:
  # Code from module printf-safe:
  # Code from module progname:
  # Code from module quote:
  # Code from module quotearg:
  # Code from module quotearg-simple:
  # Code from module raise:
  # Code from module rawmemchr:
  # Code from module readme-release:
  # Code from module realloc-posix:
  # Code from module sched:
  # Code from module sigaction:
  # Code from module signal-h:
  # Code from module signbit:
  # Code from module sigprocmask:
  # Code from module size_max:
  # Code from module snippet/_Noreturn:
  # Code from module snippet/arg-nonnull:
  # Code from module snippet/c++defs:
  # Code from module snippet/warn-on-use:
  # Code from module snprintf:
  # Code from module snprintf-posix:
  # Code from module spawn:
  # Code from module spawn-pipe:
  # Code from module sprintf-posix:
  # Code from module ssize_t:
  # Code from module stat:
  # Code from module stat-time:
  # Code from module stdbool:
  # Code from module stddef:
  # Code from module stdint:
  # Code from module stdio:
  # Code from module stdlib:
  # Code from module stpcpy:
  # Code from module strchrnul:
  # Code from module strdup-posix:
  # Code from module streq:
  # Code from module strerror:
  # Code from module strerror-override:
  # Code from module strerror_r-posix:
  # Code from module string:
  # Code from module strndup:
  # Code from module strnlen:
  # Code from module strverscmp:
  # Code from module sys_stat:
  # Code from module sys_types:
  # Code from module sys_wait:
  # Code from module threadlib:
  gl_THREADLIB_EARLY
  # Code from module time:
  # Code from module unistd:
  # Code from module unistd-safer:
  # Code from module unitypes:
  # Code from module uniwidth/base:
  # Code from module uniwidth/width:
  # Code from module unlink:
  # Code from module unlocked-io:
  # Code from module unsetenv:
  # Code from module update-copyright:
  # Code from module useless-if-before-free:
  # Code from module vasnprintf:
  # Code from module vc-list-files:
  # Code from module verify:
  # Code from module vfprintf-posix:
  # Code from module vsnprintf:
  # Code from module vsnprintf-posix:
  # Code from module vsprintf-posix:
  # Code from module wait-process:
  # Code from module waitpid:
  # Code from module warnings:
  # Code from module wchar:
  # Code from module wctype-h:
  # Code from module wcwidth:
  # Code from module xalloc:
  # Code from module xalloc-die:
  # Code from module xalloc-oversized:
  # Code from module xconcat-filename:
  # Code from module xmemdup0:
  # Code from module xsize:
  # Code from module xstrndup:
])

# This macro should be invoked from ./configure.ac, in the section
# "Check for header files, types and library functions".
AC_DEFUN([gl_INIT],
[
  AM_CONDITIONAL([GL_COND_LIBTOOL], [false])
  gl_cond_libtool=false
  gl_libdeps=
  gl_ltlibdeps=
  gl_m4_base='m4'
  m4_pushdef([AC_LIBOBJ], m4_defn([gl_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gl_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gl_LIBSOURCES]))
  m4_pushdef([gl_LIBSOURCES_LIST], [])
  m4_pushdef([gl_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='lib'
  gl_FUNC_ALLOCA
  gl_ASSERT
  gl_FUNC_CALLOC_POSIX
  if test $REPLACE_CALLOC = 1; then
    AC_LIBOBJ([calloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([calloc-posix])
  gl_MODULE_INDICATOR_FOR_TESTS([cloexec])
  gl_FUNC_CLOSE
  if test $REPLACE_CLOSE = 1; then
    AC_LIBOBJ([close])
  fi
  gl_UNISTD_MODULE_INDICATOR([close])
  gl_CLOSE_STREAM
  gl_MODULE_INDICATOR([close-stream])
  gl_CLOSEOUT
  gl_CONFIG_H
  gl_CONFIGMAKE_PREP
  gl_DIRNAME
  gl_MODULE_INDICATOR([dirname])
  gl_DIRNAME_LGPL
  gl_DOUBLE_SLASH_ROOT
  gl_FUNC_DUP2
  if test $HAVE_DUP2 = 0 || test $REPLACE_DUP2 = 1; then
    AC_LIBOBJ([dup2])
    gl_PREREQ_DUP2
  fi
  gl_UNISTD_MODULE_INDICATOR([dup2])
  gl_ENVIRON
  gl_UNISTD_MODULE_INDICATOR([environ])
  gl_HEADER_ERRNO_H
  gl_ERROR
  if test $ac_cv_lib_error_at_line = no; then
    AC_LIBOBJ([error])
    gl_PREREQ_ERROR
  fi
  m4_ifdef([AM_XGETTEXT_OPTION],
    [AM_][XGETTEXT_OPTION([--flag=error:3:c-format])
     AM_][XGETTEXT_OPTION([--flag=error_at_line:5:c-format])])
  AC_REQUIRE([gl_EXTERN_INLINE])
  gl_FATAL_SIGNAL
  gl_FUNC_FCNTL
  if test $HAVE_FCNTL = 0 || test $REPLACE_FCNTL = 1; then
    AC_LIBOBJ([fcntl])
  fi
  gl_FCNTL_MODULE_INDICATOR([fcntl])
  gl_FCNTL_H
  gl_MODULE_INDICATOR([fd-safer-flag])
  gl_FLOAT_H
  if test $REPLACE_FLOAT_LDBL = 1; then
    AC_LIBOBJ([float])
  fi
  if test $REPLACE_ITOLD = 1; then
    AC_LIBOBJ([itold])
  fi
  gl_FUNC_FOPEN
  if test $REPLACE_FOPEN = 1; then
    AC_LIBOBJ([fopen])
    gl_PREREQ_FOPEN
  fi
  gl_STDIO_MODULE_INDICATOR([fopen])
  gl_MODULE_INDICATOR([fopen-safer])
  gl_FUNC_FPENDING
  if test $gl_cv_func___fpending = no; then
    AC_LIBOBJ([fpending])
  fi
  gl_FUNC_FPRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([fprintf-posix])
  gl_FUNC_FREXP_NO_LIBM
  if test $gl_func_frexp_no_libm != yes; then
    AC_LIBOBJ([frexp])
  fi
  gl_MATH_MODULE_INDICATOR([frexp])
  gl_FUNC_FREXPL_NO_LIBM
  if test $HAVE_DECL_FREXPL = 0 || test $gl_func_frexpl_no_libm = no; then
    AC_LIBOBJ([frexpl])
  fi
  gl_MATH_MODULE_INDICATOR([frexpl])
  gl_FUNC_FSETERR
  if test $ac_cv_func___fseterr = no; then
    AC_LIBOBJ([fseterr])
  fi
  gl_FUNC_FSTAT
  if test $REPLACE_FSTAT = 1; then
    AC_LIBOBJ([fstat])
    case "$host_os" in
      mingw*)
        AC_LIBOBJ([stat-w32])
        ;;
    esac
    gl_PREREQ_FSTAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([fstat])
  gl_FUNC_GETDTABLESIZE
  if test $HAVE_GETDTABLESIZE = 0 || test $REPLACE_GETDTABLESIZE = 1; then
    AC_LIBOBJ([getdtablesize])
    gl_PREREQ_GETDTABLESIZE
  fi
  gl_UNISTD_MODULE_INDICATOR([getdtablesize])
  gl_FUNC_GETOPT_GNU
  dnl Because of the way gl_FUNC_GETOPT_GNU is implemented (the gl_getopt_required
  dnl mechanism), there is no need to do any AC_LIBOBJ or AC_SUBST here; they are
  dnl done in the getopt-posix module.
  gl_FUNC_GETOPT_POSIX
  if test $REPLACE_GETOPT = 1; then
    AC_LIBOBJ([getopt])
    AC_LIBOBJ([getopt1])
    dnl Arrange for unistd.h to include getopt.h.
    GNULIB_GL_UNISTD_H_GETOPT=1
  fi
  AC_SUBST([GNULIB_GL_UNISTD_H_GETOPT])
  gl_FUNC_GETPROGNAME
  dnl you must add AM_GNU_GETTEXT([external]) or similar to configure.ac.
  AM_GNU_GETTEXT_VERSION([0.18.1])
  AC_SUBST([LIBINTL])
  AC_SUBST([LTLIBINTL])
  # Autoconf 2.61a.99 and earlier don't support linking a file only
  # in VPATH builds.  But since GNUmakefile is for maintainer use
  # only, it does not matter if we skip the link with older autoconf.
  # Automake 1.10.1 and earlier try to remove GNUmakefile in non-VPATH
  # builds, so use a shell variable to bypass this.
  GNUmakefile=GNUmakefile
  m4_if(m4_version_compare([2.61a.100],
          m4_defn([m4_PACKAGE_VERSION])), [1], [],
        [AC_CONFIG_LINKS([$GNUmakefile:$GNUmakefile], [],
          [GNUmakefile=$GNUmakefile])])
  gl_HARD_LOCALE
  AC_REQUIRE([gl_HOST_CPU_C_ABI])
  gl_INTTYPES_H
  gl_INTTYPES_INCOMPLETE
  gl_ISNAN
  gl_MATH_MODULE_INDICATOR([isnan])
  gl_FUNC_ISNAND
  m4_ifdef([gl_ISNAN], [
    AC_REQUIRE([gl_ISNAN])
  ])
  if test $HAVE_ISNAND = 0 || test $REPLACE_ISNAN = 1; then
    AC_LIBOBJ([isnand])
    gl_PREREQ_ISNAND
  fi
  gl_MATH_MODULE_INDICATOR([isnand])
  gl_FUNC_ISNAND_NO_LIBM
  if test $gl_func_isnand_no_libm != yes; then
    AC_LIBOBJ([isnand])
    gl_PREREQ_ISNAND
  fi
  gl_FUNC_ISNANF
  m4_ifdef([gl_ISNAN], [
    AC_REQUIRE([gl_ISNAN])
  ])
  if test $HAVE_ISNANF = 0 || test $REPLACE_ISNAN = 1; then
    AC_LIBOBJ([isnanf])
    gl_PREREQ_ISNANF
  fi
  gl_MATH_MODULE_INDICATOR([isnanf])
  gl_FUNC_ISNANF_NO_LIBM
  if test $gl_func_isnanf_no_libm != yes; then
    AC_LIBOBJ([isnanf])
    gl_PREREQ_ISNANF
  fi
  gl_FUNC_ISNANL
  m4_ifdef([gl_ISNAN], [
    AC_REQUIRE([gl_ISNAN])
  ])
  if test $HAVE_ISNANL = 0 || test $REPLACE_ISNAN = 1; then
    AC_LIBOBJ([isnanl])
    gl_PREREQ_ISNANL
  fi
  gl_MATH_MODULE_INDICATOR([isnanl])
  gl_FUNC_ISNANL_NO_LIBM
  if test $gl_func_isnanl_no_libm != yes; then
    AC_LIBOBJ([isnanl])
    gl_PREREQ_ISNANL
  fi
  # You need to invoke gt_JAVACOMP yourself, possibly with arguments.
  AC_CONFIG_FILES([javacomp.sh:build-aux/javacomp.sh.in])
  # You need to invoke gt_JAVAEXEC yourself, possibly with arguments.
  AC_CONFIG_FILES([javaexec.sh:build-aux/javaexec.sh.in])
  AC_REQUIRE([gl_LARGEFILE])
  gl_FUNC_LDEXP
  gl_FUNC_LDEXPL
  if test $HAVE_DECL_LDEXPL = 0 || test $gl_func_ldexpl = no; then
    AC_LIBOBJ([ldexpl])
  fi
  gl_MATH_MODULE_INDICATOR([ldexpl])
  gl_LIMITS_H
  gl_LOCALCHARSET
  LOCALCHARSET_TESTS_ENVIRONMENT="CHARSETALIASDIR=\"\$(abs_top_builddir)/$gl_source_base\""
  AC_SUBST([LOCALCHARSET_TESTS_ENVIRONMENT])
  gl_LOCK
  gl_MODULE_INDICATOR([lock])
  gl_FUNC_LSTAT
  if test $REPLACE_LSTAT = 1; then
    AC_LIBOBJ([lstat])
    gl_PREREQ_LSTAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([lstat])
  AC_CONFIG_COMMANDS_PRE([m4_ifdef([AH_HEADER],
    [AC_SUBST([CONFIG_INCLUDE], m4_defn([AH_HEADER]))])])
  AC_REQUIRE([AC_PROG_SED])
  gl_FUNC_MALLOC_GNU
  if test $REPLACE_MALLOC = 1; then
    AC_LIBOBJ([malloc])
  fi
  gl_MODULE_INDICATOR([malloc-gnu])
  gl_FUNC_MALLOC_POSIX
  if test $REPLACE_MALLOC = 1; then
    AC_LIBOBJ([malloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([malloc-posix])
  gl_MALLOCA
  gl_MATH_H
  gl_FUNC_MBRTOWC
  if test $HAVE_MBRTOWC = 0 || test $REPLACE_MBRTOWC = 1; then
    AC_LIBOBJ([mbrtowc])
    gl_PREREQ_MBRTOWC
  fi
  gl_WCHAR_MODULE_INDICATOR([mbrtowc])
  gl_FUNC_MBSINIT
  if test $HAVE_MBSINIT = 0 || test $REPLACE_MBSINIT = 1; then
    AC_LIBOBJ([mbsinit])
    gl_PREREQ_MBSINIT
  fi
  gl_WCHAR_MODULE_INDICATOR([mbsinit])
  gl_MBSWIDTH
  gl_FUNC_MEMCHR
  if test $HAVE_MEMCHR = 0 || test $REPLACE_MEMCHR = 1; then
    AC_LIBOBJ([memchr])
    gl_PREREQ_MEMCHR
  fi
  gl_STRING_MODULE_INDICATOR([memchr])
  gl_MINMAX
  AC_REQUIRE([gl_MSVC_INVAL])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-inval])
  fi
  AC_REQUIRE([gl_MSVC_NOTHROW])
  if test $HAVE_MSVC_INVALID_PARAMETER_HANDLER = 1; then
    AC_LIBOBJ([msvc-nothrow])
  fi
  gl_MODULE_INDICATOR([msvc-nothrow])
  gl_MULTIARCH
  dnl Run our hack near the end, just before config.status creation.
  dnl It must happen late, i.e., after gl_LIBOBJS has been finalized.
  AC_CONFIG_COMMANDS_PRE([
    dnl Note we can't currently pass $gl_source_base instead of 'lib',
    dnl because $gl_source_base is unset or the wrong value in the references
    dnl generated in m4/non-recursive-gnulib-prefix-hack.m4
    gl_NON_RECURSIVE_GNULIB_PREFIX_HACK([lib])
    ])
  AC_FUNC_OBSTACK
  dnl Note: AC_FUNC_OBSTACK does AC_LIBSOURCES([obstack.h, obstack.c]).
  gl_FUNC_OBSTACK_PRINTF
  if test $ac_cv_func_obstack_printf = no || test $REPLACE_OBSTACK_PRINTF = 1; then
    AC_LIBOBJ([obstack_printf])
  fi
  gl_STDIO_MODULE_INDICATOR([obstack-printf])
  gl_FUNC_OPEN
  if test $REPLACE_OPEN = 1; then
    AC_LIBOBJ([open])
    gl_PREREQ_OPEN
  fi
  gl_FCNTL_MODULE_INDICATOR([open])
  gl_PATHMAX
  gl_FUNC_PERROR
  if test $REPLACE_PERROR = 1; then
    AC_LIBOBJ([perror])
  fi
  gl_STRING_MODULE_INDICATOR([perror])
  gl_FUNC_PIPE2
  gl_UNISTD_MODULE_INDICATOR([pipe2])
  gl_MODULE_INDICATOR([pipe2-safer])
  gl_FUNC_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDCLOSE = 1; then
    AC_LIBOBJ([spawn_faction_addclose])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawn_file_actions_addclose])
  gl_FUNC_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDDUP2 = 1; then
    AC_LIBOBJ([spawn_faction_adddup2])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawn_file_actions_adddup2])
  gl_FUNC_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN_FILE_ACTIONS_ADDOPEN = 1; then
    AC_LIBOBJ([spawn_faction_addopen])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawn_file_actions_addopen])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawn_faction_destroy])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawn_file_actions_destroy])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawn_faction_init])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawn_file_actions_init])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawnattr_destroy])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawnattr_destroy])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawnattr_init])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawnattr_init])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawnattr_setflags])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawnattr_setflags])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawnattr_setsigmask])
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawnattr_setsigmask])
  gl_POSIX_SPAWN
  if test $HAVE_POSIX_SPAWN = 0 || test $REPLACE_POSIX_SPAWN = 1; then
    AC_LIBOBJ([spawnp])
    AC_LIBOBJ([spawni])
    gl_PREREQ_POSIX_SPAWN_INTERNAL
  fi
  gl_SPAWN_MODULE_INDICATOR([posix_spawnp])
  gl_FUNC_PRINTF_FREXP
  gl_FUNC_PRINTF_FREXPL
  gl_FUNC_PRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([printf-posix])
  m4_divert_text([INIT_PREPARE], [gl_printf_safe=yes])
  AC_CHECK_DECLS([program_invocation_name], [], [], [#include <errno.h>])
  AC_CHECK_DECLS([program_invocation_short_name], [], [], [#include <errno.h>])
  gl_QUOTE
  gl_QUOTEARG
  gl_FUNC_RAISE
  if test $HAVE_RAISE = 0 || test $REPLACE_RAISE = 1; then
    AC_LIBOBJ([raise])
    gl_PREREQ_RAISE
  fi
  gl_SIGNAL_MODULE_INDICATOR([raise])
  gl_FUNC_RAWMEMCHR
  if test $HAVE_RAWMEMCHR = 0; then
    AC_LIBOBJ([rawmemchr])
    gl_PREREQ_RAWMEMCHR
  fi
  gl_STRING_MODULE_INDICATOR([rawmemchr])
  gl_FUNC_REALLOC_POSIX
  if test $REPLACE_REALLOC = 1; then
    AC_LIBOBJ([realloc])
  fi
  gl_STDLIB_MODULE_INDICATOR([realloc-posix])
  gl_SCHED_H
  gl_SIGACTION
  if test $HAVE_SIGACTION = 0; then
    AC_LIBOBJ([sigaction])
    gl_PREREQ_SIGACTION
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigaction])
  gl_SIGNAL_H
  gl_SIGNBIT
  if test $REPLACE_SIGNBIT = 1; then
    AC_LIBOBJ([signbitf])
    AC_LIBOBJ([signbitd])
    AC_LIBOBJ([signbitl])
  fi
  gl_MATH_MODULE_INDICATOR([signbit])
  gl_SIGNALBLOCKING
  if test $HAVE_POSIX_SIGNALBLOCKING = 0; then
    AC_LIBOBJ([sigprocmask])
    gl_PREREQ_SIGPROCMASK
  fi
  gl_SIGNAL_MODULE_INDICATOR([sigprocmask])
  gl_SIZE_MAX
  gl_FUNC_SNPRINTF
  gl_STDIO_MODULE_INDICATOR([snprintf])
  gl_MODULE_INDICATOR([snprintf])
  gl_FUNC_SNPRINTF_POSIX
  gl_SPAWN_H
  gl_SPAWN_PIPE
  gl_FUNC_SPRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([sprintf-posix])
  gt_TYPE_SSIZE_T
  gl_FUNC_STAT
  if test $REPLACE_STAT = 1; then
    AC_LIBOBJ([stat])
    case "$host_os" in
      mingw*)
        AC_LIBOBJ([stat-w32])
        ;;
    esac
    gl_PREREQ_STAT
  fi
  gl_SYS_STAT_MODULE_INDICATOR([stat])
  gl_STAT_TIME
  gl_STAT_BIRTHTIME
  AM_STDBOOL_H
  gl_STDDEF_H
  gl_STDINT_H
  gl_STDIO_H
  gl_STDLIB_H
  gl_FUNC_STPCPY
  if test $HAVE_STPCPY = 0; then
    AC_LIBOBJ([stpcpy])
    gl_PREREQ_STPCPY
  fi
  gl_STRING_MODULE_INDICATOR([stpcpy])
  gl_FUNC_STRCHRNUL
  if test $HAVE_STRCHRNUL = 0 || test $REPLACE_STRCHRNUL = 1; then
    AC_LIBOBJ([strchrnul])
    gl_PREREQ_STRCHRNUL
  fi
  gl_STRING_MODULE_INDICATOR([strchrnul])
  gl_FUNC_STRDUP_POSIX
  if test $ac_cv_func_strdup = no || test $REPLACE_STRDUP = 1; then
    AC_LIBOBJ([strdup])
    gl_PREREQ_STRDUP
  fi
  gl_STRING_MODULE_INDICATOR([strdup])
  gl_FUNC_STRERROR
  if test $REPLACE_STRERROR = 1; then
    AC_LIBOBJ([strerror])
  fi
  gl_MODULE_INDICATOR([strerror])
  gl_STRING_MODULE_INDICATOR([strerror])
  AC_REQUIRE([gl_HEADER_ERRNO_H])
  AC_REQUIRE([gl_FUNC_STRERROR_0])
  if test -n "$ERRNO_H" || test $REPLACE_STRERROR_0 = 1; then
    AC_LIBOBJ([strerror-override])
    gl_PREREQ_SYS_H_WINSOCK2
  fi
  gl_FUNC_STRERROR_R
  if test $HAVE_DECL_STRERROR_R = 0 || test $REPLACE_STRERROR_R = 1; then
    AC_LIBOBJ([strerror_r])
    gl_PREREQ_STRERROR_R
  fi
  gl_STRING_MODULE_INDICATOR([strerror_r])
  dnl For the modules argp, error.
  gl_MODULE_INDICATOR([strerror_r-posix])
  gl_HEADER_STRING_H
  gl_FUNC_STRNDUP
  if test $HAVE_STRNDUP = 0 || test $REPLACE_STRNDUP = 1; then
    AC_LIBOBJ([strndup])
  fi
  gl_STRING_MODULE_INDICATOR([strndup])
  gl_FUNC_STRNLEN
  if test $HAVE_DECL_STRNLEN = 0 || test $REPLACE_STRNLEN = 1; then
    AC_LIBOBJ([strnlen])
    gl_PREREQ_STRNLEN
  fi
  gl_STRING_MODULE_INDICATOR([strnlen])
  gl_FUNC_STRVERSCMP
  if test $HAVE_STRVERSCMP = 0; then
    AC_LIBOBJ([strverscmp])
    gl_PREREQ_STRVERSCMP
  fi
  gl_STRING_MODULE_INDICATOR([strverscmp])
  gl_HEADER_SYS_STAT_H
  AC_PROG_MKDIR_P
  gl_SYS_TYPES_H
  AC_PROG_MKDIR_P
  gl_SYS_WAIT_H
  AC_PROG_MKDIR_P
  gl_THREADLIB
  gl_HEADER_TIME_H
  gl_UNISTD_H
  gl_UNISTD_SAFER
  gl_LIBUNISTRING_LIBHEADER([0.9.4], [unitypes.h])
  gl_LIBUNISTRING_LIBHEADER([0.9.4], [uniwidth.h])
  gl_LIBUNISTRING_MODULE([0.9.8], [uniwidth/width])
  gl_FUNC_UNLINK
  if test $REPLACE_UNLINK = 1; then
    AC_LIBOBJ([unlink])
  fi
  gl_UNISTD_MODULE_INDICATOR([unlink])
  gl_FUNC_GLIBC_UNLOCKED_IO
  gl_FUNC_UNSETENV
  if test $HAVE_UNSETENV = 0 || test $REPLACE_UNSETENV = 1; then
    AC_LIBOBJ([unsetenv])
    gl_PREREQ_UNSETENV
  fi
  gl_STDLIB_MODULE_INDICATOR([unsetenv])
  gl_FUNC_VASNPRINTF
  gl_FUNC_VFPRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([vfprintf-posix])
  gl_FUNC_VSNPRINTF
  gl_STDIO_MODULE_INDICATOR([vsnprintf])
  gl_FUNC_VSNPRINTF_POSIX
  gl_FUNC_VSPRINTF_POSIX
  gl_STDIO_MODULE_INDICATOR([vsprintf-posix])
  gl_WAIT_PROCESS
  gl_FUNC_WAITPID
  if test $HAVE_WAITPID = 0; then
    AC_LIBOBJ([waitpid])
  fi
  gl_SYS_WAIT_MODULE_INDICATOR([waitpid])
  gl_WCHAR_H
  gl_WCTYPE_H
  gl_FUNC_WCWIDTH
  if test $HAVE_WCWIDTH = 0 || test $REPLACE_WCWIDTH = 1; then
    AC_LIBOBJ([wcwidth])
  fi
  gl_WCHAR_MODULE_INDICATOR([wcwidth])
  gl_XALLOC
  AC_LIBOBJ([xmemdup0])
  gl_XSIZE
  gl_XSTRNDUP
  # End of code from modules
  m4_ifval(gl_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gl_LIBSOURCES_DIR])[ ||
      for gl_file in ]gl_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gl_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gl_LIBSOURCES_DIR])
  m4_popdef([gl_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gl_libobjs=
    gl_ltlibobjs=
    if test -n "$gl_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gl_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gl_libobjs="$gl_libobjs $i.$ac_objext"
        gl_ltlibobjs="$gl_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gl_LIBOBJS], [$gl_libobjs])
    AC_SUBST([gl_LTLIBOBJS], [$gl_ltlibobjs])
  ])
  gltests_libdeps=
  gltests_ltlibdeps=
  m4_pushdef([AC_LIBOBJ], m4_defn([gltests_LIBOBJ]))
  m4_pushdef([AC_REPLACE_FUNCS], m4_defn([gltests_REPLACE_FUNCS]))
  m4_pushdef([AC_LIBSOURCES], m4_defn([gltests_LIBSOURCES]))
  m4_pushdef([gltests_LIBSOURCES_LIST], [])
  m4_pushdef([gltests_LIBSOURCES_DIR], [])
  gl_COMMON
  gl_source_base='tests'
changequote(,)dnl
  gltests_WITNESS=IN_`echo "${PACKAGE-$PACKAGE_TARNAME}" | LC_ALL=C tr abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ | LC_ALL=C sed -e 's/[^A-Z0-9_]/_/g'`_GNULIB_TESTS
changequote([, ])dnl
  AC_SUBST([gltests_WITNESS])
  gl_module_indicator_condition=$gltests_WITNESS
  m4_pushdef([gl_MODULE_INDICATOR_CONDITION], [$gl_module_indicator_condition])
  m4_popdef([gl_MODULE_INDICATOR_CONDITION])
  m4_ifval(gltests_LIBSOURCES_LIST, [
    m4_syscmd([test ! -d ]m4_defn([gltests_LIBSOURCES_DIR])[ ||
      for gl_file in ]gltests_LIBSOURCES_LIST[ ; do
        if test ! -r ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file ; then
          echo "missing file ]m4_defn([gltests_LIBSOURCES_DIR])[/$gl_file" >&2
          exit 1
        fi
      done])dnl
      m4_if(m4_sysval, [0], [],
        [AC_FATAL([expected source file, required through AC_LIBSOURCES, not found])])
  ])
  m4_popdef([gltests_LIBSOURCES_DIR])
  m4_popdef([gltests_LIBSOURCES_LIST])
  m4_popdef([AC_LIBSOURCES])
  m4_popdef([AC_REPLACE_FUNCS])
  m4_popdef([AC_LIBOBJ])
  AC_CONFIG_COMMANDS_PRE([
    gltests_libobjs=
    gltests_ltlibobjs=
    if test -n "$gltests_LIBOBJS"; then
      # Remove the extension.
      sed_drop_objext='s/\.o$//;s/\.obj$//'
      for i in `for i in $gltests_LIBOBJS; do echo "$i"; done | sed -e "$sed_drop_objext" | sort | uniq`; do
        gltests_libobjs="$gltests_libobjs $i.$ac_objext"
        gltests_ltlibobjs="$gltests_ltlibobjs $i.lo"
      done
    fi
    AC_SUBST([gltests_LIBOBJS], [$gltests_libobjs])
    AC_SUBST([gltests_LTLIBOBJS], [$gltests_ltlibobjs])
  ])
  LIBBISON_LIBDEPS="$gl_libdeps"
  AC_SUBST([LIBBISON_LIBDEPS])
  LIBBISON_LTLIBDEPS="$gl_ltlibdeps"
  AC_SUBST([LIBBISON_LTLIBDEPS])
])

# Like AC_LIBOBJ, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_LIBOBJ], [
  AS_LITERAL_IF([$1], [gl_LIBSOURCES([$1.c])])dnl
  gl_LIBOBJS="$gl_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gl_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gl_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gl_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gl_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gl_LIBSOURCES_DIR], [lib])
      m4_append([gl_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# Like AC_LIBOBJ, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_LIBOBJ], [
  AS_LITERAL_IF([$1], [gltests_LIBSOURCES([$1.c])])dnl
  gltests_LIBOBJS="$gltests_LIBOBJS $1.$ac_objext"
])

# Like AC_REPLACE_FUNCS, except that the module name goes
# into gltests_LIBOBJS instead of into LIBOBJS.
AC_DEFUN([gltests_REPLACE_FUNCS], [
  m4_foreach_w([gl_NAME], [$1], [AC_LIBSOURCES(gl_NAME[.c])])dnl
  AC_CHECK_FUNCS([$1], , [gltests_LIBOBJ($ac_func)])
])

# Like AC_LIBSOURCES, except the directory where the source file is
# expected is derived from the gnulib-tool parameterization,
# and alloca is special cased (for the alloca-opt module).
# We could also entirely rely on EXTRA_lib..._SOURCES.
AC_DEFUN([gltests_LIBSOURCES], [
  m4_foreach([_gl_NAME], [$1], [
    m4_if(_gl_NAME, [alloca.c], [], [
      m4_define([gltests_LIBSOURCES_DIR], [tests])
      m4_append([gltests_LIBSOURCES_LIST], _gl_NAME, [ ])
    ])
  ])
])

# This macro records the list of files which have been installed by
# gnulib-tool and may be removed by future gnulib-tool invocations.
AC_DEFUN([gl_FILE_LIST], [
  build-aux/announce-gen
  build-aux/config.rpath
  build-aux/do-release-commit-and-tag
  build-aux/gendocs.sh
  build-aux/git-version-gen
  build-aux/gitlog-to-changelog
  build-aux/gnu-web-doc-update
  build-aux/gnupload
  build-aux/javacomp.sh.in
  build-aux/javaexec.sh.in
  build-aux/prefix-gnulib-mk
  build-aux/update-copyright
  build-aux/useless-if-before-free
  build-aux/vc-list-files
  doc/fdl.texi
  doc/gendocs_template
  doc/gendocs_template_min
  doc/gpl-3.0.texi
  lib/_Noreturn.h
  lib/alignof.h
  lib/alloca.in.h
  lib/arg-nonnull.h
  lib/argmatch.c
  lib/argmatch.h
  lib/asnprintf.c
  lib/basename-lgpl.c
  lib/basename.c
  lib/binary-io.c
  lib/binary-io.h
  lib/bitrotate.c
  lib/bitrotate.h
  lib/c++defs.h
  lib/c-ctype.c
  lib/c-ctype.h
  lib/c-strcase.h
  lib/c-strcasecmp.c
  lib/c-strcaseeq.h
  lib/c-strncasecmp.c
  lib/calloc.c
  lib/cloexec.c
  lib/cloexec.h
  lib/close-stream.c
  lib/close-stream.h
  lib/close.c
  lib/closeout.c
  lib/closeout.h
  lib/concat-filename.c
  lib/concat-filename.h
  lib/config.charset
  lib/dirname-lgpl.c
  lib/dirname.c
  lib/dirname.h
  lib/dosname.h
  lib/dup-safer-flag.c
  lib/dup-safer.c
  lib/dup2.c
  lib/errno.in.h
  lib/error.c
  lib/error.h
  lib/exitfail.c
  lib/exitfail.h
  lib/fatal-signal.c
  lib/fatal-signal.h
  lib/fcntl.c
  lib/fcntl.in.h
  lib/fd-hook.c
  lib/fd-hook.h
  lib/fd-safer-flag.c
  lib/fd-safer.c
  lib/filename.h
  lib/float+.h
  lib/float.c
  lib/float.in.h
  lib/fopen-safer.c
  lib/fopen.c
  lib/fpending.c
  lib/fpending.h
  lib/fprintf.c
  lib/fpucw.h
  lib/frexp.c
  lib/frexpl.c
  lib/fseterr.c
  lib/fseterr.h
  lib/fstat.c
  lib/getdtablesize.c
  lib/getopt-cdefs.in.h
  lib/getopt-core.h
  lib/getopt-ext.h
  lib/getopt-pfx-core.h
  lib/getopt-pfx-ext.h
  lib/getopt.c
  lib/getopt.in.h
  lib/getopt1.c
  lib/getopt_int.h
  lib/getprogname.c
  lib/getprogname.h
  lib/gettext.h
  lib/glthread/lock.c
  lib/glthread/lock.h
  lib/glthread/threadlib.c
  lib/hard-locale.c
  lib/hard-locale.h
  lib/hash.c
  lib/hash.h
  lib/intprops.h
  lib/inttypes.in.h
  lib/isnan.c
  lib/isnand-nolibm.h
  lib/isnand.c
  lib/isnanf-nolibm.h
  lib/isnanf.c
  lib/isnanl-nolibm.h
  lib/isnanl.c
  lib/itold.c
  lib/ldexpl.c
  lib/limits.in.h
  lib/localcharset.c
  lib/localcharset.h
  lib/lstat.c
  lib/malloc.c
  lib/malloca.c
  lib/malloca.h
  lib/math.c
  lib/math.in.h
  lib/mbrtowc.c
  lib/mbsinit.c
  lib/mbswidth.c
  lib/mbswidth.h
  lib/memchr.c
  lib/memchr.valgrind
  lib/minmax.h
  lib/msvc-inval.c
  lib/msvc-inval.h
  lib/msvc-nothrow.c
  lib/msvc-nothrow.h
  lib/obstack.c
  lib/obstack.h
  lib/obstack_printf.c
  lib/open.c
  lib/pathmax.h
  lib/perror.c
  lib/pipe-safer.c
  lib/pipe2-safer.c
  lib/pipe2.c
  lib/printf-args.c
  lib/printf-args.h
  lib/printf-frexp.c
  lib/printf-frexp.h
  lib/printf-frexpl.c
  lib/printf-frexpl.h
  lib/printf-parse.c
  lib/printf-parse.h
  lib/printf.c
  lib/progname.c
  lib/progname.h
  lib/quote.h
  lib/quotearg.c
  lib/quotearg.h
  lib/raise.c
  lib/rawmemchr.c
  lib/rawmemchr.valgrind
  lib/realloc.c
  lib/ref-add.sin
  lib/ref-del.sin
  lib/sched.in.h
  lib/sig-handler.c
  lib/sig-handler.h
  lib/sigaction.c
  lib/signal.in.h
  lib/signbitd.c
  lib/signbitf.c
  lib/signbitl.c
  lib/sigprocmask.c
  lib/size_max.h
  lib/snprintf.c
  lib/spawn-pipe.c
  lib/spawn-pipe.h
  lib/spawn.in.h
  lib/spawn_faction_addclose.c
  lib/spawn_faction_adddup2.c
  lib/spawn_faction_addopen.c
  lib/spawn_faction_destroy.c
  lib/spawn_faction_init.c
  lib/spawn_int.h
  lib/spawnattr_destroy.c
  lib/spawnattr_init.c
  lib/spawnattr_setflags.c
  lib/spawnattr_setsigmask.c
  lib/spawni.c
  lib/spawnp.c
  lib/sprintf.c
  lib/stat-time.c
  lib/stat-time.h
  lib/stat-w32.c
  lib/stat-w32.h
  lib/stat.c
  lib/stdbool.in.h
  lib/stddef.in.h
  lib/stdint.in.h
  lib/stdio--.h
  lib/stdio-impl.h
  lib/stdio-safer.h
  lib/stdio.in.h
  lib/stdlib.in.h
  lib/stpcpy.c
  lib/strchrnul.c
  lib/strchrnul.valgrind
  lib/strdup.c
  lib/streq.h
  lib/strerror-override.c
  lib/strerror-override.h
  lib/strerror.c
  lib/strerror_r.c
  lib/string.in.h
  lib/stripslash.c
  lib/strndup.c
  lib/strnlen.c
  lib/strverscmp.c
  lib/sys_stat.in.h
  lib/sys_types.in.h
  lib/sys_wait.in.h
  lib/time.in.h
  lib/unistd--.h
  lib/unistd-safer.h
  lib/unistd.c
  lib/unistd.in.h
  lib/unitypes.in.h
  lib/uniwidth.in.h
  lib/uniwidth/cjk.h
  lib/uniwidth/width.c
  lib/unlink.c
  lib/unlocked-io.h
  lib/unsetenv.c
  lib/vasnprintf.c
  lib/vasnprintf.h
  lib/verify.h
  lib/vfprintf.c
  lib/vsnprintf.c
  lib/vsprintf.c
  lib/w32spawn.h
  lib/wait-process.c
  lib/wait-process.h
  lib/waitpid.c
  lib/warn-on-use.h
  lib/wchar.in.h
  lib/wctype-h.c
  lib/wctype.in.h
  lib/wcwidth.c
  lib/xalloc-die.c
  lib/xalloc-oversized.h
  lib/xalloc.h
  lib/xconcat-filename.c
  lib/xmalloc.c
  lib/xmemdup0.c
  lib/xmemdup0.h
  lib/xsize.c
  lib/xsize.h
  lib/xstrndup.c
  lib/xstrndup.h
  m4/00gnulib.m4
  m4/absolute-header.m4
  m4/alloca.m4
  m4/asm-underscore.m4
  m4/assert.m4
  m4/calloc.m4
  m4/close-stream.m4
  m4/close.m4
  m4/closeout.m4
  m4/codeset.m4
  m4/config-h.m4
  m4/configmake.m4
  m4/dirname.m4
  m4/double-slash-root.m4
  m4/dup2.m4
  m4/eealloc.m4
  m4/environ.m4
  m4/errno_h.m4
  m4/error.m4
  m4/exponentd.m4
  m4/exponentf.m4
  m4/exponentl.m4
  m4/extensions.m4
  m4/extern-inline.m4
  m4/fatal-signal.m4
  m4/fcntl-o.m4
  m4/fcntl.m4
  m4/fcntl_h.m4
  m4/float_h.m4
  m4/fopen.m4
  m4/fpending.m4
  m4/fpieee.m4
  m4/fprintf-posix.m4
  m4/frexp.m4
  m4/frexpl.m4
  m4/fseterr.m4
  m4/fstat.m4
  m4/getdtablesize.m4
  m4/getopt.m4
  m4/getprogname.m4
  m4/gettext.m4
  m4/glibc2.m4
  m4/glibc21.m4
  m4/gnulib-common.m4
  m4/hard-locale.m4
  m4/host-cpu-c-abi.m4
  m4/iconv.m4
  m4/include_next.m4
  m4/intdiv0.m4
  m4/intl.m4
  m4/intldir.m4
  m4/intlmacosx.m4
  m4/intmax.m4
  m4/intmax_t.m4
  m4/inttypes-pri.m4
  m4/inttypes.m4
  m4/inttypes_h.m4
  m4/isnan.m4
  m4/isnand.m4
  m4/isnanf.m4
  m4/isnanl.m4
  m4/javacomp.m4
  m4/javaexec.m4
  m4/largefile.m4
  m4/lcmessage.m4
  m4/ldexp.m4
  m4/ldexpl.m4
  m4/lib-ld.m4
  m4/lib-link.m4
  m4/lib-prefix.m4
  m4/libunistring-base.m4
  m4/limits-h.m4
  m4/localcharset.m4
  m4/locale-fr.m4
  m4/locale-ja.m4
  m4/locale-zh.m4
  m4/lock.m4
  m4/longlong.m4
  m4/lstat.m4
  m4/malloc.m4
  m4/malloca.m4
  m4/math_h.m4
  m4/mbrtowc.m4
  m4/mbsinit.m4
  m4/mbstate_t.m4
  m4/mbswidth.m4
  m4/memchr.m4
  m4/minmax.m4
  m4/mmap-anon.m4
  m4/mode_t.m4
  m4/msvc-inval.m4
  m4/msvc-nothrow.m4
  m4/multiarch.m4
  m4/nls.m4
  m4/nocrash.m4
  m4/non-recursive-gnulib-prefix-hack.m4
  m4/obstack-printf.m4
  m4/obstack.m4
  m4/off_t.m4
  m4/open-cloexec.m4
  m4/open.m4
  m4/pathmax.m4
  m4/perror.m4
  m4/pipe2.m4
  m4/po.m4
  m4/posix_spawn.m4
  m4/printf-frexp.m4
  m4/printf-frexpl.m4
  m4/printf-posix-rpl.m4
  m4/printf-posix.m4
  m4/printf.m4
  m4/progtest.m4
  m4/pthread_rwlock_rdlock.m4
  m4/quote.m4
  m4/quotearg.m4
  m4/raise.m4
  m4/rawmemchr.m4
  m4/realloc.m4
  m4/sched_h.m4
  m4/setenv.m4
  m4/sig_atomic_t.m4
  m4/sigaction.m4
  m4/signal_h.m4
  m4/signalblocking.m4
  m4/signbit.m4
  m4/size_max.m4
  m4/snprintf-posix.m4
  m4/snprintf.m4
  m4/spawn-pipe.m4
  m4/spawn_h.m4
  m4/sprintf-posix.m4
  m4/ssize_t.m4
  m4/stat-time.m4
  m4/stat.m4
  m4/stdbool.m4
  m4/stddef_h.m4
  m4/stdint.m4
  m4/stdint_h.m4
  m4/stdio_h.m4
  m4/stdlib_h.m4
  m4/stpcpy.m4
  m4/strchrnul.m4
  m4/strdup.m4
  m4/strerror.m4
  m4/strerror_r.m4
  m4/string_h.m4
  m4/strndup.m4
  m4/strnlen.m4
  m4/strverscmp.m4
  m4/sys_socket_h.m4
  m4/sys_stat_h.m4
  m4/sys_types_h.m4
  m4/sys_wait_h.m4
  m4/threadlib.m4
  m4/time_h.m4
  m4/uintmax_t.m4
  m4/unistd-safer.m4
  m4/unistd_h.m4
  m4/unlink.m4
  m4/unlocked-io.m4
  m4/vasnprintf.m4
  m4/vfprintf-posix.m4
  m4/visibility.m4
  m4/vsnprintf-posix.m4
  m4/vsnprintf.m4
  m4/vsprintf-posix.m4
  m4/wait-process.m4
  m4/waitpid.m4
  m4/warn-on-use.m4
  m4/warnings.m4
  m4/wchar_h.m4
  m4/wchar_t.m4
  m4/wctype_h.m4
  m4/wcwidth.m4
  m4/wint_t.m4
  m4/xalloc.m4
  m4/xsize.m4
  m4/xstrndup.m4
  top/GNUmakefile
  top/README-release
  top/maint.mk
])
