import Foundation

let myName = "Adam"
let myAge = 20
let yourName = "Foo"
let yourAge = 19

if myName == "adam" {
    "Your name is \(myName)"
} else {
    "Oops, I guessed it wrong."
}

if myName == "Adam" {
    "Now i guessed it correctly"
} else if myName == "Foo" {
    "Are you foo?"
} else {
    "I give up"
}

/// if is executed from left to right
if myName == "Adam" && myAge == 30 {
    "Your name is Adam and age is 30."
} else if myAge == 20 {
    "I guessed only age right."
} else {
    "I don't know what I'm doing."
}

if myAge == 20 || myName == "Foo" {
    "Your age is 20 or your name is Foo."
} else if myName == "Adam" {
    "Your name is Adam. But this code is not executed."
} else {
    "IDK"
}

/// mixing and + or
if myName == "Adam"
    && myAge == 22
    && yourName == "Foo"
    || yourAge == 19 {
    "Hello"
}

/// Joining and + or
if (myName == "Adam"
 && myAge == 22)
 &&
(yourName == "Foo"
 || yourAge == 19) {
    "Ola"
}
