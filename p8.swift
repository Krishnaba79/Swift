//Create a function that removes duplicates from an array while preserving the original order of elements.

import Foundation

// Function to remove duplicates while preserving order
func removeDuplicates(_ nums: [Int]) -> [Int] {
    var seen = Set<Int>()
    var result = [Int]()

    for num in nums {
        if !seen.contains(num) {
            seen.insert(num)
            result.append(num)
        }
    }
    return result
}

// --- User Input Section ---

print("Enter numbers separated by spaces:")
if let input = readLine() {
    let nums = input.split(separator: " ").compactMap { Int($0) }
    let result = removeDuplicates(nums)
    print("Array after removing duplicates: \(result)")
} else {
    print("Invalid input.")
}
