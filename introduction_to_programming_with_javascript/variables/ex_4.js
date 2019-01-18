// Introduction to Programming with JavaScript
// Variables
// Exercise 4

// What happens when you run the following code? Why?

const NAME = 'Victor';
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);

// The above console.log gets logged to the terminal

NAME = 'Joe'; 
// The reassignment above leads to an error since NAME is a constant and therefore cannot be altered. 
// code below isn't executed.
console.log('Good Morning, ' + NAME);
console.log('Good Afternoon, ' + NAME);
console.log('Good Evening, ' + NAME);
