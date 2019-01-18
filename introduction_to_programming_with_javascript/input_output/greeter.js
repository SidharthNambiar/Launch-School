// Introduction to Programming with JavaScript
// Variables
// Exercise 1

// Write a dynamic greeter program named greeter.js. 
// The program should contain a function that takes one argument, name, 
// and logs a Hello, {name}! message to the console. You should replace {name} with 
// the value of the name argument. For instance:

// $ node greeter.js
// What is your name? Sue
// Hello, Sue!
// $ node greeter.js Sue
// Hello, Sue!

function greeter (name){
    console.log(`Hello, ${name}!`)
}

let rlSync = require('readline-sync');
let name = rlSync.question("What's your name?\n");
greeter(name);