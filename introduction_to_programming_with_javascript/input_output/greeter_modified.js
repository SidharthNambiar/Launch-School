// Introduction to Programming with JavaScript
// Variables
// Exercise 2

// Modify the greeter.js program to ask for the user's first and last names separately, 
// then greet the user with their full name.

// $ node greeter.js
// What is your first name? Sue
// What is your last name? Roberts
// Hello, Sue Roberts!

function greeter (first, last){
    console.log(`Hello, ${firstName + ' ' + lastName}!`)
}

let rlSync = require('readline-sync');
let firstName = rlSync.question("What's your first name?\n");
let lastName = rlSync.question("What's your last name?\n");
greeter(firstName, lastName);