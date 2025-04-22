// Create a simple Calculator where you take two Integers as input from the user, and then ask what operation to perform on those two Int. Following operations should be supported: (+, -,  /, x). Return the output Integer after doing the operation.

import Foundation

func calculate(_ a: Int, _ b: Int, with operation: String) -> Int? {
    switch operation {
    case "+":
        return a + b
    case "-":
        return a - b
    case "x", "*":
        return a * b
    case "/":
        if b != 0 {
            return a / b
        } else {
            print("Error: Division by zero is not allowed.")
            return nil
        }
    default:
        print("Invalid operation. Please use +, -, x, or /.")
        return nil
    }
}

// --- User Input Section ---

print("Enter first number:")
if let inputA = readLine(), let a = Int(inputA) {
    
    print("Enter second number:")
    if let inputB = readLine(), let b = Int(inputB) {
        
        print("Enter operation (+, -, x, /):")
        if let op = readLine() {
            if let result = calculate(a, b, with: op) {
                print("Result: \(result)")
            }
        } else {
            print("Invalid operation input.")
        }
        
    } else {
        print("Invalid second number input.")
    }
    
} else {
    print("Invalid first number input.")
}
