#!/bin/bash

#####
# Title: Menu Driven Prigram
# Name: Tejas Deshpande
# Description: File, directory, System Operations
# Usage: ./menu.sh or bash menu.sh
#####


n=13

for(( i=1; i<=n; i++ ))
do
  (( v = $i % 2 )) 
  if [ $v  != 0 ]
  then
    for(( j=1; j<=i; j++ ))
    do
      echo -n "#"
    done
  fi
  echo ""
done

createDir(){
 echo ""
 echo "Enter dir name:"
 read dname
 mkdir -p $dname
 echo "directory created." 
}

removeDir(){
 echo ""
 echo "Avalible dir"
 ls --hide=*.txt --hide=*.sh --hide=java_code
 echo "enter dir name"
 read dname
 rm -r $dname
 echo "directory is removed"  
}

moveFile(){
 echo ""
 echo "enter dir name"
 read dname
 echo "Avaliable files"
 ls *.txt
 echo "enter file name"
 read fname
 cpath=$(pwd)
 mkdir $cpath/$dname 
 mv $fname $cpath/$dname
 echo "File is moved"
}

displayFile(){
 echo ""
 #touch a.txt b.txt
 echo "Avaliable Files"
 ls *.txt
 echo "enter file name"
 read fname
 cat $fname
}

displaySystemUsage()
{
 echo ""
 echo "Syste Usage:"
 free -m
}

compressFile(){

 echo ""
 echo "Avaliable files"
 ls *.txt
 echo "enter file name"
 read fname
 gzip $fname
 #gzip -k $fname
 echo "file is compressed"
}

extractFile(){
 echo ""
 echo "Available Zip files"
 ls *.gz
 echo "enter zip file:"
 read fname
 gunzip $fname
 #gunzip -k $fanme
 echo "file is extracted"
}

status=true

while $status
do

echo "Menu"
echo "1. Create Directory"
echo "2. Remove Directory"
echo "3. Move file Dir1 to Dir2"
echo "4. Show Contents of file"
echo "5. Show system usage"
echo "6. compress file"
echo "7. Extract file"
echo "10. Exit"

echo "Enter Choice"
read choice

case $choice in
1) 
   createDir ;;
2) 
  removeDir ;;
3)
  moveFile ;;
4)
  displayFile ;;
5)
  displaySystemUsage ;;
6)
  compressFile ;;
7)
  extractFile ;;
10)
    echo ""
    echo "Exiting..."
    status=false ;;
*)
   echo ""
   echo "Wrong Input" ;;
esac
done
