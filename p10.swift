// Take input of an integer x from the user, return true if x is a palindrome, and false otherwise. An integer is a palindrome when it reads the same forward and backward.

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let str = String(x)
    let reversedStr = String(str.reversed())
    return str == reversedStr
}

// --- User Input Section ---

print("Enter an integer:")
if let input = readLine(), let x = Int(input) {
    let result = isPalindrome(x)
    print("Is \(x) a palindrome? -> \(result)")
} else {
    print("Invalid input. Please enter a valid integer.")
}
