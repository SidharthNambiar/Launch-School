// Introduction to Programming with JavaScript
// Variables
// Exercise 6

// Will this program produce an error when run? Why or why not?

const FOO = 'bar';
{
  const FOO = 'qux';
}

console.log(FOO);

// No, this program will not produce an error when run because the two constant variables are scoped at
// different levels. The one inside the block is only avaialble for use inside the block.