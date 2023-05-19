import Foundation

func myNoArgumentsMethod() {
    print("Hello name")
}

func myArgumentsMethod(name: String) {
    print("Hello \(name)")
}

// you can omit the "return" keyword but you won't get the ability to type lines or execute code before it
func returnTypeMethod(value: Int) -> Int {
    // just like this
    "value"
    return value + 2
}

// multiple arguments function
func multipleArgumentsFunc(value1: Int, value2: Int) -> Int {
    value1 + value2
}

// Detailed functions arguments [external label + internal label] => 2 labels
// external label is used as a calling property when you invoke or call this function.
// internal label is only visible inside the function it self as an argument being used for calculation.
func externalAndInternalFunc(externalLabel internalLabel: Int) -> Int {
    // "internalLabel" is only visible inside the function scope.
    internalLabel
}

// however , you can omit the "external" Label by putting _ instead of typing any Label to just deal with the argument as "positional argument" because by default if you don't put it as a Label or _ , it will be default named argument
func _externalLabelFunction(
    _ internalValueLabel: String)
{
    print("hello \(internalValueLabel)")
}

// just a hint before executions: for the "return type" functions , in pure swift code ".swift" files , you will get warnings if you don't consume (use) the return type functions values , but in this playground you won't need to consume them because the playground will do it for you and give you the result on the right hand side.
// however , to get rid of this warning you must add @discardableResult just before that function , it will discard the warning of only calling the function without assigning it to a variable , it doesn't apply to assigned variable not being used.


//you can have functions inside of functions so it gets declared and invoked in the same function scope , so outside of the parent function , no one can access or call the child function , they can only call the parent function.


// executions
myNoArgumentsMethod()
myArgumentsMethod(name: "Moaz")
returnTypeMethod(value: 2)
multipleArgumentsFunc(value1: 1, value2: 2)

// also you can assign the return type function to a variable
let result = multipleArgumentsFunc(value1: 2, value2: 2)

// as the "externalLabel" argument of the function is there , not hidden or _ , you can use it whenever you call that function.
externalAndInternalFunc(externalLabel: 1)

// here we are replacing the first/external Label by _
// which means this is a positional argument now
_externalLabelFunction("Moaz")
