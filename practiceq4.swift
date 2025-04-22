//Given an Int 'n', return an array of String [1-Indexed] called 'answer' where:-
//       Conditions:
//          answer[i] == "FizzBuzz" IF 'i' is divisible by 3 and 5
//          answer[i] == "Fizz" IF 'i' is divisible by 3
//          answer[i] == "Buzz" IF 'i' is divisible by 5
//          answer[i] == "\(i)" IF none of the above conditions are true
//    Example-2:
//     Func Input: n = 5
//     Func Output: ["1", "2", "Fizz", "4", "Buzz"]

import Foundation

// Function to generate FizzBuzz array
func fizzBuzz(_ n: Int) -> [String] {
    var answer = [String]()
    
    for i in 1...n {
        if i % 3 == 0 && i % 5 == 0 {
            answer.append("FizzBuzz")
        } else if i % 3 == 0 {
            answer.append("Fizz")
        } else if i % 5 == 0 {
            answer.append("Buzz")
        } else {
            answer.append("\(i)")
        }
    }
    
    return answer
}

// Take user input
print("Enter a number:", terminator: " ")
if let input = readLine(), let n = Int(input) {
    let result = fizzBuzz(n)
    print("FizzBuzz Output: \(result)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
