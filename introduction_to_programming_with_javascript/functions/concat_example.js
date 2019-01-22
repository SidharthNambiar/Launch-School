// Introduction to Programming with JavaScript
// Functions


function addToArray(array) {
    return array.concat(0);
  }
  
  let oneToFive = [1, 2, 3, 4, 5];
  console.log(addToArray(oneToFive)); // logs [1, 2, 3, 4, 5, 0];
  console.log(oneToFive); // logs [1, 2, 3, 4, 5]