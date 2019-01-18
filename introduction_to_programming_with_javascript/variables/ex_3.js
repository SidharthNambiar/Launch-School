// Introduction to Programming with JavaScript
// Variables
// Exercise 3


// What happens when you run the following program? Why do we get that result?

{
  let foo = 'bar';
}

console.log(foo);

// When you run the above program, the JavaScript engine returns a ReferenceError because
// the variable foo is declare inside a block and is therefore isn't available outside of it.