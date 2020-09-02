#!/bin/bash
echo "User Registration Problem"
read -p "Enter first name: " first
regex="^[A-Z][a-z]{2,}$"
if [[ $first =~ $regex ]]
then
	echo Yes
else
	echo No
fi
