//Swift is a powerful and expressive language to develop applications for Apple’s devices.
//It is designed to be easy to read, write and maintain. 
// It also supports object-oriented and functional programming paradigms.

//my first swift program
var myString = "Hello krishnaba!"
print(myString)

//Swift program to demonstrate the use of tokens. 
//Here the program contains 10 tokens such as import, Foundation, var, myString, etc.

import Foundation
var myString1=34
print(myString1)

//Semicolons

//In Swift, semicolons after each statement are optional. 
//It is totally up to your choice whether you want or not to type a semicolon (;) after each statement in your code, the compiler does not complain about it.

//However, if you are using multiple statements in the same line, then it is required to use a semicolon as a delimiter, otherwise, the compiler will raise a syntax error.

//Swift program to demonstrate the use of semicolons in a single line

//separation multiple statements using semicolon
var myString2="hello Cutie!";print(myString2)

//Swift is a case-sensitive programming language.

//get the total fruits
//int fruit = apples + oranges 

//int fruit= apples +oranges   //is a wrong statement
//int fruit = apples + oranges   //is a Correct statement

//Literals
//92               	// Integer literal
//4.24159          	// Floating-point literal
//"Hello, World!"  	// String literal

//Printing in Swift
//In Swift, you can print anything to the console using the print() function. 
// It is the most useful function in Swift language. 
// It can also print files, functions and line numbers.

//Following is the syntax of the print() function −

//func print(_element: Any…, Sep: String = “ “, Terminator: String = “\n”)

//This function takes only three parameters and they are optional −

//Element − It is the element that we want to print as output in the console. It can be zero or more.
//Sep − It represents a string that will be displayed between each element. By default, it takes a single space.
//Terminator − It represents a string that will print after all the elements. By default, its value is a newline. We can give our custom separators and terminators according to our requirements.

//Swift program to demonstrate the use of print() function

import Foundation

//printing text 
print("Learing swift!")

//printing variables
var x = 10
var y = 23
print("[\(x) and \(y)]")

//printing text with terminator 
print("Swift, Programming Language ",terminator: "*")
print("Swift Programming Language ")
