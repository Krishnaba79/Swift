//Write a function that takes an integer and returns it with its digits reversed without using any inbuilt functions. For example, 123 becomes 321.

import Foundation

// Function to reverse the digits of an integer
func reverseDigits(_ number: Int) -> Int {
    var num = abs(number)  // To handle negative numbers
    var reversed = 0

    while num > 0 {
        let digit = num % 10
        reversed = reversed * 10 + digit
        num /= 10
    }

    return number < 0 ? -reversed : reversed
}

// Take user input
print("Enter an integer:", terminator: " ")
if let input = readLine(), let number = Int(input) {
    let result = reverseDigits(number)
    print("Reversed number is \(result)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
