func inRange(num: Int){
    for i in Range(0...num){
        print("We are into this loop till: \(i)")
        
    }
}

inRange(num: 5)

func iteration(inputArray: [String]){
    for i in inputArray{
        print("Yes you are not \(i)")
    }
}

iteration(inputArray: ["Hiral","Nagar","Heta","Shah"])

//Challenge Title:FizzBuzz
//Challenge statment: Given an Int 'n',return an array of String[1-indexed] called 'answer' where:-
//  Conditions:
        //answer[i]=="FizzBuzz" IF 'i' is divisible by 3 and 5
        //answer[i]=="Fizz" IF 'i' is divisible by 3
        //answer[i]=="Buzz" IF 'i' is divisible by 5
        //answer[i]=="\(i)" IF Of the above conditions are true

//Func Input: n=3
//funcs output:["1","2","Fizz"]

//Func Input: n=5
//funcs output:["1","2","Fizz","4","Buzz"]

// func fizzbuzz(no: Int)->[String] {

//     var answer:[String]=[]

//     for i in 1...no{
//         if i % 3 == 0 && i % 5 == 0 {
//             answer.append("FizzBuzz")
//         }
//         else if i % 3 == 0 {
//             answer.append("Fizz")
//         }
//         else if i % 5 == 0{
//             answer.append("Buzz")
//         }
//         else
//         {
//             answer.append("\(i)")
//         }
//     }
//     return answer
// }


// print(fizzbuzz(no: 5))
// print(fizzbuzz(no: 20))

func TwoSum(nums: [Int],target: Int) -> [Int] {
    var ans:[Int]=[]
    var len=nums.count
    // print(len)
    for i in Range(1...nums.count-1){
        if nums[i-1] + nums[i]==target{
            ans.append(i-1)
            ans.append(i)
        }
    }
    return ans
}

print(TwoSum(nums:[3,2,4],target: 6))
print(TwoSum(nums:[2,7,11,15],target: 9))