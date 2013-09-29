#!/bin/sh

while read date
do
    fileName=`echo "$date" | tr " " "_"`
    date="$date 14:00 2013 +0500"
    echo "Creating file... $fileName"
    touch "$fileName"
    git add "$fileName"
    git commit --date="$date" --author="public-contributions" -m "$fileName"
done <dates.txt