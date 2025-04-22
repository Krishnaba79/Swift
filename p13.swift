// Write a function that determines if two strings are anagrams (contain the same characters in different orders).
import Foundation

func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    let cleanStr1 = str1.lowercased().replacingOccurrences(of: " ", with: "")
    let cleanStr2 = str2.lowercased().replacingOccurrences(of: " ", with: "")
    return cleanStr1.sorted() == cleanStr2.sorted()
}

// --- User Input Section ---

print("Enter the first string:")
if let input1 = readLine() {
    print("Enter the second string:")
    if let input2 = readLine() {
        let result = areAnagrams(input1, input2)
        print("Are the two strings anagrams? -> \(result)")
    } else {
        print("Invalid second input.")
    }
} else {
    print("Invalid first input.")
}
