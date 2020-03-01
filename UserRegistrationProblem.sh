#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To User Registration Problem"

#VARIABLE
firstNamePattern=0;
lastNamePattern=0;

#PATTERN
firstNamePattern="^[A-Z][A-Za-z]{2,}$"
lastNamePattern="^[A-Z][A-Za-z]{2,}$"

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

#FUNCTION TO CHECK VALID LAST NAME
function lastNameValidation() {
	read -p "Enter Last Name: " lastName
	if [[ $lastName =~ $lastNamePattern ]]
	then
		echo "Valid Input"
	else
		echo "Invalid Input"
	fi
}

#CALLING FUNCTION TO VALIDATE LAST NAME
lastNameValidation
