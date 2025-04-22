//Write a function that rotates an array by k steps. For example, with the array [1,2,3,4,5] and k=2, the result would be [4,5,1,2,3].

import Foundation

// Function to rotate the array by k steps
func rotateArray(_ array: [Int], by k: Int) -> [Int] {
    guard !array.isEmpty else { return array }
    let count = array.count
    let steps = k % count
    let rotated = Array(array[count - steps..<count] + array[0..<count - steps])
    return rotated
}

// Taking input from the user
print("Enter the elements of the array separated by spaces:")
if let input = readLine() {
    let array = input.split(separator: " ").compactMap { Int($0) }
    
    print("Enter the number of steps to rotate (k):")
    if let kInput = readLine(), let k = Int(kInput) {
        let result = rotateArray(array, by: k)
        print("Rotated Array: \(result)")
    } else {
        print("Invalid input for k.")
    }
} else {
    print("Invalid input for array.")
}
