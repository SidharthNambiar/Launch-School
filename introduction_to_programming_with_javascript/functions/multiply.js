// Introduction to Programming with JavaScript
// Functions
// Exercise 3

// Write a program that uses a multiply method to multiply two numbers and returns the result. 
// Ask the user to enter the two numbers, then output the numbers and result as a simple equation.

// $ node multiply.js
// Enter the first number: 3.141592653589793
// Enter the second number: 2.718281828459045
// 3.141592653589793 * 2.718281828459045 = 8.53973422267356


function multiply(num1, num2){
    console.log(`${num1 + ' * ' + num2 + ' = ' + num1*num2}`);
}

function getNumber(prompt){
    let rlSync = require('readline-sync');
    return parseFloat(rlSync.question(prompt));
}

let number1 = getNumber("Enter the first number: ");
let number2= getNumber("Enter the second number: ");
    
multiply(number1, number2);