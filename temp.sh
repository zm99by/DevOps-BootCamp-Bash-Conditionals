#!/bin/bash
Kelvins="K"
Celsius="C"

K=$(echo $1 | grep "K")
if [ $? -eq 0 ]
then
  rez=$(echo $K | tr -d "K"); echo $(($rez-273))$Celsius
fi

C=$(echo $1 | grep "C")
if [ $? -eq 0 ]
then
  rez=$(echo $C | tr -d "C"); echo $(($rez+273))$Kelvins
fi