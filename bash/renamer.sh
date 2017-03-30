#!/bin/bash

echo "===================";
echo "=     Renamer     =";
echo "===================";

#check if directory names where passed in line
if [ -n "$1" ] && [ -n "$2" ] ; then
    echo "Directories specified in line, assigning them ..."
    dir1="$1"
    dir2="$2"
    askForDir=0
elif [ -n "$1" ] || [ -n "$2" ] ; then
    echo "Only one directory specified, ignoring it ..."
    askForDir=1 
else
    echo "You did not specified directories inline, next time"
    echo "you can specify input dir and output dir inline, for instance"
    echo "./renamer.sh my_pictures renamed_pictures"
    askForDir=1
fi

#ask user to input directories names
if [ "$askForDir" -eq 1 ] ; then
    echo "Specify input directory"
    read -e dir1
    echo "Specify output directory"
    read -e dir2
fi

#check if dir1 exists
if [ ! -d "$dir1" ] ; then
    echo "You specified not existing input direcotry, exitting ..."
    exit
fi
#check length of dir2
if [ ${#dir2} -lt 3 ] ; then
    echo "Output directory name needs at least 3 chars, exitting ..."
    exit
fi
#check regex condition of dir2
if [[ "$dir2" =~ [^a-zA-Z0-9] ]] ; then
    echo "Output directory name has to be alphanumeric, exitting ..."
    exit
fi
#ensure that dir2 does not exist
if [ ! -d "$dir2" ] ; then
    echo "Creating $dir2 directory ..."
    mkdir "$dir2"
#or is empty (ls -A shows contents without . and ..)
elif [ ! "$(ls -A $dir2)" ] ; then
    echo "$dir2 directory exists but is empty, proceeding ..."
else
    echo "$dir2 directory is not empty specify another, exitting ...";
    exit
fi

#get length of $dir1 and add 1 to it
lengthOfDir1=$(( ${#dir1} + 1 ))
#for each files (will contain dir1 prefix) copy renamed
for file in "$dir1"/* ; do
    echo "working on $file"
    #strip dir1 chars from the begining of filename (3rd param is length)
    fileName="${file:$lengthOfDir1}"
    #lower case (to upper case ^^)(or , or ^ for first letter only)
    fileNameLower="${fileName,,}"
    #replace all maches of spaces with bars
    fileNameBar="${fileNameLower// /-}"
    cp "$file" "$dir2"/"$fileNameBar"
done
echo "files renamed and located in $dir2 direcotory, finishing ..."
echo "===================";
echo "=     Bye bye     =";
echo "===================";

