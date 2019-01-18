// Introduction to Programming with JavaScript
// Variables
// Exercise 5

// Take a look at this code snippet:

let foo = 'bar';
{
  let foo = 'qux';
}

console.log(foo);

// What does this program log to the console? Why?

// This program logs bar to the console because the foo declared inside the block isn't available for use
// outside the block. 