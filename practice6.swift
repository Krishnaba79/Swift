// Write a function that rotates an array by k steps. For example, with the array [1,2,3,4,5] 
// and k=2, the 	result would be [4,5,1,2,3].
func rotateArray(_ nums: [Int], by k: Int) -> [Int] {
    let count = nums.count
    let steps = k % count  // Handles cases when k > count

    let rotatedPart = nums[(count - steps)...]
    let remainingPart = nums[..<(count - steps)]

    return Array(rotatedPart + remainingPart)
}

let original = [1, 2, 3, 4, 5]
let rotated = rotateArray(original, by: 2)
print(rotated)  // Output: [4, 5, 1, 2, 3]
