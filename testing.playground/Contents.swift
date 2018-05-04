//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print(str)

var myVariable = 42

let myConstant = 50

var myexplicit: Double = 70.00

print(myexplicit)

let label = "this is how you typecast"
let number = 30

print(label + " " +  String(number))


// triple quotes means multi line string
let mystring = """
hello this is a
really long string that spans
 more than one line
"""

// initializer syntax for arrays and dictionaries
let emptyArray = [String]() // use to represent an array of strings
let emptyDic = [String: Float]() // use to represent names and marks

print (emptyArray)

print(emptyDic)


// playing with ifs, else, and for in loops
// ifs MUST be boolean expressions, i.e. cant use if score {...} bc not expression
let scores = [1, 2, 3, 4, 5]
for score in scores{
    if score > 3{
        print(score)
    }
    else{
        print("score too low")
    }
}

// working with nils and optional values

var optional: String? = "hello my name is"
print(optional==nil) // should give us false bc this isnt nil, nil means value is missing in it

var optional2: String? = "HELLO"
var greeting = "hello"
if let name = optional2{
    greeting = "hello, \(name)"  // use the escape character to insert a variable into the string
}

print(greeting)


// can also define defaults in case one isnt present

let carcolor: String? = "issacolor"
let cartype: String = "honda"

let describecar = "that car is a \(carcolor ?? cartype)" // if there is no carcolor i.e. null, describe with car type
print(describecar)


// switches can use any type of data
// you automatically break out of the switch statement if something is executed, so don't need to break
let vegetable = "red pepper"
switch vegetable {
case "celery": // cases for strings! not just ints
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"): // HAS SUFFIX function checks for that string at the end!
    print("Is it a spicy \(x)?") // make note of the escape character
default:
    print("Everything tastes good in soup.") // this is our default case, will get executed if nothing true
}

// let's experiement with iterating over a dictionary
let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13], // dictionary where elements are arrays
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
var largest = 0
var typelargest = ""
for (key, value) in interestingNumbers { // iterate through the keys, then iterate through the values
    for number in value { // go through every value, and if it's the largest so far set as largest
        if number > largest {
            largest = number
            typelargest = key // keep track of what type the largest was
        }
    }
}// ** note ^^^ the names of the key, value are arbitrary and can be anything!!!! ***
print(String(largest) + typelargest)


// WHILE LOOPS
var n = 2
while n < 100 { // condition is at beginning
    n *= 2
}
print(n)

var m = 2
repeat {
    m *= 2
} while m < 100 // condition at end i.e. repeat-while so that runs at least once
print(m)

// FOR LOOPS W INDEXES
var total = 0
for i in 0..<4 { // i goes from 0 to less than four i.e. 0, 1, 2, 3
    print (i)
}


// FUNCTIONS IN SWIFT -- use keyword func, then put params, then put -> return type, then put {} body and return smthng

// argument labels, the things in the func definition = params, actually passed = args
func greet(_ person: String, on day: String) -> String { // used underscore which means we don't have to specify that it's a person
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday")) // normally would put key: person instead



// FUNCTIONS returning more than one value, make it a tuple as below
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) { // return min, max and sum
    var min = scores[0]             // notice how integer type is Int capitalized
    var max = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.0) // dot notation accesses the 0th element of the tuple and displays that


// FUNCTIONS are first class types i.e. they can return other functions
func makeIncrementer() -> ((Int) -> Int) { // returns a function that takes an int and returns an int
    func addOne(number: Int) -> Int { // takes an integer and returns an integer
        return 1 + number
    }
    return addOne // makeIncrementer returns a function add one
}
var increment = makeIncrementer() // incremenet now has the value of the function addOne
print(increment(7)) // now when we pass 7 to it it gets 1 + 7 so it returns 8



// FUNCTIONS can take other functions as arguments, specify in param, condition is a function that takes an int and returns boolean
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool { // this whole thing returns a boolean
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}
func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen)) // should be true because we have a 7 in the numbers, and our condition that we're
                                                            // checking to see if matched is if they're less than 10


// CLOSURES are the general case of functions, i.e. can be called later
numbers.map({ (number: Int) -> Int in // in separates param and return type from rest of closure
    let result = 3 * number // return a result that is 3*the number passed in
    return result
} /* this stuff in the braces was a closure*/ )



// OBJECTS AND CLASSES

class Shape { // MAKE A CLASS called shape, peep the caps
    var numberOfSides = 0
    func simpleDescription() -> String { // has a function , has a field num of sides
        return "A shape with \(numberOfSides) sides."
    }
}

var shape = Shape() // create an instance by using parenthesis
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription() // then use dot notation to access the functions or params

// new class named shape
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name // init is the initializer which allows the shape to be created with values
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    } // NOTE: every property must be assigned, either in the init or initialized in the body as numberOfSides is w = 0
} // can also have deinit to cleanup before destroying/deallocating





























