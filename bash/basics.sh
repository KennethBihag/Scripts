#! /bin/bash

# line comment
: ' multi line
comment until
this '

: ' display anything to std out
cat << TAE
cat > tmp
echo japorms
TAE
'

: '
# loops and if''s
while [ count -lt 5 ]
do
  count=$((count+1))
  if [ $count -ge 1 ]
  then break
  fi
  echo $count
done

for f in 3 6 9 12
do
  echo $(($f*4))
done
for g in {10..50}
do
  echo $g
done
for h in {1..100..17}
do echo $h
done

#for ((j=-20;j<21;++j)) # alternate syntax for for-loop
for j in {-20..20}
do
  echo $j
  if (($j>=5))
  then
    break
  fi
done
'

: '
#accessing args
echo $0 $1 $3
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]} ${args[3]}
'
: '
# my implementation of find command
while IFS=  read -r f;
do
	if [[ "$f" == $2 ]]
		then echo "$f"
	fi
done < <(ls -R $1)
'
 
: ' delete different ways for dir and file

while IFS=  read -r path
do
	# if (ls -l "$path" | grep '^d')
  if ( test -d "$path" )
	then
		echo "$path"  is DIR
	else
		echo "$path" is FILE
	fi
done < <(ls * -d)
'
: ' select, switch-case, break loop

select anime in Naruto Bleach 'One Piece' Pokemon 'Dragon Ball Z'
do
  case $anime in
  Naruto)
    echo Good choice!;;
  Pokemon)
    echo Two piece is better;;
  'Dragon Ball Z')
    break;;
  *)
    echo hahaha;;
    esac
done
'

echo Done program