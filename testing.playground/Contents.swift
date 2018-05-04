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
let scores = [1, 2, 3, 4, 5]
for score in scores{
    if score > 3{
        print(score)
    }
    else{
        print("score too low")
    }
}


