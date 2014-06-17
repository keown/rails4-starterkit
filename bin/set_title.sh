#!/bin/bash


if [ $# -eq 2 ] ; then
  files=`find . -name *.*rb`
  files="$files Rakefile config.ru"
  # echo $files
  matching_files=$(grep -lir $1 ${files})
  
  for f in $matching_files ; do
    # sed  's/$1/$2/g' "$f"
    
    # OSX ONLY
    sed -i '' "s/$1/$2/g" $f

    # LINUX ONLY
    # sed -i 's/$1/$2/g' "$f"

    # echo "Replaced $1 with $2 inside $f"
  done


else

  echo "Usage: $0 [old title] [new title]"

fi