// Given an array of integers 'nums' and an integer 'target', return "indices" of the two numbers such 	
// that they add up to "target". 
//     You may "assume" that each input would have exactly "one" solution, and you may not use the same element twice. 
// 	You can return the answer in "any" order.
// 		Example:
// 		Func Input: nums = [3,2,4], target = 6
// 		Func Output: [1,2]

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numToIndex: [Int: Int] = [:]

    for (index, num) in nums.enumerated() {
        let complement = target - num
        if let otherIndex = numToIndex[complement] {
            return [otherIndex, index]
        }
        numToIndex[num] = index
    }

    return []
}
let result = twoSum([3, 2, 4], 6)
print(result)  // Output: [1, 2]