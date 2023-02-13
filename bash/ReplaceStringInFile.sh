#! /bin/bash
if [ "$3" = "" ]
then
	echo Usage : \<old string reg ex\> \<new string\> \<file\>
	exit 1
fi
regEx="$1"
newStr="$2"
fPath="$3"
while IFS=' ' read -r lin
do
    oldStr="$(expr "$lin" : ".*\($regEx\).*")"
	echo "${lin//$oldStr/$newStr}"
done < "$fPath"
exit 0
