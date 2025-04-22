// Create a function that removes duplicates from an array while preserving the original order of 	elements.

func removeDuplicates<T: Hashable>(from array: [T]) -> [T] {
    var seen: Set<T> = []
    var result: [T] = []

    for item in array {
        if !seen.contains(item) {
            seen.insert(item)
            result.append(item)
        }
    }

    return result
}
let original = [1, 2, 3, 2, 4, 1, 5]
let unique = removeDuplicates(from: original)
print(unique)  // Output: [1, 2, 3, 4, 5]