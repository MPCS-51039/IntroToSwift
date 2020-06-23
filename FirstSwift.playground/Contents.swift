import UIKit

//***what does it compile to?
//***what are its tokens and types?
var ten = 10
let twenty = 20

ten + twenty

// Will this work? (No: type inference)
//ten = "ten"

// How about this? (No: constants)
//twenty = 21

var thirty: Int = 30
//Int, Double, String, Bool

var forty = "Forty "
var fifty = "Fifty"
forty + fifty

//***precedence
thirty + ten / twenty + twenty
//recursive descent
//truncation with integers

//***associativity
18 / 3 / 2
//ltr

forty.uppercased()
//How do you think you would make a string lowercased?

//"The price of the book is $" + ten

"The price of the book is $\(ten)"

//Conditional Logic
let bookPrice = ten
if bookPrice > 15 {
    print("We need to save up for this book")
} else {
    print("We can buy this book right now")
}

//switch bookPrice{
//case 6:
//    print("this book costs 6 dollars")
//}

//range operator

switch bookPrice {
case 0...6:
    print("this book is dirt cheap")
case 6...10:
    print("This book is pretty cheap")
default:
    print("Better be a good book")
}

let lattePrice = 4
if bookPrice >= lattePrice {
    print("This book costs more than a latte in the Loop")
}

let myMoney = 10
let enoughMoney = bookPrice + lattePrice <= myMoney
//What type is enoughMoney? -> Boolean

//How do we print that we want to purchase both the book and the latte if we have enough money?
if enoughMoney {
    print("BUY EVERYTHING")
}

//arrays
var books = [
    "The One Device",
    "Crafting Interpreters",
    "One Small Step"
]

books.count

//for index in 0...3 {
//    print(books[index])
//}

for book in books {
    print(book)
}

//Dictionary: an array where they keys are arbitrary, rather than integers.

var integerToString = [1: "one", 2: "two"]
integerToString[1]

var stringToInteger = ["one": 1, "two": 2]
stringToInteger["one"]

//What is the capitalization convention in Swift?

for (key, value) in integerToString {
    print("You wouldn't typically use a dictionary for somethign you have to loop over")
}


//Optionals
//How do we deal with null values in Python or Java?
var favoriteBook: String?

//print("My favorite book is " + favoriteBook)

//if favoriteBook != nil {
//    print("My favorite book is " + favoriteBook)
//}

//Force unwrapping
favoriteBook = "The Instant Pot Bible"
print("My favorite book is " + favoriteBook!)

//optional binding
if let confirmedValue = favoriteBook {
    print("My favorite book is " + confirmedValue)
}
