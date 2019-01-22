// Introduction to Programming with JavaScript
// Functions
// Exercise 1

// What does this code log to the console? 
// This code logs 1 to the console.
// Does executing the foo function affect the output? Why or why not?
// No executing the foo function doesn't affect the output because, the 'bar' variable declared
// and intialized inside the foo function is locally scoped, and is therefore not linked to the 'bar'
// variable decalared and initialized outside the function.

let bar = 1;
function foo() {
  let bar = 2;
}

foo();
console.log(bar); // bar = 1
