// 1 . Basic Closure Definition
// Think of a clousre like a portable function a block of code
//  you can pass around and execute later

func explainBasicClosure() {
    // A simple closure that greets someone
    let greet = { (name: String) -> String in
    return "Hello, \(name)!"
    }

    //using the closure
    print(greet("Swift Learner"))
}