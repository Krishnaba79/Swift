//MARK:- Optionals in swift
var data: Int?
var myData: Int

func convertToInt(input: String) -> Int?{
    // Returns nil if string can't be converted to integer
    return Int(input)
}

data = convertToInt(input: "22")
print(data!) // ! is one of the way to unwrapping an optional value
data = convertToInt(input: "2")
print(data!)
// data = convertToInt(input: "Princy")
// print(data!)

myData = data!
print(myData) // it is print last given data

// First,let's create some optional values to work with
// var username: String? = "Princy" //OUTPUT : give username
var username: String? = nil // OUTPUT : no user name found
var age: Int? = nil
var Score: Int? = 100

// print(username)

//1. Optional Binding (if let)- Safest approch
// This creates a new constant that only exists if the optional has aa value

if let safeUsername = username{
    print("Hello, \(safeUsername)!")
}
else {
    print("No Username Found")
}


// 2. Guard statement - EARLY EXIT PATTERN
// usefull in functions when you want to exit early if optional is nil

func greetUser(){
    guard let safeUsername = username else{
        print("Please provide a username")
        return
    }
    // safeusername is available in the rest of the function
    print("Welcome back, \(safeUsername)!")
}
greetUser()
 



