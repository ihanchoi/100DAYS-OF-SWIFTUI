let actor = "Forest"
let filename = "sydney.jpg"
let result = "📣 You win! 📣"



let quote = "\"Done\" is better than perfect"
// you can even use other double quotes inside your string, as long as you’re careful to put a backslash before them so that Swift understands they are inside the string rather than ending the string.
/*
let movie = "A day in
the life of an
Apple engineer"
// Swift doesn’t like line breaks in its strings. you can’t create strings across multiple lines.
*/

let movie = """
A day in
the life of an
Apple engineer
""" // IMPORTANT! The final three quotes must be on a line by themselves!
/* the triple quotes at the start and <end are on their own line>, with your string in between.
 you can write your strings across as many lines as you need, which means the text remains easy to read in your code.
 */

// First option of read the length of a string.
print(quote.count) // you can read the length of a string by writing <.count> after the name of the variable or constant. one for each letter in the name, plus the space in the middle.

// Second option of read the length of a string.
let nameLength = quote.count
print(nameLength)

print(movie.uppercased()) // .uppercased(), which sends back the same string except every one of its letter is uppercased.

// if you’re asking Swift to read some data you don’t need the parentheses'()', but if you’re asking Swift to do some work you do, you need the parentheses '()'.

print(movie.hasPrefix("A day"))
print(movie.hasPrefix("the life")) // .hasPrefix(), which lets us know whether a string starts with some letters of our choosing.

print(filename.hasSuffix(".jpg")) // .hasSuffix() counterpart, which checks whether a string ends with some text.
// Strings are case-sensitive in Swift, which means using filename.hasSuffix(".JPG") will return false because the letters in the string are lowercase.

let score = 10
let reallyBig1 = 100000000 // If we were writing that out by hand we’d probably write “100,000,000” at which point it’s clear that the number is 100 million. Swift has something similar: you can use underscores, _, to break up numbers however you want.
let reallyBig2 = 100_000_000 // Swift doesn’t actually care about the underscores, so if you wanted you could write this instead.

let lowerScore = score - 2
let highScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

// Rather than making new constants each time, Swift has some special operations that adjust an integer somehow and assigns the result back to the original number.

var counter = 10
counter += 5 // Rather than writing counter = counter + 5
print(counter)

counter *= 2
print(counter)

counter -= 10
print(counter)

counter /= 2
print(counter)

let number = 120
print(number.isMultiple(of: 3)) // you can call isMultiple(of:) on an integer to find out whether it’s a multiple of another integer.

print(120.isMultiple(of: 13))

