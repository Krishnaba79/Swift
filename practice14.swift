 	// Find the first non-repeating character in a string. 
    // For example, in "leetcode", the first non-repeating character is ‘l’.

func firstNonRepeatingCharacter(in text: String) -> Character? {
    var charCount: [Character: Int] = [:]

    // Step 1: Count how many times each character appears
    for char in text {
        charCount[char, default: 0] += 1
    }

    // Step 2: Go through the string again to find the first non-repeating character
    for char in text {
        if charCount[char] == 1 {
            return char
        }
    }

    // If no non-repeating character is found
    return nil
}

if let result = firstNonRepeatingCharacter(in: "leetcode") {
    print("First non-repeating character: \(result)")
} else {
    print("No unique character found.")
}
