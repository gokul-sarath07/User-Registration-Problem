#!/bin/bash -x
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

function validemail {
	read -p "Enter Email ID: " email
	regex="^([a-zA-Z0-9\_\-\+]{1}[a-zA-Z0-9\_\.\+\-]+)@((\[[.0-9]{1,3})|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,}|[0-9]{1,})(\]?)$"
	if [[ $email =~ $regex ]]
    then
        echo Yes
    else
        echo No
    fi
}

function mobile {
	read -p "Enter mobile number with code: " num
	regex="^[0-9]{2}[: :][0-9]{10}$"
	if [[ $num =~ $regex ]]
	then
		echo Yes
	else
		echo No
	fi
}

function password {
	read -p "Enter Password: " pass
	if [[ ${#pass} -ge 8 && $pass =~ [[:upper:]] ]]
    then
        echo Yes
    else
        echo No
    fi

}

function main {
	firstname
	lastname
	validemail
	mobile
	password
}
main
