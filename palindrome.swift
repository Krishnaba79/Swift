//Challenge Title : Palindrome Number
//Challenge Statement : Given an intger x ,return true if x is a palindrome , and false otherwise
//Conditions:
    //An integer is a palindrome when it reads the same forward and backward.
    //for example, 121 is palindrome and 123 is not palindrome

// func isPalindrome(x: Int) -> Bool {

//      let str = String(x)
//      let rev = String(str.reversed())
//      print(rev)
//      if str == rev {
//          return true
//      } else {
//          return false
//      }
// }

// print(isPalindrome(x: 121))
// print(isPalindrome(x:123))
// print(isPalindrome(x: 555))
// print(isPalindrome(x: -121)) //121-


func isNumPalindrome(num: Int) -> Bool {
    if num < 0 {
        return false
    }

    if num < 10 {
        return true
    }

    var org=num
    var rev=0

    while org > 0 {
        let rem = org % 10
        rev = rev * 10 + rem
        org /= 10
    }

    return rev == num
}

print(isNumPalindrome(num: 121))

