// PRACTICE 
// 1. create a simple Calculator where you tack two Int as input from user, and then ask what operation to perform 
// on those two Int(+ , - , / , *).
import Foundation

// Function to perform the calculation
func calculate(num1: Int, num2: Int, operation: String) -> Int? {
    switch operation {
    case "+":
        return num1 + num2
    case "-":
        return num1 - num2
    case "*":
        return num1 * num2
    case "/":
        return num2 != 0 ? num1 / num2 : nil  // Avoid division by zero
    default:
        print("Invalid operation. Please use +, -, *, or /")
        return nil
    }
}

// Main program execution
func main() {
    print("Enter first number:")
    guard let input1 = readLine(), let number1 = Int(input1) else {
        print("Invalid input for first number.")
        return
    }

    print("Enter second number:")
    guard let input2 = readLine(), let number2 = Int(input2) else {
        print("Invalid input for second number.")
        return
    }

    print("Enter operation (+, -, *, /):")
    guard let operation = readLine() else {
        print("Invalid operation.")
        return
    }

    // Perform calculation
    if let result = calculate(num1: number1, num2: number2, operation: operation) {
        print("Result: \(result)")
    } else {
        print("Error: Division by zero or invalid operation.")
    }
}

// Run the main function
main()