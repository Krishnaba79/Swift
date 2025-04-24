// 3. Nil coalescing operator (??) - provide a default value
// if the optional is nil,use the default value insteead 
let playerScore = score ?? 0
let playerAge = age ?? 18

let safeUsername = username ?? "Princy"
print(username)
print(playerScore)
print(playerAge)

// 4. Optional Chaining - safely access properties and methods
// Creates a chain of optional values that returns nil if any part is nil 
struct  User {
    var name: String?
    func getGreeting() -> String{
        return "Hello!"
    }
}

var currentUser: User? = User(name: "patel")
let greeting = currentUser?.name?.uppercased() // returns optional "patel"
let message = currentUser?.getGreeting() // returns optional "Hello!"

print(currentUser)
print(greeting)
print(message)