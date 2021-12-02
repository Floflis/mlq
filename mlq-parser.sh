#!/bin/bash -e

if [ "$1" = "--write" ];then
   text_to_insert=$(echo "$2" | grep -o '"[[:alpha:]]\+*"' | tr -d '"')
   tagtree=$(echo "$2" | grep -o '#[[:alpha:]]\+*' | awk 'NF { print "\""$0"\""}' | tr "\n" " " | tr '"' "'" | tr -d '#')
#   sh ./mlq-parser_worker.sh --tree
#   sh ./mlq-parser_worker.sh --insert
   tagtreesingle=$(echo "$tagtree" | tr -d "'")
   sh ./mlq-parser_worker.sh --singletag $tagtreesingle $text_to_insert $3
fi
