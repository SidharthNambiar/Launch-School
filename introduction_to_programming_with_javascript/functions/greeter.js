// Introduction to Programming with JavaScript
// Functions
// Exercise 2

// In the exercises for the previous chapter, you wrote a dynamic greeter program named greeter.js. 
// Add a function to this program that solicits the user's first and last names in separate invocations;
//  the function should return the appropriate name as a string. Use the return values to greet the user 
//  with their full name.

let rlSync = require('readline-sync');

 function greeter (name){
    console.log(`Hello, ${name}!`)
}

function getName(){
    let first = rlSync.question("What's your first name?\n");
    let last = rlSync.question("What's your last name?\n");
    return first + ' ' + last;
}


greeter(getName());