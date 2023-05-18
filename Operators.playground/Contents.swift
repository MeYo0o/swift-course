import Foundation

let myAge = 30
let yourAge = 20

if myAge > yourAge {
    "i'm older than you"
} else if myAge < yourAge {
    "you are older than me"
} else {
    "looks like we both have the same age"
}

let myMotherAge = myAge + 30
let doublemyAge = myAge * 2

/// 1. unary prefix
let foo = !true // "NOT" operator => negates the value on the right

/// 2. unary postfix
// this is an Optional variable which means the variable can either have a value or not
let name = Optional("MeYo")
type(of: name)
// this is forcing the Optional to take the value inside it and assign it to variable on the left
let unaryPostFix = name!
type(of: unaryPostFix)

/// 3 . binary infix
let result = 1 + 2
let names = "Foo" + " " + "Bar"

// IF-ELSE & Ternary Operator
// IF-Else Example
let age = 18
// also : you can just set the datatype to the variable and initialize it later [only one time] because this is "let" declaration
let message: String
if age >= 18 {
    message = "you are an adult"
} else {
    message = "you are not an adult"
}

// Ternary Example
let ageTernary = 13
let messageTernary: String
messageTernary = ageTernary >= 18
    ? "you are an adult"
    : "you are not an adult"
