// Given an array of integers 'nums' and an integer 'target', return "indices" of the two numbers such that they add up to "target". 
// You may "assume" that each input would have exactly "one" solution, and you may not use the same element twice. 
// You can return the answer in "any" order.

// Example:
// Func Input: nums = [3,2,4], target = 6
// Func Output: [1,2]

import Foundation

func twoSum(nums: [Int], target: Int) -> [Int]? {
    var seen: [Int: Int] = [:] // Dictionary to store the number and its index
    
    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let complementIndex = seen[complement] {
            return [complementIndex, index]
        }
        seen[num] = index
    }
    
    return nil // Return nil if no solution is found
}

// --- User Input Section ---

print("Enter numbers separated by spaces:")
if let input = readLine() {
    let nums = input.split(separator: " ").compactMap { Int($0) }
    
    print("Enter the target value:")
    if let targetInput = readLine(), let target = Int(targetInput) {
        if let result = twoSum(nums: nums, target: target) {
            print("Indices of the two numbers that add up to \(target): \(result)")
        } else {
            print("No two numbers found that add up to \(target).")
        }
    } else {
        print("Invalid target input.")
    }
} else {
    print("Invalid number input.")
}
