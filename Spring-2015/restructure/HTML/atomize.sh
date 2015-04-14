#!/bin/bash
#
# Generate individual .html files for references.
#

while read star record
do
#  Fname=$(echo $record | gawk 'BEGIN { FS = "`[.,]\ `" }; { printf substr($1, 3) }')
#  echo "$record"
#  echo "$record" | gawk 'BEGIN { FS = "[.,]" }; { printf $1"\n" }' | sed 's: :_:g'
#  echo "$record" | sed 's:.* \([0-9]\{4\}[a-b]*\)\..*:\1:'
  Fname=$(echo "$record" | gawk 'BEGIN { FS = "[.,]" }; { printf $1"\n" }' | sed 's: :_:g')
  Pdate=$(echo "$record" | sed 's:.* \([0-9]\{4\}[a-b]*\)\..*:\1:')
  Hfile=$(printf "%b_%b.html\n" "$Fname" "$Pdate")
  Htext=$(echo "$record" | sed 's:\*\(.*\)\*:<i>\1<\i>:g;s: http\(.*\)\.: <a href="http\1">http\1</a>. :g;s:doi\:\(.*\)\.:<a href="http\://doi.org/\1">doi\:\1</a>.:g')

  echo "$Htext" > "$Hfile"
done < $1


