#!/bin/bash

FILES=./*.po
ROOT=./dojo-bundles

if [ ! -d $ROOT ]; then
   mkdir $ROOT
fi 

for f in $FILES
do
   ABVR=`echo $f | cut -d '.' -f 2`
   if [ ! -d $ROOT/$ABVR ]; then
	   mkdir $ROOT/$ABVR
   fi 

   ./po2json.pl $f $ROOT/$ABVR.spacecrafter.js
done
