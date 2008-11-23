# $NetBSD: generate.awk,v 1.1 2007/08/23 20:42:32 jlam Exp $
#
# AWK script to replace @FONTDIR_ENTRIES@ with a list of <dir></dir>
# entries taken from the "entries" array.  We do variable replacement
# for ${LOCALBASE} and ${X11BASE} using the values of LOCALBASE and
# X11BASE that are passed to the script.
#

BEGIN {
	entries[0]  = "${X11BASE}/lib/X11/fonts"
	entries[1]  = "${LOCALBASE}/OpenOffice.org1.1.5/share/fonts"
	entries[2]  = "${LOCALBASE}/openoffice.org2.2/share/fonts"
	entries[3]  = "${LOCALBASE}/java/blackdown-1.3.1/lib/fonts"
	entries[4]  = "${LOCALBASE}/java/scsl-1.5/lib/fonts"
	entries[5]  = "${LOCALBASE}/java/sun-1.3.1/lib/fonts"
	entries[6]  = "${LOCALBASE}/java/sun-1.4/lib/fonts"
	entries[7]  = "${LOCALBASE}/java/sun-1.5/lib/fonts"
	entries[8]  = "${LOCALBASE}/java/sun-6/lib/fonts"
	entries[9]  = "${LOCALBASE}/Acrobat4/Resource/CIDFont"
	entries[10] = "${LOCALBASE}/Acrobat5/Resource/Font"
	entries[11] = "${LOCALBASE}/Acrobat7/Resource/CIDFont"
	num_entries = 12

	LOCALBASE = ENVIRON["LOCALBASE"] ? ENVIRON["LOCALBASE"] : "/usr/pkg"
	X11BASE = ENVIRON["X11BASE"] ? ENVIRON["X11BASE"] : "/usr/X11R6"
}

/^@FONTDIR_ENTRIES@/ {
	for (i = 0; i < num_entries; i++) {
		entry = entries[i]
		sub("[$]{LOCALBASE}", LOCALBASE, entry)
		sub("[$]{X11BASE}", X11BASE, entry)
		print "	<dir>" entry "</dir>"
	}
	next
}
{ print }
