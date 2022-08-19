#!/bin/bash
MY_PATH=$(cd "$MY_PATH" && pwd)
echo "Your path is: $MY_PATH"
read -p "Enter the path you want to check: " Path
cd $Path
echo "Path has been changed to: $Path"

if [[ -f ignore.txt ]]
then
  echo "ignore.txt exists"
  read -p "Do you want to apply ignore file? (yes/no) " yn
  case $yn in 
  yes ) 
    DIRS=$(ls -d */ | sed "s,/,,")
    for d in $DIRS
    do
      SHOULD_BREAK=FALSE
      while read -r line 
      do
        line=$(echo $line )
        if [[ $d == $line ]]
        then 
          SHOULD_BREAK=TRUE
          break
        fi
      done < $Path/ignore.txt
      if [[ $SHOULD_BREAK == 'FALSE' ]]
      then
        cd $d
        pwd
        git pull
        cd ..
      fi
    done
    ;;
  no )
    for d in */ ;
    do
      ( cd "$d" && pwd && git pull)
    done
    ;;
  * ) 
    echo "invalid response, please enter yes/no" ;
    exit 1
    ;;
  esac
fi

echo "ignore.txt doesn't exist"
for d in */ ; do
  ( cd "$d" && pwd && git pull)
done











#for item in "${arr[@]}"
#do
#   echo $item
#done

#for d in */ ; do
#    cd "$d" && pwd
#    for item in .; do
#        pwd
#    done
#done

#for i in .; do
#   ls -al $i
#done

#arr=$( cat ignore.txt )
# 
#for item in "${arr[@]}"
#do
#    echo $item
#done



#arr=( cat  )














#find . -maxdepth 1 -type f -iname "ignore.txt"  -exec cat {} \;
#-iname "*.txt" 
#-exec ls {} \;
#-iname ".txt"



#for i in $(cat ignore.txt | tr -d '[]"' | tr , '\n'); do