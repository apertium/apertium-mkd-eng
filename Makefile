all:
	lt-comp lr ../../trunk/apertium-mk-bg/apertium-mk-bg.mk.dix mk-en.automorf.bin ../../trunk/apertium-mk-bg/apertium-mk-bg.mk.acx
	lt-comp rl ../../trunk/apertium-is-en/apertium-is-en.en.dix mk-en.autogen.bin
	lt-comp lr ../../trunk/apertium-is-en/apertium-is-en.en.dix en-mk.automorf.bin
	if [ ! -d .deps ]; then mkdir .deps; fi
	xsltproc lexchoicebil.xsl apertium-mk-en.mk-en.dix > .deps/apertium-mk-en.mk-en.dix
	lt-comp lr .deps/apertium-mk-en.mk-en.dix mk-en.autobil.bin
	lt-comp rl apertium-mk-en.mk-en.alpha.dix mk-en.alpha.bin
	cg-comp ../../trunk/apertium-mk-bg/apertium-mk-bg.mk-bg.rlx mk-en.rlx.bin
	apertium-preprocess-transfer apertium-mk-en.mk-en.t1x mk-en.t1x.bin
	apertium-preprocess-transfer apertium-mk-en.mk-en.t2x mk-en.t2x.bin
	apertium-preprocess-transfer apertium-mk-en.mk-en.t3x mk-en.t3x.bin
	apertium-gen-modes modes.xml
