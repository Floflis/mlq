#!/bin/bash -e

if [ "$1" = "--write" ];then
#   text_to_insert=$(echo "$2" | grep -o '"...\+"' | tr -d '"')
   text_to_insert=$(echo "$2" | grep -o '".\+"' | tr -d '"')
#   echo "it have to work: $2"
#   echo "the previous did work. But: $text_to_insert"
   tagtree=$(echo "$2" | grep -o '#[[:alpha:]]\+*' | awk 'NF { print "\""$0"\""}' | tr "\n" " " | tr '"' "'" | tr -d '#')
#   sh ./mlq-parser_worker.sh --tree
#   sh ./mlq-parser_worker.sh --insert
   tagtreesingle=$(echo "$tagtree" | tr -d "'")
#   echo "mitigate ok: $3"
#   echo "mitigate all: $tagtreesingle, $text_to_insert"
   bash /usr/lib/mlq/mlq-parser_worker.sh --singletag $tagtreesingle "$text_to_insert" "$3"
fi
