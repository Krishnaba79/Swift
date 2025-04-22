// Given an array containing n distinct numbers taken from 0 to n, find the missing number. 
// For example, for array [3,0,1], the missing number is 2.

func findMissingNumber(_ nums: [Int]) -> Int {
    // n is the count number of array example like in array we have number [1,2,3] count of array is (0,1,2)
    let n = nums.count
    let expectedSum = n * (n + 1) / 2
    let actualSum = nums.reduce(0, +)
    return expectedSum - actualSum
}



let nums = [4, 5, 2]
let missing = findMissingNumber(nums)
print(missing)  // Output: 2