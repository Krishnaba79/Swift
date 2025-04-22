//Create a function that calculates the sum of all digits in a given number. For example, the sum of digits in 123 is 6 (1+2+3).

import Foundation

// Function to calculate the sum of digits
func sumOfDigits(_ number: Int) -> Int {
    var num = abs(number) // handle negative numbers
    var sum = 0
    
    while num > 0 {
        sum += num % 10
        num /= 10
    }
    
    return sum
}

// Take user input
print("Enter a number:", terminator: " ")
if let input = readLine(), let number = Int(input) {
    let result = sumOfDigits(number)
    print("Sum of digits in \(number) is \(result)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
