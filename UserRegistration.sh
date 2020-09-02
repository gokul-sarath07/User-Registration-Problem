#!/bin/bash
echo "User Registration Problem"
read -p "Enter a email id: " id
shopt -s extglob
regex="^[A-Z][a-z]{2,}$"
if [[ $id =~ $regex ]]
then
	echo Yes
else
	echo No
fi
