#!/bin/bash
#####
# Title: Logo pattern
# Name: Tejas Deshpande
# Description: Design Logo
# Usage: ./logo.sh or bash logo.sh
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

