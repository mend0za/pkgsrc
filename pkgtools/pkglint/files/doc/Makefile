# $NetBSD: Makefile,v 1.2 2006/02/27 02:01:04 rillig Exp $
#

XMLDOCS+=	pkglint.xml
XMLDOCS+=	chap.intro.xml
XMLDOCS+=	chap.defs.xml
XMLDOCS+=	chap.types.xml
XMLDOCS+=	chap.code.xml
XMLDOCS+=	chap.statemachines.xml
XMLDOCS+=	chap.future.xml

IMAGES+=	statemachine.patch.png
IMAGES+=	statemachine.shellcmd.png

.PHONY: all
all: pkglint.html

pkglint.html: ${XMLDOCS} ${IMAGES} stylesheet.xsl
	xmlto -m stylesheet.xsl html-nochunks pkglint.xml

.PHONY: clean
clean:
	rm -f *.html *.png

.SUFFIXES: .dia .png
.dia.png:
	dia -e ${.TARGET:Q} -t png ${.IMPSRC:Q}
