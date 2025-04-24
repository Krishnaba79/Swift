//2. Capturing Values - Closure's Memory Magic
func counterClosure() {
    // A closure that remember its part
    func createCounter() -> () -> Int {
        var count = 0

        //This closure 'captures' the count variable
        let counter = {
            count += 1
            return count
        }
        
        return counter
    }

    // Create two independent counters
    let counterA = createCounter()
    let counterB = createCounter()

    print("Counter A:")
    print(counterA()) //1
    print(counterA()) //2

    print("Counter B:")
    print(counterB()) //1
    print(counterB()) //2
}

counterClosure()