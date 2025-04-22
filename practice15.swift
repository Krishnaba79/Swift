// Create a function that reverses the order of words in a string while keeping the words themselves intact.

func reverseWordsOrder(in sentence: String) -> String {
    let words = sentence.split(separator: " ")
    let reversedWords = words.reversed()
    return reversedWords.joined(separator: " ")
}
let input = "Swift is fun to learn"
let result = reverseWordsOrder(in: input)
print(result)  // Output: "learn to fun is Swift"
