// Write a function that counts the number of vowels in a string, ignoring case sensitivity.
func countVowels(in text: String) -> Int {
    let vowels: [Character] = ["a", "e", "i", "o", "u"]
    var count = 0

    for char in text.lowercased() {
        if vowels.contains(char) {
            count += 1
        }
    }

    return count
}

let result = countVowels(in: "Hello, World!")
print(result)  // Output: 3 (e, o, o)
let result1 = countVowels(in: "princy")
print(result1)  // Output: 1 (i)