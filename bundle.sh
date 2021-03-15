#!/bin/sh

set -e

. fsbuild/plugin.pre.sh

mkdir -p $PLUGIN_REALDATADIR
cp *.cht $PLUGIN_REALDATADIR
cp cheat.7z $PLUGIN_REALDATADIR

mkdir -p $PLUGIN_READMEDIR
cp README.md $PLUGIN_READMEDIR/ReadMe.txt

mkdir -p $PLUGIN_DOCSDIR
cp cheat.txt $PLUGIN_DOCSDIR/MameCheats.txt

# mkdir -p $PLUGIN_LICENSESDIR
# cp LICENCE.txt $PLUGIN_LICENSESDIR/CAPSImg.txt

export PLUGIN_APPIFY=0
export PLUGIN_STANDALONE=0

. fsbuild/plugin.post.sh
