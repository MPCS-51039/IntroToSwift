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
    print("You wouldn't typically use a dictionary for something you have to loop over")
}

//Conventions
//1. Casing
//2. Parentheses
//Example: Conditional Logic
let bookPrice = ten
if bookPrice > 15 {
    print("We need to save up for this book")
} else {
    print("We can buy this book right now")
}

//Paradigm: Imperative or Functional
let mapped = ["one", "two", "three"].map {
    $0.uppercased()
}

//Collaboration
class Book {
    var author: String?
}

class Nonfiction: Book {
    var subject: String?
    
    init(author: String?, subject: String?) {
        super.init()
        
        self.author = author
        self.subject = subject
    }
}

let objectDesign = Nonfiction(
    author: "Rebecca Wirfs-Brock",
    subject: "programming"
)

protocol Indexable {
    func index() -> [Int:String]
}

class Reference: Nonfiction, Indexable {
    func index() -> [Int : String] {
        // implement indexing the book
        return [:]
    }
}

let refactoringToPatterns = Reference(
    author: "Martin Fowler",
    subject: "programming"
)

extension Reference {
    func levelOfConfusing() -> Int {
        //rate how confusing this book is to read from 1-5
        return 1
    }
}

//Handling Null
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

//Precedence
thirty + ten / twenty + twenty
//recursive descent
//truncation with integers

//Associativity
18 / 3 / 2
//ltr

//What does Swift Compile To?
