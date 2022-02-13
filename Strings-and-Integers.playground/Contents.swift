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

let number1 = 120
print(number1.isMultiple(of: 3)) // you can call isMultiple(of:) on an integer to find out whether it’s a multiple of another integer.

print(120.isMultiple(of: 13))



let number2 = 0.1 + 0.2
print(number2)

/* when you create a floating-point number, Swift considers it to be a Double. That’s short for “double-precision floating-point number”, which I realize is quite a strange name. it means Swift allocates twice the amount of storage as some older languages would do, meaning a Double can store absolutely massive numbers.
 Swift considers decimals to be a wholly different type of data to integers, which means you can’t mix them together. After all, integers are always 100% accurate, whereas decimals are not, so Swift won’t let you put the two of them together unless you specifically ask for it to happen. */

let a = 1
let b = 2.0 // we can see that b is really just the integer 2 masquerading as a decimal, but Swift still won’t allow that code to run.
// let c = a + b // This is called type safety: Swift won’t let us mix different types of data by accident.

let c1 = a + Int(b)
let c2 = Double(a) + b

/* Swift decides whether you wanted to create a Double or an Int based on the number you provide – if there’s a dot in there, you have a Double, otherwise it’s an Int. Yes, even if the numbers after the dot are 0.
 
*/

let double1 = 3.1
let double2 = 3131.3131
let double3 = 3.0
let int1 = 3

/* Combined with type safety, this means that once Swift has decided what data type a constant or variable holds, it must always hold that same data type. That means this code is fine.
 */

var name = "Perfect Penguin"
name = "Cute Penguin"
// name = 24 // Swift name will store a string, but then it tries to put an integer in there instead.

// decimal numbers have the same range of operators and compound assignment operators as integers.

var rating = 5.0
rating *= 2

/* Many older APIs use a slightly different way of storing decimal numbers, called CGFloat. Fortunately, Swift lets us use regular Double numbers everywhere a CGFloat is expected, so although you will see CGFloat appear from time to time you can just ignore it.
 
 In case you were curious, the reason floating-point numbers are complex is because computers are trying to use binary to store complicated numbers. For example, if you divide 1 by 3 we know you get 1/3, but that can’t be stored in binary so the system is designed to create very close approximations. It’s extremely efficient, and the error is so small it’s usually irrelevant, but at least you know why Swift doesn’t let us mix Int and Double by accident. */

/* Swift gives us several different ways of storing numbers in our code, and they are designed to solve different problems. Swift doesn’t let us mix them together because doing so will (as in, 100% guaranteed) lead to problems.
 The two main types of numbers you’ll use are called integers and doubles. Integers hold whole numbers, such as 0, 1, -100,
 and 65 million, whereas doubles hold decimal numbers, such as 0.1, -1.001, and 3.141592654.
 */

var myInt = 1
var myDouble = 1.0

/* var total = myInt + myDouble // can't write this code. because swift is playing it safe. we can both see that 1 plus 1.0 will be 2, but your double is a variable so it could be modified to be 1.1 or 3.5 or something else. How can Swift be sure it’s safe to add an integer to a double – how can it be sure you won’t lose the 0.1 or 0.5?
 
    The answer is that it can’t be safe, which is why it isn’t allowed.
 */


/* Swift lets us create variables as strings and integers, but also many other types of data too. When you create a variable Swift can figure out what type the variable is based on what kind of data you assign to it, and from then on that variable will always have that one specific type. */

var meaningOfLife = 42 // Swift will assign it the type integer – a whole number. It’s a variable, which means we can change its value as often as we need to, but we can’t change its type: it will always be an integer.
// meaningOfLife = "Forty two" // can't write this code. That tries to assign a string to a variable that is an integer, which isn’t allowed. Although we rarely make such an obvious mistake, you will find that this type safety helps out every single day you’re writing code with Swift.

/* we just created one variable then tried to change its type, which will obviously fail. But as your programs grow in size and complexity, it becomes impossible to keep the types of your variables in your head at all times, so we’re effectively shifting that work on to Swift instead.*/
