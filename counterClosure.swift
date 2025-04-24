func counterClosure() {
    // a closure that remembers its past
    func createCounter() -> () -> Int {
        var count = 0

        //this closure 'captures' the count variable
        let counter = {
            count += 1
            return count
        }

        return counter
    }

    //create twi independent counters
    let counterA = createCounter()
    let counterB = createCounter()
    
    print("Counter A:")
    print(counterA()) //1
    print(counterA()) //2
    print(counterA()) //2
    print(counterA()) //2

     print("Counter B:")
    print(counterB()) //1
    print(counterB()) //2

}

counterClosure()