// Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

//  Symbol       Value
//   I             1
//   V             5
//   X             10
//   L             50
//   C             100
//   D             500
//   M             1000

// For example, 2 is written as II in Roman numerals, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

//       I can be placed before V (5) and X (10) to make 4 and 9.
//       X can be placed before L (50) and C (100) to make 40 and 90.
//       C can be placed before D (500) and M (1000) to make 400 and 900.
//       Given a roman numeral, convert it to an integer.


import Foundation

// Function to convert Roman numeral to an integer
func romanToInt(_ s: String) -> Int {
    // Roman numeral symbols and their corresponding values
    let romanValues: [Character: Int] = [
        "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000
    ]
    
    var total = 0
    var prevValue = 0
    
    // Iterate through the characters of the Roman numeral string
    for char in s {
        if let value = romanValues[char] {
            // If the current value is greater than the previous value,
            // subtract twice the previous value (because it was already added before)
            // and then add the current value
            if value > prevValue {
                total += value - 2 * prevValue
            } else {
                total += value
            }
            prevValue = value
        }
    }
    
    return total
}

// --- User Input Section ---

print("Enter a Roman numeral to convert to an integer:")
if let input = readLine()?.uppercased() {
    let result = romanToInt(input)
    print("The integer value of \(input) is \(result).")
} else {
    print("Invalid input.")
}
