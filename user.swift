// First , let's create some optional values to work with
var username:String? = "Krishnaba"
var age:Int? = nil
var score:Int? = 100

//print(username!)

//1.Optinal Binding (if let)-safest approach
//This creates a new constant that only exists if the optional has a value
if let safeUsername = username{
    print("Hello, \(safeUsername)!")
} 
else {
    print("No username found")
}

//2. Guard Statement - Early exit pattern
// Useful in function when you want to exit early if optinal is nil
func greetUser(){
    guard let safeUsername = username else {
        print("Please provide username")
        return
    }

 // safeusername  is available in the rest of the function
 print("Welcome back,\(safeUsername)!")
}