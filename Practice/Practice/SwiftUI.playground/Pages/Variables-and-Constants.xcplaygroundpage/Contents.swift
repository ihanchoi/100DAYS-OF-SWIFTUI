import UIKit

var greeting = "Hello, playground"
// create a new variable called greeting and give it the value Hello, playground.
// variables are great way to store temporary data in your programs.

var name = "Penguin" // you make a variable and can change it over time.
name = "cat"
name = "dog"

let character = "Tiger"
/*character = "Bear" // you can't change a constant <let>
character = "rabbit" // It won't work
*/

var playerName = "Roy"
print(playerName)

playerName = "Dani"
print(playerName)

playerName = "Sam"
print(playerName)

/* Camel Case means the second and subsequent words in a name start with a little bump for the capital letter:
e.g) playerName, managerName, dogBreed etc.
*/
 
let managerName = "Scott"
let dogBreed = "Samoyed"
let meaningOfLife = "How many roads must a man walk down?"
/* Prefer to use constants rather than variables.
 Constants can't change their values once they are set.
- not only does it give Swift the chance to optimize your code a little better, but it also allows Swift to make sure you never change a constant’s value by accident. */
