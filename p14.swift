// Find the first non-repeating character in a string. For example, in "leetcode", the first non-repeating character is 'l'.

import Foundation

func firstNonRepeatingCharacter(_ str: String) -> Character? {
    var characterCount = [Character: Int]()

    // Count the occurrences of each character
    for char in str {
        characterCount[char, default: 0] += 1
    }
    
    // Find the first non-repeating character
    for char in str {
        if characterCount[char] == 1 {
            return char
        }
    }
    
    return nil  // No non-repeating character found
}

// --- User Input Section ---

print("Enter a string to find the first non-repeating character:")
if let input = readLine() {
    if let result = firstNonRepeatingCharacter(input) {
        print("The first non-repeating character is: \(result)")
    } else {
        print("No non-repeating character found.")
    }
} else {
    print("Invalid input.")
}
