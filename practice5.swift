//Given an array containing n distinct numbers taken from 0 to n, find the missing number. For example, for array [3,0,1], the missing number is 2.

import Foundation

// Function to find the missing number
func findMissingNumber(from nums: [Int]) -> Int {
    let n = nums.count
    let expectedSum = n * (n + 1) / 2
    let actualSum = nums.reduce(0, +)
    return expectedSum - actualSum
}

// Take user input
print("Enter numbers separated by spaces (e.g. 3 0 1):", terminator: " ")
if let input = readLine() {
    let components = input.split(separator: " ")
    let numbers = components.compactMap { Int($0) }

    // Validate if input is correct
    if numbers.count == components.count {
        let missingNumber = findMissingNumber(from: numbers)
        print("Missing number is: \(missingNumber)")
    } else {
        print("Invalid input. Please enter only integers.")
    }
} else {
    print("Invalid input.")
}
