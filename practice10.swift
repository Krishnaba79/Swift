// Take input of an integer x from the user, return true if x is a palindrome, and false otherwise. 
// An integer is a palindrome when it reads the same forward and backward.

func isPalindrome(_ x: Int) -> Bool {
    var number = x
    var reversed = 0

    // Negative numbers can't be palindromes
    if number < 0 {
        return false
    }

    while number != 0 {
        let digit = number % 10           // Get the last digit
        reversed = reversed * 10 + digit  // Build the reversed number
        number = number / 10              // Remove the last digit
    }

    return reversed == x
}
print(isPalindrome(121))   // true
print(isPalindrome(123))   // false
print(isPalindrome(-121))  // false
