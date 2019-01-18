// Introduction to Programming with JavaScript
// Variables
// Exercise 3

// Modify the age.js program you wrote in the exercises for the Variables chapter. 
// The updated code should ask the user to enter their age instead of hard-coding the age in the program.
// Here's an example run:

// How old are you? 22
// You are 22 years old.
// In 10 years, you will be 32 years old.
// In 20 years, you will be 42 years old.
// In 30 years, you will be 52 years old.
// In 40 years, you will be 62 years old.

function ageOverTime(age) {
 console.log(`You are ${age} years old.`);
 console.log(`In 10 years, you wil be ${age+10} years old.`);
 console.log(`In 20 years, you wil be ${age+20} years old.`);
 console.log(`In 30 years, you wil be ${age+30} years old.`);
 console.log(`In 40 years, you wil be ${age+40} years old.`);
}

let rlSync = require('readline-sync');
let age = Number(rlSync.question("What's your age?\n"));
ageOverTime(age);



