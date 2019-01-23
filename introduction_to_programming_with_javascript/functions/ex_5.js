// Introduction to Programming with JavaScript
// Functions
// Exercise 5

// What does the following code log to the console?
// Nothing gets logged to the console because of the return keyword that comes
// before the console.log expressions

function scream(words) {
  words = words + '!!!!';
 //return; 
  console.log(words);
}

scream('Yipeee');