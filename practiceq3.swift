//Write a function that counts the number of vowels in a string, ignoring case sensitivity.

import Foundation

// Function to count vowels in a string
func countVowels(in text: String) -> Int {
    var count = 0
    for char in text.lowercased() {
        if char == "a" || char == "e" || char == "i" || char == "o" || char == "u" {
            count += 1
        }
    }
    return count
}

// Take user input
print("Enter a string:", terminator: " ")
if let input = readLine() {
    let vowelCount = countVowels(in: input)
    print("Number of vowels: \(vowelCount)")
} else {
    print("Invalid input.")
}
