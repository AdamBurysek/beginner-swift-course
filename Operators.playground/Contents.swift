import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge {
    "I'm older than you"
} else if myAge < yourAge {
    "I'm younger than you"
} else {
    "Oh hey, we are the same age"
}

let myMotherAge = myAge + 30
let doubleMyAge = myAge * 2

/// 1. unary prefix
///
let foo = !true

/// 2. unary postfix
///
let name = Optional("Adam")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)

/// 3. binary infix
///
let restult = 1 + 2
let names = "Foo" + " " + "Bar"

let age = 12
let message: String
if age >= 18 {
    message = "You are an adult"
} else {
    message = "You are not yet an adult"
}

// Turnary operator
let newMessage: String = age>=18 ? "You are and adult" : "You are not yet an adult"
