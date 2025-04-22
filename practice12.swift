 	// Create a function that counts the number of words in a given string.
    
func countWords(in text: String) -> Int {
    let words = text.split(separator: " ")
    return words.count
}

let sentence = "Swift is a powerful language"
let wordCount = countWords(in: sentence)
print("Number of words: \(wordCount)")

