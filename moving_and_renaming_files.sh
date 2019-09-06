!/bin/bash

FILES=./*/*/* #Source path
TARGET=~/Documents/[folder] # make sure that folder exists!
COUNTER=1 # if you want to start from 0, just put 0 there
for f in $FILES
do
  echo "Processing $f file..."
  mv $f $TARGET/$COUNTER"_"${f##*/}
  let "COUNTER++"
done
