// Create a function that calculates the sum of all digits in a given number. 
// For example, the sum of 	digits in 123 is 6 (1+2+3).
func sumOfDigits(in number: Int) -> Int {
    let digits = String(abs(number)).compactMap { 
        Int(String($0)) 
    }
    return digits.reduce(0, +)
}

// this function is automatically calculate sum of 1+2+3+4+5 in the code 
let result = sumOfDigits(in: 12345)
print(result)  // Output: 15