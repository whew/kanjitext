#!/bin/bash
yourkanjilist="$1"
yourtextlist="$2"
allkanjis="./all.txt"
nolist="./nolist.txt"
if [[ "$3" == "b" ]] ; then
	sed 's/。/\n/g;s/！/\n/g;s/？/\n/g' "$yourtextlist" > yourtextlistdivided.txt
	yourtextlist="yourtextlistdivided.txt"
fi
sed -i '/^$/d;s/\t\t*/\n/g' "$1"
grep -v -F -f "$yourkanjilist" "$allkanjis" | sed '/^$/d' > "$nolist"
grep -F -f "$yourkanjilist" "$yourtextlist" | grep -v -F -f "$nolist" > output.txt
