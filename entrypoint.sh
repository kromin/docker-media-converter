#!/bin/bash

# Loop through each file of the current directory

cd /files

find `pwd` -type f -name "*.mkv" | while read file; do
  echo "Now converting: $file"
  m_filename=`basename "$file"`
  m_dirname=`dirname "$file"`
  m_filename_wo_ext="${m_filename%.*}"
  m_newfilename="`pwd`/${m_filename_wo_ext}.mp4"
  avconv -loglevel error -y -i "$file" -c:v copy -c:a aac -strict experimental "$m_newfilename"
  if [ "$?" -eq 0 ]; then
    echo "Successfully processed: $file"
    #/bin/rm -f "$file"
  fi

  # Pause for 10 seconds before moving on to the next file
  sleep 3

done
