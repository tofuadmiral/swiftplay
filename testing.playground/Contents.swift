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
case let x where x.hasSuffix("pepper"):
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
for (key, value) in interestingNumbers { // iterate through the keys, then iterate through the values
    for number in value { // go through every value, and if it's the largest so far set as largest
        if number > largest {
            largest = number
        }
    }
}// ** note ^^^ the names of the key, value are arbitrary and can be anything!!!! ***
print(largest)





















