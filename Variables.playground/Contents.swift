import Foundation

//can use or not use semi column
let myName = "Moaz"
let hisName = "Vandad"

// let can't be assigned again => it's like const
let x = 1;


//this is wrong and can't happen
//x = 2 ;

// var can be assigned again => it's like ... var
var y = 2;
//this is correct syntax and can happen
y = 3;


//array
var names = [
myName,
hisName,
]
//can be mutated internally or externally because they have "var" declaration , if it was "let" , this won't be possible
names.append("Moaz")
names.append("Yome")

//Swift has value types and reference types

//here i'm explaining value types

//you can assign multiple variables to each other , but changing one of them , doesn't mean to change the other , so the reference of a value doesn't change
var foo = "Foo"
var foo2 = foo
foo2 = "Foooooo" //changing the assigned variable's value
foo //remains the same
foo2 //new value is expected here

//also if you change the referenced variable's value after being assigned as a reference to "foo2" , the changed reference value won't change the other variable's value assigned to
foo = "M" //changed the reference value
foo2 //same

//same thing for structure types like arrays [value types]
let moreNames = ["Adam", "Eyad",]
var copy = moreNames
copy.append("new baby") // changed
moreNames // stay te same
copy // stay as changed before

// ==> optional note: there is an old class being used in "Swift" , you might encounter in old codebase , that allows you to internally mutate a structre and not externally => just like "final" keyword in dart.
let oldArray = NSMutableArray(array: [
"Foo","Bar",
])
oldArray.add("Baz") //added with no issues because the "NSMutableArray" class is ignoring that array being declared as "let"
//but can't be externally mutated as mentioned
//oldArray = []

//also "NSMutableArray" is a reference type
// look at this !@#$$
var newArray = oldArray // simple copy array operation
newArray.add("new data") // adding data to the new array
oldArray // is also mutating the referenced array [GOD]


//example : how NSMutableArray can be dangerous
let someNames = NSMutableArray(
array: [
"Foo",
"Bar"
])
//sneakpeak on how to make functions with Swift
//example of bad code => don't attempt to do that ever!!
//This method is basically changing the array type "downgrading" it from being a "cool polite array" to more of "punk stupid array", from being "value type" to "reference type" , so yeah .. don't do that
func changeTheArray(_ array:NSArray){
    let copy = array as! NSMutableArray
    copy.add("Baz")
}
changeTheArray(someNames) // downgrade and add value
someNames // downgraded and mutated :'(

