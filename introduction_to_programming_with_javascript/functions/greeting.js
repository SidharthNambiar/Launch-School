// Introduction to Programming with JavaScript
// Functions
// greeting.js

let greetingMessage = 'Good Morning'; // global scope

function greetPeople() {
  console.log(greetingMessage);
}

function changeGreetingMessage(newMessage) {
    greetingMessage = newMessage;
  }
  
  changeGreetingMessage('Good Evening');
  greetPeople(); 