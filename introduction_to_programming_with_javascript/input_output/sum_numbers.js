// Introduction to Programming with JavaScript
// Input/Output
// sum_numbers.js
let rlSync = require('readline-sync'); //returns library as an object

let number1 = Number(rlSync.question('Enter the first number\n'));
let number2 = Number(rlSync.question('Enter the second number\n'));
let sum = number1 + number2;

console.log(`The numbers ${number1} and ${number2} add to ${sum}`);