import Foundation

let myName = "Moaz"
let myAge = 30
let yourName = "Foo"
let yourAge = 19

if myName == "vandad" {
    // to assign a value inside a string in swift, wrap it inside ==> \(yourValue) <==
    "your name is \(myName)"
} else {
    "oops, i guessed it wrong"
}

// this is a shortcut syntax to ==> if ( myName == "Moaz" && myAge == 30 )
if myName == "Moaz", myAge == 30 {
    "\(myName),I guessed it right!"
} else if myAge == 30 {
    "\(myAge),I guess only the age right"
} else {
    "i guessed nothing"
}

