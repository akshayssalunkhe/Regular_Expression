#!/bin/bash -x

#DISPLAYING WELCOME MESSAGE
echo "Welcome To User Registration Problem"

#VARIABLES
firstName=0;
lastName=0;
emailId=0;
firstNamePattern=0;
lastNamePattern=0;
emailPattern=0;
mobileNumber=0;

#PATTERN
firstNamePattern="^[A-Z][A-Za-z]{2,}$"
lastNamePattern="^[A-Z][A-Za-z]{2,}$"
emailPattern="^([a-zA-Z]{3,}([.|_|+|-]?[a-zA-Z0-9]+)?[@][a-zA-Z0-9]+[.][a-zA-Z]{2,3}([.]?[a-zA-Z]{2,3})?)$"
mobileNumberPattern="^[0-9]{2}[ ][0-9]{10}$"

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

#FUNCTION TO VALIDATE USER EMAIL
function emailValidation() {
	read -p "Enter Email Id: " emailId
	if [[ $emailId =~ $emailPattern ]]
	then
		echo "Valid Email Id"
	else
		echo "Invalid Email Id"
	fi
}

#CALLING FUNCTION TO VALIDATE EMAIL ID
emailValidation

#FUNCTION TO VALIDATE USER MOBILE NUMBER
function mobileNumberValidation() {
	read -p "Enter Country Code And Mobile Number " mobileNumber
	if [[ $mobileNumber =~ $mobileNumberPattern ]]
	then
		echo "Valid Mobile Number"
	else
		echo "Invalid Mobile Number"
	fi
}

#CALLING FUNCTION TO VALID MOBILE NUMBER
mobileNumberValidation

