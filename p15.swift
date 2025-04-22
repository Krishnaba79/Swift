// Create a function that reverses the order of words in a string while keeping the words themselves intact.

import Foundation

func reverseWords(in input: String) -> String {
    let words = input.split { $0.isWhitespace }  // Split input into words
    let reversedWords = words.reversed()         // Reverse the order of the words
    return reversedWords.joined(separator: " ")  // Join the words back into a string with spaces
}

// --- User Input Section ---

print("Enter a string to reverse the order of words:")
if let input = readLine() {
    let reversedString = reverseWords(in: input)
    print("Reversed string: \(reversedString)")
} else {
    print("Invalid input.")
}
