func explainBasicClosure(){
    let greet = { (name: String) -> String in
        return "Hello, \(name)!"
    }

    print(greet("Sweet Learner"))

}

explainBasicClosure()
