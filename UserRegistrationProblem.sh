#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To User Registration Problem"

#VARIABLE
FirstNamePattern=0;

#PATTERN
firstNamePattern="^[A-Z][A-Za-z]{2,}$"

#FUNCTION TO CHECK VALID FIRST NAME
function firstNameValidation() {
	read -p "Enter First Name: " firstName
	if [[ $firstName =~ $firstNamePattern ]]
	then
		echo "Valid Input"
	else
		echo "Invalid Input"
	fi
}

#CALLING FUNCTION TO VALIDATE FIRST NAME
firstNameValidation
