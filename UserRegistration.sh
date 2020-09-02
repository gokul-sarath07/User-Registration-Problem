#!/bin/bash
echo "User Registration Problem"

function firstname {
read -p "Enter first name: " first
regex="^[A-Z][a-z]{2,}$"
if [[ $first =~ $regex ]]
then
	echo Yes
else
	echo No
fi
}

function lastname {
read -p "Enter last name: " last
regex="^[A-Z][a-z]{2,}$"
if [[ $last =~ $regex ]]
then
	echo Yes
else
	echo No
fi
}

function main {
	firstname
	lastname
}
main
