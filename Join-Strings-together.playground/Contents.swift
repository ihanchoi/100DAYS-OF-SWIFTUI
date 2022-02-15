import UIKit

/* Swift gives us two ways to combine strings together: joining them using +, and a special technique called string interpolation that can place variables of any type directly inside strings. */

let firstPart = "Hello, "
let secondPart = "world!"
let greeting  = firstPart + secondPart

// you can do this many times if you need to

let ride = "Just ride that wave until we higher than life"
let sun = "the sun in our eyes"
let lylic = ride + " with " + sun
print(lylic)

/* Notice how we’re using + to join two strings, but when we used Int and Double it added numbers together?
 This is called operator overloading – the ability for one operator such as + to mean different things depending on how it’s used. For strings, it also applies to +=, which adds one string directly to another.
 This technique works great for small things, but you wouldn’t want to do it too much. You see, each time Swift sees two strings being joined together using + it has to make a new string out of them before continuing, and if you have lots of things being joined it’s quite wasteful.
*/

let luggageCode = "1" + "2"  + "3" + "4" + "5"
//it makes temporary strings to hold “12”, “123”, and “1234” even though they aren’t ultimately used when the code finishes.

/* Swift has a better solution called string interpolation, and it lets us efficiently create strings from other strings, but also from integers, decimal numbers, and more.
 If you remember, earlier I said that you can include double quotes inside strings as long as they have a backslash before them so Swift knows to treat them specially:
 */

let quote = "Just ride on that cloud \"until\" we fall from the sky"
// Something very similar is used with string interpolation: you write a backslash inside your string, then place the name of a variable or constant inside parentheses.


let name = "MO"
let age = 25
let message = "Hello, my name is \(name) and I'm \(age) years old."
print(message)

/* String interpolation is much more efficient than using + to join strings one by one, but there’s another important benefit too: you can pull in integers, decimals, and more with no extra work.*/

/* You see, using + lets us add strings to strings, integers to integers, and decimals to decimals, but doesn’t let us add integers to strings. So, this kind of code is not allowed:
*/

let number = 11

//let missionMessage = "Apollo " + number + " landed on the moon." // not allowed.

// let missionMessage = "Apollo " + String(number) + " landed on the moon." // it worked but still slow.


let missionMessage = "Apollo \(number) landed on the moon."
// It is still both faster and easier to read to use string interpolation:
print(missionMessage)


// You can put calculations inside string interpolation if you want to. For example, this will print “5 x 5 is 25”:

print("5 x 5 is \(5 * 5)")
