AC_PREREQ(2.52)

AC_INIT([apertium-mkd-eng], [0.1.3], [apertium-stuff@lists.sourceforge.net])
AM_INIT_AUTOMAKE
AC_PROG_AWK

PKG_CHECK_MODULES(APERTIUM, apertium >= 3.8.1)
PKG_CHECK_MODULES(CG3, cg3 >= 1.3.6)

PKG_CHECK_MODULES(REGTEST, apertium-regtest >= 0.9.1, [],
                  [AC_MSG_WARN([Running tests requires apertium-regtest])])

AP_MKINCLUDE

AC_OUTPUT([Makefile])
