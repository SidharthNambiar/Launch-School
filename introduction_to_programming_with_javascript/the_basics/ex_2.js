// Introduction to Programming with JavaScript
// The Basics
// Exercise 2

// Use the arithmetic operators to determine the individual digits of a 4-digit number like 4936:

fourDigit = 4936;
console.log(`The number is ${fourDigit}`);
// thousands place is 4
console.log("Thousands place is: ")
console.log(parseInt(fourDigit/1000));

// hundreds place is 9
console.log("Hundreds place is: ")
console.log(parseInt((fourDigit/100)%10));

// tens place is 3
console.log("Tens place is: ")

console.log(parseInt((fourDigit/10)%100%10));

// ones place is 6
console.log("Ones place is: ")

console.log(parseInt(fourDigit%1000%100%10));