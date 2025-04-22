// Write a function that determines if two strings are anagrams (contain the same characters in different orders).
func areAnagrams(_ str1: String, _ str2: String) -> Bool {
    let sortedStr1 = str1.lowercased().sorted()
    let sortedStr2 = str2.lowercased().sorted()
    return sortedStr1 == sortedStr2
}
print(areAnagrams("listen", "silent"))   // true
print(areAnagrams("hello", "world"))     // false
