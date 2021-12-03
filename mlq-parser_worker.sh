#!/bin/bash -e

if [ "$1" = "--tree" ];then
   echo "Not implemented yet"
fi

if [ "$1" = "--insert" ];then
   echo "Not implemented yet"
fi

if [ "$1" = "--singletag" ];then
   cp $4 /tmp/mlq-output.html
   echo "mitigate 1: $1"
   echo "mitigate 2: $2"
   echo "mitigate 3: $3"
   echo "mitigate 4: $4"
#   xmlstarlet ed --inplace -N X='http://www.w3.org/1999/xhtml' \
#--update '//X:element[@id="daipeg"]' --value 'new' index.html
# <-- most solid
# one line with tricks -->
   xmlstarlet ed -L -u "//_:*[@id='$2']" -v "$3" /tmp/mlq-output.html
   cat /tmp/mlq-output.html
#-   cat /tmp/mlq-output.html | htmlq -p
   rm -f /tmp/mlq-output.html
fi
