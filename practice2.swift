// Write a function that takes an integer and returns it with its digits reversed without using any 
// inbuilt functions. For example, 123 becomes 321.
func reverseDigits(of number: Int) -> Int {
    var num = abs(number)
    var reversed = 0

    while num > 0 {
        let digit = num % 10
        reversed = reversed * 10 + digit
        num /= 10
    }

    return number < 0 ? -reversed : reversed
}

let reversed1 = reverseDigits(of: 1234)     // 4321
let reversed2 = reverseDigits(of: -5600)    // -65 [this is not reverse 0]
print(reversed1)
print(reversed2)