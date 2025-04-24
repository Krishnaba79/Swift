// var data:Int?
// var myData:Int

// func convertToInt(inuput:String) -> Int? {
//     return Int(inuput)
// }


// data=convertToInt(inuput: "22")
// print(data!)
// data=convertToInt(inuput:"1")
// print(data!)
// // data=convertToInt(inuput:"qwertyu")
// // print(data!)

// myData=data!
// print(myData)

//first create some optional values to work with
var username: String? = nil//"Alex"
var age:Int? = nil
var score:Int? = 100

//print(Username!)

//1 optional binding (if let)-safest approach
//this creates a new cinstant
if let safeUsername = username{
    print ("Hello, \(safeUsername)!")
}
else {
    print("No username found")
}

//2. Guard Statement -Early exit patten
//useful in functions when you want to exit early if optional is nil
func greetUser(){
    guard let safeUsername = username else {
        print("please provide a Username")
        return
    }
    //safeusername is available in the rest of the function
    print("Welcome back,\(safeUsername)!")
}
greetUser()

//3 nil Coalescing Operator (??)-provide a default value
//if the optional is nil,use the defualt value insted

let playerScore=score ?? 0
let playerAge=age ?? 18

let safeUsername=username ?? "Hiral"
print(safeUsername)
print(playerAge)
print(playerScore)

//4. Optional chaining - Safely access properties and methods
// Creates a chain of optional values that returns nil if any part is nil

struct User {
    var name:String?
    func getGreeting()-> String{
        return "Hello!"
    }
}

var currentUser: User?=User(name:"Bob")
let greeting = currentUser?.name?.uppercased() // Return optinal "BOB"
let message=currentUser?.getGreeting() //Return optinal "Hello!"
print(message)
print(greeting)