// Create a function that counts the number of words in a given string.
import Foundation

func countWords(in input: String) -> Int {
    let words = input.split { $0.isWhitespace }
    return words.count
}

// --- User Input Section ---

print("Enter a string to count words:")
if let userInput = readLine() {
    let wordCount = countWords(in: userInput)
    print("Number of words: \(wordCount)")
} else {
    print("Invalid input.")
}
