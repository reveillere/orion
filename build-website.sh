#!/bin/sh

VERS="8.1.0"
DATE="2006-10-22"

# Leave the desired layout uncommented.
LAYOUT=layout1		# Tables based layout.
#LAYOUT=layout2		# CSS based simulated frames layout.

ASCIIDOC_HTML="python ../../asciidoc.py --unsafe --backend=xhtml11 --conf-file=${LAYOUT}.conf --attribute icons --attribute iconsdir=./images/icons --attribute=badges --attribute=revision=$VERS  --attribute=date=$DATE"

$ASCIIDOC_HTML -a index-only index.txt
$ASCIIDOC_HTML manpage.txt
$ASCIIDOC_HTML downloads.txt
